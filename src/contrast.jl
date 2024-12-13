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
    l1 = create_colors(d, 0.015, [h, chroma])
    l5 = create_colors(v, lr, [h, chroma])
    if !is_support_color(vcat(l1, l5,)) ||
       !cmp_contrasts(vcat(l1,), l5, aa)
        return false
    end
    return true
end

function find_scheme(d3::Int64, v3::Int64, d::Int64, v::Int64)::Bool
    d0 = d3 > 50 ? d3 + 3d : d3 - 3d
    d1 = d3 > 50 ? d3 + 2d : d3 - 2d
    d2 = d3 > 50 ? d3 + d : d3 - d
    v0 = v3 > 50 ? v3 + 3v : v3 - 3v
    v1 = v3 > 50 ? v3 + 2v : v3 - 2v
    v2 = v3 > 50 ? v3 + 1v : v3 - 1v
    if find_accent(0.01d3, 0.01v3, 112.5, 4.5) &&
       # find_accent(0.01d3, 0.01v0, 112.5, 7.0) &&
       # find_text(0.01d2, 0.01v1, 112.5, 7.0) &&
       find_accent(0.01d1, 0.01v2, 112.5, 7.) &&
       # find_text(0.01d0, 0.01v3, 112.5, 7.0)
        return true
    end
    return false
end

for diff in 40:50
    for d in 3:7
        for v in 4:7
            find_dark = false
            for dd3 in 30:50
                if find_scheme(dd3, dd3 + diff, d, v) && find_max(0.01dd3, 112.5) >= 0.07 && find_max(0.01(dd3 - 2d), 112.5) >= 0.06 && (dd3 + diff + 3v) < 98
                    r1 = find_max(0.01(dd3 - 2d), 112.5)
                    r3 = find_max(0.01dd3, 112.5)
                    r2 = find_max(0.01(dd3 + diff + v), 112.5)
                    find_dark = true
                    println("$(dd3-3d) $(dd3-2d) $(dd3-d) $(dd3) $(dd3+diff) $(dd3+diff+v) $(dd3+diff+2v) $(dd3 + diff + 3v) $r1 $r3 $r2")
                end
            end
            if find_dark
                for ld3 in 70:85
                    if find_scheme(ld3, ld3 - diff, d, v) && find_max(0.01ld3, 112.5) >= 0.07 && find_max(0.01(ld3 + 2d), 112.5) >= 0.06 && find_max(0.01(ld3 - diff - v), 112.5) >= 0.06
                        r1 = find_max(0.01(ld3 + 2d), 112.5)
                        r3 = find_max(0.01ld3, 112.5)
                        r2 = find_max(0.01(ld3 - diff - v), 112.5)
                        find_dark = true
                        println("$(ld3+3d) $(ld3+2d) $(ld3+d) $(ld3) $(ld3-diff) $(ld3-diff-v) $(ld3-diff-2v) $(ld3 - diff - 3v) $r1 $r3 $r2")
                    end
                end
            end
        end
    end
end
