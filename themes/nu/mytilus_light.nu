# Retrieve the theme settings
export def main [] {
    return {
        binary: '#563C62'
        block: '#27504F'
        cell-path: '#4B454D'
        closure: '#40446B'
        custom: '#563C62'
        duration: '#27504F'
        float: '#56442B'
        glob: '#27504F'
        int: '#56442B'
        list: '#294C63'
        nothing: '#63384C'
        range: '#27504F'
        record: '#294C63'
        string: '#3E4D37'

        bool: {|| if $in { '#27504F' } else { "#63384C" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#63384C'
            } else if $in < 6hr {
                '#633C35'
            } else if $in < 1day {
                '#56442B'
            } else if $in < 3day {
                '#3E4D37'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#294C63'
            } else if $in < 52wk {
                '#40446B'
            } else { '#563C62'}
        }

        filesize: {|e|
            if $e == 0b {
                '#444A42'
            } else if $e < 1mb {
                '#27504F'
            } else {{ fg: '#332E36' attr: 'b' }}
        }

        shape_and: { fg: '#27504F' attr: 'b' }
        shape_binary: { fg: '#563C62' attr: 'b' }
        shape_block: { fg: '#27504F' attr: 'b' }
        shape_bool: '#56442B'
        shape_closure: { fg: '#40446B' attr: 'b' }
        shape_custom: '#563C62'
        shape_datetime: { fg: '#56442B' attr: 'b' }
        shape_directory: '#40446B'
        shape_external: '#3E4D37'
        shape_external_resolved: '#3E4D37'
        shape_externalarg: { fg: '#56442B' attr: 'b' }
        shape_filepath: '#40446B'
        shape_flag: { fg: '#63384C' attr: 'b' }
        shape_float: { fg: '#56442B' attr: 'b' }
        shape_garbage: { fg: '#353A32' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#27504F' attr: 'b' }
        shape_globpattern: { fg: '#27504F' attr: 'b' }
        shape_int: { fg: '#56442B' attr: 'b' }
        shape_internalcall: { fg: '#27504F' attr: 'b' }
        shape_keyword: { fg: '#63384C' attr: 'b' }
        shape_list: { fg: '#294C63' attr: 'b' }
        shape_literal: '#56442B'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#63384C'
        shape_operator: '#40446B'
        shape_or: { fg: '#27504F' attr: 'b' }
        shape_pipe: { fg: '#40446B' attr: 'b' }
        shape_range: { fg: '#27504F' attr: 'b' }
        shape_raw_string: { fg: '#3B363D' attr: 'b' }
        shape_record: { fg: '#294C63' attr: 'b' }
        shape_redirection: { fg: '#294C63' attr: 'b' }
        shape_signature: { fg: '#633C35' attr: 'b' }
        shape_string: '#3E4D37'
        shape_string_interpolation: { fg: '#27504F' attr: 'b' }
        shape_table: { fg: '#294C63' attr: 'b' }
        shape_vardecl: { fg: '#40446B' attr: 'u' }
        shape_variable: '#633C35'

        foreground: '#3B363D'
        background: '#DAE0D6'
        cursor: '#4B454D'

        empty: '#40446B'
        header: { fg: '#3E4D37' attr: 'b' }
        hints: '#4B454D'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#433D45' attr: 'b' }
        search_result: { fg: '#633C35' bg: '#C8C1CB' }
        separator: '#2D322B'
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
