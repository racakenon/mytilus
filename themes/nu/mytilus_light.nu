# Retrieve the theme settings
export def main [] {
    return {
        binary: '#5F436C'
        block: '#2B5957'
        cell-path: '#534D56'
        closure: '#474B76'
        custom: '#5F436C'
        duration: '#2B5957'
        float: '#5F4C2F'
        glob: '#2B5957'
        int: '#5F4C2F'
        list: '#2D546E'
        nothing: '#6D3F54'
        range: '#2B5957'
        record: '#2D546E'
        string: '#45563C'

        bool: {|| if $in { '#2B5957' } else { "#6D3F54" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#6D3F54'
            } else if $in < 6hr {
                '#6E433B'
            } else if $in < 1day {
                '#5F4C2F'
            } else if $in < 3day {
                '#45563C'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#2D546E'
            } else if $in < 52wk {
                '#474B76'
            } else { '#5F436C'}
        }

        filesize: {|e|
            if $e == 0b {
                '#4C524A'
            } else if $e < 1mb {
                '#2B5957'
            } else {{ fg: '#3B363D' attr: 'b' }}
        }

        shape_and: { fg: '#2B5957' attr: 'b' }
        shape_binary: { fg: '#5F436C' attr: 'b' }
        shape_block: { fg: '#2B5957' attr: 'b' }
        shape_bool: '#5F4C2F'
        shape_closure: { fg: '#474B76' attr: 'b' }
        shape_custom: '#5F436C'
        shape_datetime: { fg: '#5F4C2F' attr: 'b' }
        shape_directory: '#474B76'
        shape_external: '#45563C'
        shape_external_resolved: '#45563C'
        shape_externalarg: { fg: '#5F4C2F' attr: 'b' }
        shape_filepath: '#474B76'
        shape_flag: { fg: '#6D3F54' attr: 'b' }
        shape_float: { fg: '#5F4C2F' attr: 'b' }
        shape_garbage: { fg: '#3C423A' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#2B5957' attr: 'b' }
        shape_globpattern: { fg: '#2B5957' attr: 'b' }
        shape_int: { fg: '#5F4C2F' attr: 'b' }
        shape_internalcall: { fg: '#2B5957' attr: 'b' }
        shape_keyword: { fg: '#6D3F54' attr: 'b' }
        shape_list: { fg: '#2D546E' attr: 'b' }
        shape_literal: '#5F4C2F'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#6D3F54'
        shape_operator: '#474B76'
        shape_or: { fg: '#2B5957' attr: 'b' }
        shape_pipe: { fg: '#474B76' attr: 'b' }
        shape_range: { fg: '#2B5957' attr: 'b' }
        shape_raw_string: { fg: '#433D45' attr: 'b' }
        shape_record: { fg: '#2D546E' attr: 'b' }
        shape_redirection: { fg: '#2D546E' attr: 'b' }
        shape_signature: { fg: '#6E433B' attr: 'b' }
        shape_string: '#45563C'
        shape_string_interpolation: { fg: '#2B5957' attr: 'b' }
        shape_table: { fg: '#2D546E' attr: 'b' }
        shape_vardecl: { fg: '#474B76' attr: 'u' }
        shape_variable: '#6E433B'

        foreground: '#433D45'
        background: '#E0EDD9'
        cursor: '#534D56'

        empty: '#474B76'
        header: { fg: '#45563C' attr: 'b' }
        hints: '#534D56'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#4B454D' attr: 'b' }
        search_result: { fg: '#6E433B' bg: '#D5C8DC' }
        separator: '#353A32'
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
