include("./OKColor.jl")
using Colors
using .OKColor

function cmp_contrasts(l1::Float64, l2::Float64, c1::Float64, c2::Float64, aa::Float64)::Bool
    diffs = [cmp_luminance(OKcolor(Oklch(0.01l1, c1, 45.0i)), OKcolor(Oklch(0.01l2, c2, 45.0j))) for i in 0:7, j in 0:7]
    return all(x -> x > aa, diffs)
end

function get_chroman(lum::Float64)::Float64
    if lum <= 81 && lum >= 50
        return 90.0
    elseif lum <= 82 && lum >= 47
        return 85.0
    elseif lum <= 83 && lum >= 45
        return 80.0
    elseif lum <= 84 && lum >= 42
        return 75.0
    elseif lum <= 85 && lum >= 39
        return 70.0
    elseif lum <= 86 && lum >= 36
        return 65.0
    elseif lum <= 87 && lum >= 34
        return 60.0
    elseif lum <= 88 && lum >= 31
        return 55.0
    elseif lum <= 89 && lum >= 28
        return 50.0
    elseif lum <= 90 && lum >= 25
        return 45.0
    elseif lum <= 91 && lum >= 25
        return 40.0
    elseif lum <= 92 && lum >= 22
        return 35.0
    elseif lum <= 93 && lum >= 17
        return 30.0
    elseif lum <= 94 && lum >= 14
        return 25.0
    elseif lum <= 95 && lum >= 11
        return 20.0
    elseif lum <= 96 && lum >= 8
        return 15.0
    end
    return 15.0
end

function find_range(chroma::Float64, mi::Float64, ma::Float64)::Tuple{Float64,Float64,Float64}
    aa = chroma < 50 ? 100.0 : 0.0
    aaa = chroma < 50 ? 100.0 : 0.0
    for i in mi:1.0:ma
        if cmp_contrasts(1.0i, chroma, 0.001get_chroman(1.0i), 0.001get_chroman(chroma), 7.0)
            aaa = chroma < 50 ? min(aaa, i) : max(aaa, i)
        end
        if cmp_contrasts(1.0i, chroma, 0.001get_chroman(1.0i), 0.001get_chroman(chroma), 4.5)
            aa = chroma < 50 ? min(aa, i) : max(aa, i)
        end
    end
    return tuple(aa, aaa, get_chroman(aaa))
end

for i in 25:45
    println(i, " ", find_range(1.0i, 70.0, 100.0), " ", get_chroman(1.0i))
end
for i in 75:95
    println(i, " ", find_range(1.0i, 20.0, 50.0), " ", get_chroman(1.0i))
end

#=
25 (70.0, 76.0, 90.0) 45.0
26 (70.0, 77.0, 90.0) 45.0
27 (70.0, 78.0, 90.0) 45.0
28 (70.0, 79.0, 90.0) 50.0
29 (70.0, 80.0, 90.0) 50.0
30 (70.0, 81.0, 90.0) 50.0
31 (70.0, 82.0, 85.0) 55.0
32 (71.0, 83.0, 80.0) 55.0
33 (72.0, 84.0, 75.0) 55.0
34 (73.0, 85.0, 70.0) 60.0
35 (74.0, 87.0, 60.0) 60.0
36 (75.0, 88.0, 55.0) 65.0
37 (76.0, 89.0, 50.0) 65.0
38 (78.0, 90.0, 45.0) 65.0
39 (79.0, 92.0, 35.0) 70.0
40 (80.0, 93.0, 30.0) 70.0
41 (81.0, 94.0, 25.0) 70.0
42 (83.0, 96.0, 15.0) 75.0
43 (84.0, 97.0, 15.0) 75.0
44 (85.0, 99.0, 15.0) 75.0
45 (86.0, 100.0, 15.0) 80.0

40 (80.0, 94.0, 30.0) 70.0
37 (76.0, 90.0, 50.0) 65.0
34 (73.0, 86.0, 70.0) 60.0
31 (70.0, 82.0, 85.0) 55.0

75 (36.0, 24.0, 35.0) 90.0
76 (37.0, 25.0, 45.0) 90.0
77 (37.0, 26.0, 45.0) 90.0
78 (38.0, 27.0, 45.0) 90.0
79 (39.0, 28.0, 50.0) 90.0
80 (40.0, 29.0, 50.0) 90.0
81 (41.0, 30.0, 50.0) 90.0
82 (41.0, 31.0, 55.0) 85.0
83 (42.0, 32.0, 55.0) 80.0
84 (43.0, 33.0, 55.0) 75.0
85 (44.0, 34.0, 60.0) 70.0
86 (45.0, 34.0, 60.0) 65.0
87 (45.0, 35.0, 60.0) 60.0
88 (46.0, 36.0, 65.0) 55.0
89 (47.0, 37.0, 65.0) 50.0
90 (48.0, 38.0, 65.0) 45.0
91 (49.0, 38.0, 65.0) 40.0
92 (49.0, 39.0, 70.0) 35.0
93 (50.0, 40.0, 70.0) 30.0
94 (50.0, 41.0, 70.0) 25.0
95 (50.0, 41.0, 70.0) 20.0


81 (41.0, 26.0, 50.0) 90.0
84 (43.0, 30.0, 55.0) 75.0
87 (45.0, 34.0, 60.0) 60.0
90 (48.0, 38.0, 65.0) 45.0
=#

