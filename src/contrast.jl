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
    overrange = [(0.003 < i.rgb.r < 0.997) &
                 (0.003 < i.rgb.b < 0.997) &&
                 (0.003 < i.rgb.g < 0.997) for i in colors]
    return all(x -> x, overrange)

end



function find_chroma(lu::Float64, ll::Float64, du::Float64, dl::Float64, u::Float64, l::Float64, lr::Float64, a::Int64, b::Int64, c::Int64, h::Float64)::Bool
    a = 0.01a
    b = 0.01b
    c = 0.01c
    chorma = h
    l0 = create_colors(lu - 3u, 0.015, [chorma + 180, chorma])
    l1 = create_colors(lu - 2u, 0.015, [chorma + 180, chorma])
    l1a = make_accents(OKcolor(Oklch(lu - 2u, lr, chorma)), a, 8)
    l2 = create_colors(lu - u, 0.015, [chorma + 180, chorma])
    l3 = create_colors(lu, 0.015, [chorma + 180, chorma])
    l3a = make_accents(OKcolor(Oklch(lu, lr, chorma)), b, 8)
    l4 = create_colors(ll, lr, [chorma + 180, chorma])
    l5 = create_colors(ll + l, lr, [chorma + 180, chorma])
    l5a = make_accents(OKcolor(Oklch(ll + l, lr, chorma)), c, 8)
    l6 = create_colors(ll + 2l, lr, [chorma + 180, chorma])
    l7 = create_colors(ll + 3l, lr, [chorma + 180, chorma])
    if !find_unsupport_color(vcat(l0, l1, l2, l3, l4, l5, l6, l7, l1a, l3a, l5a)) ||
       !(cmp_contrasts(l0, l4, 7.0) && cmp_contrasts(vcat(l1, l1a), vcat(l5, l5a), 7.0) &&
         cmp_contrasts(l2, l6, 7.0) && cmp_contrasts(vcat(l3, l3a), l7, 7.0) && cmp_contrasts(vcat(l3, l3a), l4, 4.5))
        return false
    end


    d0 = create_colors(du + 3u, 0.015, [chorma + 180, chorma])
    d1 = create_colors(du + 2u, 0.015, [chorma + 180, chorma])
    d1a = make_accents(OKcolor(Oklch(du + 2u, lr, chorma)), a, 8)
    d2 = create_colors(du + u, 0.015, [chorma + 180, chorma])
    d3 = create_colors(du, 0.015, [chorma + 180, chorma])
    d3a = make_accents(OKcolor(Oklch(du, lr, chorma)), b, 8)
    d4 = create_colors(dl, lr, [chorma + 180, chorma])
    d5 = create_colors(dl - l, lr, [chorma + 180, chorma])
    d5a = make_accents(OKcolor(Oklch(dl - l, lr, chorma)), c, 8)
    d6 = create_colors(dl - 2l, lr, [chorma + 180, chorma])
    d7 = create_colors(dl - 3l, lr, [chorma + 180, chorma])
    if !find_unsupport_color(vcat(d0, d1, d2, d3, d4, d5, d6, d7, d1a, d3a, d5a)) ||
       !(cmp_contrasts(d0, d4, 7.0) && cmp_contrasts(vcat(d1, d1a), vcat(d5, d5a), 7.0) &&
         cmp_contrasts(d2, d6, 7.0) && cmp_contrasts(vcat(d3, d3a), d7, 7.0) && cmp_contrasts(vcat(d3, d3a), d4, 4.5))
        return false
    end

    return true
end

for ll in 79:80
    for lu in 39:40
        for du in 75:76
            for dl in 35:36
                for j in 0.03:0.005:0.04
                    for h in 0:350
                        if find_chroma(0.01lu, 0.01ll, 0.01du, 0.01dl, 0.04, 0.04, j, 7, 9, 7, 1.0h)
                            println("$lu $ll $du $dl $h $j")
                        end
                    end
                end
            end
        end
    end
end
