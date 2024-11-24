# Retrieve the theme settings
export def main [] {
    return {
        binary: '#5C4069'
        block: '#045A4F'
        cell-path: '#4D4C55'
        closure: '#3D4A76'
        custom: '#5C4069'
        duration: '#045A4F'
        float: '#5D4B14'
        glob: '#045A4F'
        int: '#5D4B14'
        list: '#0D556C'
        nothing: '#6E3B4B'
        range: '#045A4F'
        record: '#0D556C'
        string: '#3B562B'

        bool: {|| if $in { '#045A4F' } else { "#6E3B4B" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#6E3B4B'
            } else if $in < 6hr {
                '#6F3F29'
            } else if $in < 1day {
                '#5D4B14'
            } else if $in < 3day {
                '#3B562B'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#0D556C'
            } else if $in < 52wk {
                '#3D4A76'
            } else { '#5C4069'}
        }

        filesize: {|e|
            if $e == 0b {
                '#4D4E45'
            } else if $e < 1mb {
                '#045A4F'
            } else {{ fg: '#35343D' attr: 'b' }}
        }

        shape_and: { fg: '#045A4F' attr: 'b' }
        shape_binary: { fg: '#5C4069' attr: 'b' }
        shape_block: { fg: '#045A4F' attr: 'b' }
        shape_bool: '#5D4B14'
        shape_closure: { fg: '#3D4A76' attr: 'b' }
        shape_custom: '#5C4069'
        shape_datetime: { fg: '#5D4B14' attr: 'b' }
        shape_directory: '#3D4A76'
        shape_external: '#3B562B'
        shape_external_resolved: '#3B562B'
        shape_externalarg: { fg: '#5D4B14' attr: 'b' }
        shape_filepath: '#3D4A76'
        shape_flag: { fg: '#6E3B4B' attr: 'b' }
        shape_float: { fg: '#5D4B14' attr: 'b' }
        shape_garbage: { fg: '#3D3E35' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#045A4F' attr: 'b' }
        shape_globpattern: { fg: '#045A4F' attr: 'b' }
        shape_int: { fg: '#5D4B14' attr: 'b' }
        shape_internalcall: { fg: '#045A4F' attr: 'b' }
        shape_keyword: { fg: '#6E3B4B' attr: 'b' }
        shape_list: { fg: '#0D556C' attr: 'b' }
        shape_literal: '#5D4B14'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#6E3B4B'
        shape_operator: '#3D4A76'
        shape_or: { fg: '#045A4F' attr: 'b' }
        shape_pipe: { fg: '#3D4A76' attr: 'b' }
        shape_range: { fg: '#045A4F' attr: 'b' }
        shape_raw_string: { fg: '#3D3C45' attr: 'b' }
        shape_record: { fg: '#0D556C' attr: 'b' }
        shape_redirection: { fg: '#0D556C' attr: 'b' }
        shape_signature: { fg: '#6F3F29' attr: 'b' }
        shape_string: '#3B562B'
        shape_string_interpolation: { fg: '#045A4F' attr: 'b' }
        shape_table: { fg: '#0D556C' attr: 'b' }
        shape_vardecl: { fg: '#3D4A76' attr: 'u' }
        shape_variable: '#6F3F29'

        foreground: '#3D3C45'
        background: '#E1E4CD'
        cursor: '#4D4C55'

        empty: '#3D4A76'
        header: { fg: '#3B562B' attr: 'b' }
        hints: '#4D4C55'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#45444D' attr: 'b' }
        search_result: { fg: '#6F3F29' bg: '#C4C1D6' }
        separator: '#35362E'
    }
}

# Update the Nushell configuration
export def --env "set color_config" [] {
    $env.config.color_config = (main)
}

# Update terminal colors
export def "update terminal" [] {
    let theme = (main)

    # Set terminal colors
    let osc_screen_foreground_color = '10;'
    let osc_screen_background_color = '11;'
    let osc_cursor_color = '12;'
        
    $"
    (ansi -o $osc_screen_foreground_color)($theme.foreground)(char bel)
    (ansi -o $osc_screen_background_color)($theme.background)(char bel)
    (ansi -o $osc_cursor_color)($theme.cursor)(char bel)
    "
    # Line breaks above are just for source readability
    # but create extra whitespace when activating. Collapse
    # to one line and print with no-newline
    | str replace --all "\n" ''
    | print -n $"($in)\r"
}

export module activate {
    export-env {
        set color_config
        update terminal
    }
}

# Activate the theme when sourced
use activate
