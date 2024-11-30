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

for r in 5:9
    min = 100
    max = 0
    for i in 30:90
        if is_support_color(make_accents(OKcolor(Oklch(0.01i, 0.015, 112.5)), 0.01r, 8))
            min = min > i ? i : min
            max = max < i ? i : max
        end
    end
    println("$r $min $max")
end

function find_chroma(lue::Vector{Inf64})::Bool
    a = 0.05
    b = 0.07
    c = 0.05
    chroma = 112.5
    h = chroma + 180
    lr = 0.015
    l0 = create_colors(lue[1], 0.015, [h, chroma])
    l1 = create_colors(lue[2], 0.015, [h, chroma])
    l1a = make_accents(OKcolor(Oklch(lue[2], lr, chroma)), a, 8)
    l2 = create_colors(lue[3], 0.015, [h, chroma])
    l3 = create_colors(lue[4], 0.015, [h, chroma])
    l3a = make_accents(OKcolor(Oklch(lue[4], lr, chroma)), b, 8)
    l4 = create_colors(lue[5], lr, [h, chroma])
    l5 = create_colors(lue[6], lr, [h, chroma])
    l5a = make_accents(OKcolor(Oklch(lue[6], lr, chroma)), c, 8)
    l6 = create_colors(lue[7], lr, [h, chroma])
    l7 = create_colors(lue[8], lr, [h, chroma])
    if !is_support_color(vcat(l0, l1, l2, l3, l4, l5, l6, l7, l1a, l3a, l5a)) ||
       !cmp_contrasts(vcat(l3, l3a), l4, 4.5)
        #= !(cmp_contrasts(l0, l4, 7.0) && cmp_contrasts(vcat(l1, l1a), vcat(l5, l5a), 7.0) &&
          cmp_contrasts(l2, l6, 7.0) && cmp_contrasts(vcat(l3, l3a), l7, 7.0) && cmp_contrasts(vcat(l3, l3a), l4, 4.5)) =#
        return false
    end
    return true
end

