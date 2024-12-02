# Retrieve the theme settings
export def main [] {
    return {
        binary: '#CFB2D4'
        block: '#8BCEB6'
        cell-path: '#BEBCC6'
        closure: '#ACBEE3'
        custom: '#CFB2D4'
        duration: '#8BCEB6'
        float: '#CFBD7E'
        glob: '#8BCEB6'
        int: '#CFBD7E'
        list: '#8CC9D7'
        nothing: '#E5ADB2'
        range: '#8BCEB6'
        record: '#8CC9D7'
        string: '#ABC990'

        bool: {|| if $in { '#8BCEB6' } else { "#E5ADB2" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#E5ADB2'
            } else if $in < 6hr {
                '#E5B18E'
            } else if $in < 1day {
                '#CFBD7E'
            } else if $in < 3day {
                '#ABC990'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#8CC9D7'
            } else if $in < 52wk {
                '#ACBEE3'
            } else { '#CFB2D4'}
        }

        filesize: {|e|
            if $e == 0b {
                '#BEBFB4'
            } else if $e < 1mb {
                '#8BCEB6'
            } else {{ fg: '#DFDCE7' attr: 'b' }}
        }

        shape_and: { fg: '#8BCEB6' attr: 'b' }
        shape_binary: { fg: '#CFB2D4' attr: 'b' }
        shape_block: { fg: '#8BCEB6' attr: 'b' }
        shape_bool: '#CFBD7E'
        shape_closure: { fg: '#ACBEE3' attr: 'b' }
        shape_custom: '#CFB2D4'
        shape_datetime: { fg: '#CFBD7E' attr: 'b' }
        shape_directory: '#ACBEE3'
        shape_external: '#ABC990'
        shape_external_resolved: '#ABC990'
        shape_externalarg: { fg: '#CFBD7E' attr: 'b' }
        shape_filepath: '#ACBEE3'
        shape_flag: { fg: '#E5ADB2' attr: 'b' }
        shape_float: { fg: '#CFBD7E' attr: 'b' }
        shape_garbage: { fg: '#D4D5CA' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#8BCEB6' attr: 'b' }
        shape_globpattern: { fg: '#8BCEB6' attr: 'b' }
        shape_int: { fg: '#CFBD7E' attr: 'b' }
        shape_internalcall: { fg: '#8BCEB6' attr: 'b' }
        shape_keyword: { fg: '#E5ADB2' attr: 'b' }
        shape_list: { fg: '#8CC9D7' attr: 'b' }
        shape_literal: '#CFBD7E'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#E5ADB2'
        shape_operator: '#ACBEE3'
        shape_or: { fg: '#8BCEB6' attr: 'b' }
        shape_pipe: { fg: '#ACBEE3' attr: 'b' }
        shape_range: { fg: '#8BCEB6' attr: 'b' }
        shape_raw_string: { fg: '#D5D2DD' attr: 'b' }
        shape_record: { fg: '#8CC9D7' attr: 'b' }
        shape_redirection: { fg: '#8CC9D7' attr: 'b' }
        shape_signature: { fg: '#E5B18E' attr: 'b' }
        shape_string: '#ABC990'
        shape_string_interpolation: { fg: '#8BCEB6' attr: 'b' }
        shape_table: { fg: '#8CC9D7' attr: 'b' }
        shape_vardecl: { fg: '#ACBEE3' attr: 'u' }
        shape_variable: '#E5B18E'

        foreground: '#D5D2DD'
        background: '#2E2F26'
        cursor: '#BEBCC6'

        empty: '#ACBEE3'
        header: { fg: '#ABC990' attr: 'b' }
        hints: '#BEBCC6'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#C8C5D0' attr: 'b' }
        search_result: { fg: '#E5B18E' bg: '#43414A' }
        separator: '#DEDFD4'
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
