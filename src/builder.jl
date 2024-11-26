module builder
using YAML
using FileIO
include("theme.jl")
using .theme
export process_files

function replace_placeholders(scheme::String, template::String, output::String)
    data = open(scheme, "r") do f
        YAML.load(f)
    end

    content = open(template, "r") do f
        read(f, String)
    end

    alpha_pattern = r"@\((\w+),([0-9]*\.?[0-9]+)\)"

    for (key, value) in data
        hex_value = string(value)
        
        placeholder = "\$($key)"
        placeholder_no_hash = "#($key)"
        
        content = replace(content, placeholder => "#$hex_value")
        
        for match in eachmatch(alpha_pattern, content)
            if match.captures[1] == key  
                r, g, b = parse(Int, hex_value[1:2], base=16), parse(Int, hex_value[3:4], base=16), parse(Int, hex_value[5:6], base=16)
                alpha = parse(Float64, match.captures[2])
                rgba_value = "rgba($r, $g, $b, $alpha)"
                content = replace(content, match.match => rgba_value)
            end
        end

        if occursin(placeholder_no_hash, content)
            no_hash_value = replace(hex_value, "#" => "")
            content = replace(content, placeholder_no_hash => "$no_hash_value")
        end
    end

    open(output, "w") do f
        write(f, content)
    end
end


function process_files()
    palette_folder = "palette"
    input_folder = "templates"
    output_folder = "themes"

    mkpath(output_folder)
    themes = [splitext(f)[1] for f in readdir(palette_folder) if endswith(f, ".yml")]

    input_files = readdir(input_folder)

    for filename in input_files
        title, extension = splitext(filename)
        extension = lstrip(extension, '.')
        input_path = joinpath(input_folder, filename)

        if title == "nvim"
            output_path = joinpath("lua", "mytilus", "colors")
            mkpath(output_path)
        else
            output_path = joinpath(output_folder, title)
            mkpath(output_path)
        end

        for t in themes
            theme_path = joinpath(palette_folder, "$t.yml")
            output = joinpath(output_path, "mytilus_$t.$extension")
            replace_placeholders(theme_path, input_path, output)
        end
    end
end

end
