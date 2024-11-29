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

function find_unsupport_color(colors::Vector{OKcolor})::Bool
    overrange = [(0.01 < i.rgb.r < 0.99) &
                 (0.01 < i.rgb.b < 0.99) &&
                 (0.01 < i.rgb.g < 0.99) for i in colors]
    return all(x -> x, overrange)

end

function find_chroma(lu::Float64, ll::Float64, a::Int64, b::Int64, c::Int64, lr::Float64, chorma::Float64)::Bool
    a = 0.01a
    b = 0.01b
    c = 0.01c
    h = chorma + 180
    u = lu < 0.5 ? 0.04 : -0.04
    l = lu < 0.5 ? 0.04 : -0.04
    l0 = create_colors(lu - 3u, 0.015, [h, chorma])
    l1 = create_colors(lu - 2u, 0.015, [h, chorma])
    l1a = make_accents(OKcolor(Oklch(lu - 2u, lr, chorma)), a, 8)
    l2 = create_colors(lu - u, 0.015, [h, chorma])
    l3 = create_colors(lu, 0.015, [h, chorma])
    l3a = make_accents(OKcolor(Oklch(lu, lr, chorma)), b, 8)
    l4 = create_colors(ll, lr, [h, chorma])
    l5 = create_colors(ll + l, lr, [h, chorma])
    l5a = make_accents(OKcolor(Oklch(ll + l, lr, chorma)), c, 8)
    l6 = create_colors(ll + 2l, lr, [h, chorma])
    l7 = create_colors(ll + 3l, lr, [h, chorma])
    if !find_unsupport_color(vcat(l0, l1, l2, l3, l4, l5, l6, l7, l1a, l3a, l5a)) ||
       !(cmp_contrasts(l0, l4, 7.0) && cmp_contrasts(vcat(l1, l1a), vcat(l5, l5a), 7.0) &&
         cmp_contrasts(l2, l6, 7.0) && cmp_contrasts(vcat(l3, l3a), l7, 7.0) && cmp_contrasts(vcat(l3, l3a), l4, 4.5))
        return false
    end
    return true
end

for m in 110:0.5:115
    r = 0.015
    i = 5
    j = 7
    k = 5
    d = 41
        find_low = false
        for lu in 42:42
            if find_chroma(0.01lu, 0.01(lu + d), i, j, k, r, 1.0m)
                if !find_low
                    println("$m $r $i $j $k")
                end
                println("$lu $(lu+d)")
                find_low = true
            end
        end
        if find_low
            for ll in 40:50
                if find_chroma(0.01(ll + d), 0.01ll, i, j, k, r, 1.0m)
                    println("find $(ll+d) $ll")
                end
            end
        end
    end
