include("./OKColor.jl")
using .OKColor

for i = 35:95
    for j = i:95
        contrast = cmp_luminance(OKcolor([0.01i, 0, 0]), OKcolor([0.01j, 0, 0]))
        if contrast > 7
            println(i, " ", j, " ", "AAA")
			break
        elseif contrast > 4.5
            println(i, " ", j, " ", "AA")
        end
    end
end
