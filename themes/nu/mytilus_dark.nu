# Retrieve the theme settings
export def main [] {
    return {
        binary: '#D2B4E0'
        block: '#9FCBC9'
        cell-path: '#C5BEC8'
        closure: '#B7BDEC'
        custom: '#D2B4E0'
        duration: '#9FCBC9'
        float: '#D2BEA1'
        glob: '#9FCBC9'
        int: '#D2BEA1'
        list: '#A0C7E3'
        nothing: '#E3B0C6'
        range: '#9FCBC9'
        record: '#A0C7E3'
        string: '#B6C7AD'

        bool: {|| if $in { '#9FCBC9' } else { "#E3B0C6" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#E3B0C6'
            } else if $in < 6hr {
                '#E4B4AB'
            } else if $in < 1day {
                '#D2BEA1'
            } else if $in < 3day {
                '#B6C7AD'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#A0C7E3'
            } else if $in < 52wk {
                '#B7BDEC'
            } else { '#D2B4E0'}
        }

        filesize: {|e|
            if $e == 0b {
                '#BDC3BA'
            } else if $e < 1mb {
                '#9FCBC9'
            } else {{ fg: '#E2DBE5' attr: 'b' }}
        }

        shape_and: { fg: '#9FCBC9' attr: 'b' }
        shape_binary: { fg: '#D2B4E0' attr: 'b' }
        shape_block: { fg: '#9FCBC9' attr: 'b' }
        shape_bool: '#D2BEA1'
        shape_closure: { fg: '#B7BDEC' attr: 'b' }
        shape_custom: '#D2B4E0'
        shape_datetime: { fg: '#D2BEA1' attr: 'b' }
        shape_directory: '#B7BDEC'
        shape_external: '#B6C7AD'
        shape_external_resolved: '#B6C7AD'
        shape_externalarg: { fg: '#D2BEA1' attr: 'b' }
        shape_filepath: '#B7BDEC'
        shape_flag: { fg: '#E3B0C6' attr: 'b' }
        shape_float: { fg: '#D2BEA1' attr: 'b' }
        shape_garbage: { fg: '#D0D7CD' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#9FCBC9' attr: 'b' }
        shape_globpattern: { fg: '#9FCBC9' attr: 'b' }
        shape_int: { fg: '#D2BEA1' attr: 'b' }
        shape_internalcall: { fg: '#9FCBC9' attr: 'b' }
        shape_keyword: { fg: '#E3B0C6' attr: 'b' }
        shape_list: { fg: '#A0C7E3' attr: 'b' }
        shape_literal: '#D2BEA1'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#E3B0C6'
        shape_operator: '#B7BDEC'
        shape_or: { fg: '#9FCBC9' attr: 'b' }
        shape_pipe: { fg: '#B7BDEC' attr: 'b' }
        shape_range: { fg: '#9FCBC9' attr: 'b' }
        shape_raw_string: { fg: '#D8D1DB' attr: 'b' }
        shape_record: { fg: '#A0C7E3' attr: 'b' }
        shape_redirection: { fg: '#A0C7E3' attr: 'b' }
        shape_signature: { fg: '#E4B4AB' attr: 'b' }
        shape_string: '#B6C7AD'
        shape_string_interpolation: { fg: '#9FCBC9' attr: 'b' }
        shape_table: { fg: '#A0C7E3' attr: 'b' }
        shape_vardecl: { fg: '#B7BDEC' attr: 'u' }
        shape_variable: '#E4B4AB'

        foreground: '#D8D1DB'
        background: '#2B3028'
        cursor: '#C5BEC8'

        empty: '#B7BDEC'
        header: { fg: '#B6C7AD' attr: 'b' }
        hints: '#C5BEC8'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#CEC8D1' attr: 'b' }
        search_result: { fg: '#E4B4AB' bg: '#454048' }
        separator: '#DAE0D6'
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
