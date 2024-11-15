module OKColor
using Printf
using LinearAlgebra

export OKcolor, cmp_luminance

struct OKcolor
    hex::Union{String,Nothing}
    rgb::Vector{Float64}
    oklch::Vector{Float64}
    luminance::Float64

    function OKcolor(color::Union{String,Vector{Float64}})
        if typeof(color) == String && startswith(color, "#")
            hex = uppercase(color)
            rgb = hex_to_rgb(hex) .* 255
            oklch = rgb_to_oklch(rgb)
            luminance = calculate_relative_luminance(rgb)
            return new(hex, rgb, oklch, luminance)
        elseif typeof(color) == Vector{Float64}
            oklch = color
            rgb = oklch_to_rgb(oklch) .* 255
            hex = rgb_to_hex(rgb)
            luminance = calculate_relative_luminance(rgb)
            return new(hex, rgb, oklch, luminance)
        else
            error("not supported format")
        end
    end
end

function hex_to_rgb(hex_color::String)::Vector{Float64}
    hex_color = replace(hex_color, "#" => "")
    return [parse(Int, hex_color[i:i+1], base=16) / 255 for i in 1:2:5]
end

function rgb_to_hex(rgb::Vector{Float64})::String
    return @sprintf("#%02X%02X%02X", round(Int, rgb[1]), round(Int, rgb[2]), round(Int, rgb[3]))
end

function oklch_to_oklab(oklch::Vector{Float64})::Vector{Float64}
    L, C, H = oklch
    H_rad = deg2rad(H)
    a = C * cos(H_rad)
    b = C * sin(H_rad)
    return [L, a, b]
end


function oklab_to_linear_rgb(oklab::Vector{Float64})::Vector{Float64}
    L, a, b = oklab

    lms = [
        (L + 0.3963377774 * a + 0.2158037573 * b),
        (L - 0.1055613458 * a - 0.0638541728 * b),
        (L - 0.0894841775 * a - 1.2914855480 * b)
    ]

    lms = lms .^ 3

    M_inv = [
        4.0767416621 -3.3077115913 0.2309699292;
        -1.2684380046 2.6097574011 -0.3413193965;
        -0.0041960863 -0.7034186147 1.7076147010
    ]

    return M_inv * lms
end

function linear_rgb_to_srgb(rgb::Vector{Float64})::Vector{Float64}
    srgb = map(x -> x <= 0.0031308 ? 12.92 * x : 1.055 * x^(1 / 2.4) - 0.055, rgb)
    return clamp.(srgb, 0, 1)
end

function srgb_to_linear_rgb(srgb::Vector{Float64})::Vector{Float64}
    srgb = srgb ./ 255.0
    linear_rgb = map(x -> x <= 0.04045 ? x / 12.92 : ((x + 0.055) / 1.055)^2.4, srgb)
    return clamp.(linear_rgb, 0, 1)
end

function oklch_to_rgb(oklch::Vector{Float64})::Vector{Float64}
    oklab = oklch_to_oklab(oklch)
    linear_rgb = oklab_to_linear_rgb(oklab)
    return linear_rgb_to_srgb(linear_rgb)
end

function rgb_to_oklab(rgb::Vector{Float64})::Vector{Float64}
    linear_rgb = srgb_to_linear_rgb(rgb)
    M = [
        [0.4121656120, 0.5362752080, 0.0514575653],
        [0.2118591070, 0.6807189570, 0.1074065790],
        [0.0883097947, 0.2818474174, 0.6302613616]
    ]
    lms = (M * linear_rgb) .^ (1 / 3)
    L = 0.2104542553 * lms[1] + 0.7936177850 * lms[2] - 0.0040720468 * lms[3]
    a = 1.9779984951 * lms[1] - 2.4285922050 * lms[2] + 0.4505937099 * lms[3]
    b = 0.0259040371 * lms[1] + 0.7827717662 * lms[2] - 0.8086757660 * lms[3]
    return [L, a, b]
end

function rgb_to_oklch(rgb::Vector{Float64})::Vector{Float64}
    oklab = rgb_to_oklab(rgb)
    L = oklab[1]
    C = sqrt(oklab[2]^2 + oklab[3]^2)
    H = mod(rad2deg(atan(oklab[3], oklab[2])), 360)
    return [L, C, H]
end

function calculate_relative_luminance(rgb::Vector{Float64})::Float64
    rgb_linear = srgb_to_linear_rgb(rgb)
    return 0.2126 * rgb_linear[1] + 0.7152 * rgb_linear[2] + 0.0722 * rgb_linear[3]
end

function cmp_luminance(color1::OKcolor, color2::OKcolor)::Float64
    lum_ratio = if color1.luminance < color2.luminance
        (color2.luminance + 0.05) / (color1.luminance + 0.05)
    else
        (color1.luminance + 0.05) / (color2.luminance + 0.05)
    end
    return round(lum_ratio, digits=2)
end

end
