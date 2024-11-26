# Retrieve the theme settings
export def main [] {
    return {
        binary: '#D0B0DF'
        block: '#98C9C6'
        cell-path: '#C1BBC4'
        closure: '#B3BAEC'
        custom: '#D0B0DF'
        duration: '#98C9C6'
        float: '#D0BA9A'
        glob: '#98C9C6'
        int: '#D0BA9A'
        list: '#99C4E2'
        nothing: '#E3ABC3'
        range: '#98C9C6'
        record: '#99C4E2'
        string: '#B2C5A8'

        bool: {|| if $in { '#98C9C6' } else { "#E3ABC3" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#E3ABC3'
            } else if $in < 6hr {
                '#E3B0A6'
            } else if $in < 1day {
                '#D0BA9A'
            } else if $in < 3day {
                '#B2C5A8'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#99C4E2'
            } else if $in < 52wk {
                '#B3BAEC'
            } else { '#D0B0DF'}
        }

        filesize: {|e|
            if $e == 0b {
                '#BAC0B6'
            } else if $e < 1mb {
                '#98C9C6'
            } else {{ fg: '#DFD8E2' attr: 'b' }}
        }

        shape_and: { fg: '#98C9C6' attr: 'b' }
        shape_binary: { fg: '#D0B0DF' attr: 'b' }
        shape_block: { fg: '#98C9C6' attr: 'b' }
        shape_bool: '#D0BA9A'
        shape_closure: { fg: '#B3BAEC' attr: 'b' }
        shape_custom: '#D0B0DF'
        shape_datetime: { fg: '#D0BA9A' attr: 'b' }
        shape_directory: '#B3BAEC'
        shape_external: '#B2C5A8'
        shape_external_resolved: '#B2C5A8'
        shape_externalarg: { fg: '#D0BA9A' attr: 'b' }
        shape_filepath: '#B3BAEC'
        shape_flag: { fg: '#E3ABC3' attr: 'b' }
        shape_float: { fg: '#D0BA9A' attr: 'b' }
        shape_garbage: { fg: '#CDD3CA' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#98C9C6' attr: 'b' }
        shape_globpattern: { fg: '#98C9C6' attr: 'b' }
        shape_int: { fg: '#D0BA9A' attr: 'b' }
        shape_internalcall: { fg: '#98C9C6' attr: 'b' }
        shape_keyword: { fg: '#E3ABC3' attr: 'b' }
        shape_list: { fg: '#99C4E2' attr: 'b' }
        shape_literal: '#D0BA9A'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#E3ABC3'
        shape_operator: '#B3BAEC'
        shape_or: { fg: '#98C9C6' attr: 'b' }
        shape_pipe: { fg: '#B3BAEC' attr: 'b' }
        shape_range: { fg: '#98C9C6' attr: 'b' }
        shape_raw_string: { fg: '#D5CED8' attr: 'b' }
        shape_record: { fg: '#99C4E2' attr: 'b' }
        shape_redirection: { fg: '#99C4E2' attr: 'b' }
        shape_signature: { fg: '#E3B0A6' attr: 'b' }
        shape_string: '#B2C5A8'
        shape_string_interpolation: { fg: '#98C9C6' attr: 'b' }
        shape_table: { fg: '#99C4E2' attr: 'b' }
        shape_vardecl: { fg: '#B3BAEC' attr: 'u' }
        shape_variable: '#E3B0A6'

        foreground: '#D5CED8'
        background: '#252F20'
        cursor: '#C1BBC4'

        empty: '#B3BAEC'
        header: { fg: '#B2C5A8' attr: 'b' }
        hints: '#C1BBC4'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#CBC5CE' attr: 'b' }
        search_result: { fg: '#E3B0A6' bg: '#463B4B' }
        separator: '#D7DDD3'
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
