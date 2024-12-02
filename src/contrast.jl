include("./OKColor.jl")
using Colors
using .OKColor

function cmp_contrasts(c1::Vector{OKcolor}, c2::Vector{OKcolor}, aa::Float64)::Bool
    diffs = [cmp_luminance(i, j) for i in c1, j in c2]
    return all(x -> x > aa, diffs)
end

function create_colors(lue::Float64, c::Float64, h::Array{Float64,1})
    return [OKcolor(Oklch(lue, c, hue)) for hue in h]
end

function is_support_color(colors::Vector{OKcolor})::Bool
    return all(x -> in_range(x), colors)

end

function find_max(lue::Float64, hue::Float64)::Float64
    for i in 100:-5:0
        accents = make_accents(OKcolor(Oklch(lue, 0.015, hue)), 0.001i, 8)
        if !isempty(accents) && is_support_color(accents)
            return 0.001i
        end
    end
    return 0.0
end

function find_accent(d::Float64, v::Float64, chroma::Float64, aa::Float64)::Bool
    h = chroma + 180
    lr = 0.015
    rd = find_max(d, chroma)
    rv = find_max(v, chroma)
    l1 = create_colors(d, 0.015, [h, chroma])
    l1a = make_accents(OKcolor(Oklch(d, lr, chroma)), rd, 8)
    l5 = create_colors(v, lr, [h, chroma])
    l5a = make_accents(OKcolor(Oklch(v, lr, chroma)), rv, 8)
    if !is_support_color(vcat(l1, l5, l1a, l5a)) ||
       !cmp_contrasts(vcat(l1, l1a), vcat(l5, l5a), aa)
        return false
    end
    return true
end

function find_text(d::Float64, v::Float64, chroma::Float64, aa::Float64)::Bool
    h = chroma + 180
    lr = 0.015
    rd = find_max(d, chroma)
    l1 = create_colors(d, 0.015, [h, chroma])
    l1a = make_accents(OKcolor(Oklch(d, lr, chroma)), rd, 8)
    l5 = create_colors(v, lr, [h, chroma])
    if !is_support_color(vcat(l1, l5, l1a,)) ||
       !cmp_contrasts(vcat(l1, l1a), l5, aa)
        return false
    end
    return true
end

hue = 112.5
for i in 70:85
    if find_text(0.01i, 0.01(i - 42), hue, 4.5) &&
       find_text(0.01i, 0.01(i - 54), 112.5, 7.0) &&
       find_accent(0.01(i + 6), 0.01(i - 46), 112.5, 7.0) &&
       find_text(0.01(i + 3), 0.01(i - 50), 112.5, 7.0) &&
       find_text(0.01(i + 9), 0.01(i - 42), 112.5, 7.0)
        println("$i")
    end
end
