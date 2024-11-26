module OKColor
using LinearAlgebra
using Colors

export OKcolor, cmp_luminance, make_accents

struct OKcolor
    hex::String
    rgb::RGB
    oklch::Oklch
    oklab::Oklab
    luminance::Float64

    function OKcolor(color::Oklab)
        oklch = convert(Oklch, color)
        oklab = color
        rgb = convert(RGB, color)
        hex = Colors.hex(color)
        luminance = calculate_relative_luminance(rgb)
        return new(hex, rgb, oklch, oklab, luminance)
    end

    function OKcolor(color::Oklch)
        oklch = color
        oklab = convert(Oklab, color)
        rgb = convert(RGB, color)
        hex = Colors.hex(color)
        luminance = calculate_relative_luminance(rgb)
        return new(hex, rgb, oklch, oklab, luminance)
    end

    function OKcolor(color::RGB)
        oklch = convert(Oklch, color)
        oklab = convert(Oklab, color)
        rgb = color
        hex = Colors.hex(color)
        luminance = calculate_relative_luminance(rgb)
        return new(hex, rgb, oklch, oklab, luminance)
    end
end

function srgb_to_linear_rgb(srgb::RGB)::Vector{Float64}
    linear_rgb = map(x -> x <= 0.04045 ? x / 12.92 : ((x + 0.055) / 1.055)^2.4, [srgb.r, srgb.g, srgb.b])
    return clamp.(linear_rgb, 0, 1)
end

function calculate_relative_luminance(rgb::RGB)::Float64
    rgb_linear = srgb_to_linear_rgb(rgb)
    return 0.2126 * rgb_linear[1] + 0.7152 * rgb_linear[2] + 0.0722 * rgb_linear[3]
end

function make_accents(center::OKcolor, radius::Float64, n::Int)::Vector{OKcolor}
    return [OKcolor(Oklab(center.oklab.l,
        center.oklab.a + radius * cos(2π * i / n),
        center.oklab.b + radius * sin(2π * i / n))) for i in 0:n-1]

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
