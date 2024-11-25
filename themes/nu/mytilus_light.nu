# Retrieve the theme settings
export def main [] {
    return {
        binary: '#5F436C'
        block: '#0A5D51'
        cell-path: '#504E58'
        closure: '#404D79'
        custom: '#5F436C'
        duration: '#0A5D51'
        float: '#604E17'
        glob: '#0A5D51'
        int: '#604E17'
        list: '#11586F'
        nothing: '#713D4E'
        range: '#0A5D51'
        record: '#11586F'
        string: '#3D592E'

        bool: {|| if $in { '#0A5D51' } else { "#713D4E" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#713D4E'
            } else if $in < 6hr {
                '#72422B'
            } else if $in < 1day {
                '#604E17'
            } else if $in < 3day {
                '#3D592E'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#11586F'
            } else if $in < 52wk {
                '#404D79'
            } else { '#5F436C'}
        }

        filesize: {|e|
            if $e == 0b {
                '#505147'
            } else if $e < 1mb {
                '#0A5D51'
            } else {{ fg: '#38373F' attr: 'b' }}
        }

        shape_and: { fg: '#0A5D51' attr: 'b' }
        shape_binary: { fg: '#5F436C' attr: 'b' }
        shape_block: { fg: '#0A5D51' attr: 'b' }
        shape_bool: '#604E17'
        shape_closure: { fg: '#404D79' attr: 'b' }
        shape_custom: '#5F436C'
        shape_datetime: { fg: '#604E17' attr: 'b' }
        shape_directory: '#404D79'
        shape_external: '#3D592E'
        shape_external_resolved: '#3D592E'
        shape_externalarg: { fg: '#604E17' attr: 'b' }
        shape_filepath: '#404D79'
        shape_flag: { fg: '#713D4E' attr: 'b' }
        shape_float: { fg: '#604E17' attr: 'b' }
        shape_garbage: { fg: '#404138' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#0A5D51' attr: 'b' }
        shape_globpattern: { fg: '#0A5D51' attr: 'b' }
        shape_int: { fg: '#604E17' attr: 'b' }
        shape_internalcall: { fg: '#0A5D51' attr: 'b' }
        shape_keyword: { fg: '#713D4E' attr: 'b' }
        shape_list: { fg: '#11586F' attr: 'b' }
        shape_literal: '#604E17'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#713D4E'
        shape_operator: '#404D79'
        shape_or: { fg: '#0A5D51' attr: 'b' }
        shape_pipe: { fg: '#404D79' attr: 'b' }
        shape_range: { fg: '#0A5D51' attr: 'b' }
        shape_raw_string: { fg: '#403E47' attr: 'b' }
        shape_record: { fg: '#11586F' attr: 'b' }
        shape_redirection: { fg: '#11586F' attr: 'b' }
        shape_signature: { fg: '#72422B' attr: 'b' }
        shape_string: '#3D592E'
        shape_string_interpolation: { fg: '#0A5D51' attr: 'b' }
        shape_table: { fg: '#11586F' attr: 'b' }
        shape_vardecl: { fg: '#404D79' attr: 'u' }
        shape_variable: '#72422B'

        foreground: '#403E47'
        background: '#E8EBD0'
        cursor: '#504E58'

        empty: '#404D79'
        header: { fg: '#3D592E' attr: 'b' }
        hints: '#504E58'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#48464F' attr: 'b' }
        search_result: { fg: '#72422B' bg: '#CECAE3' }
        separator: '#383930'
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
