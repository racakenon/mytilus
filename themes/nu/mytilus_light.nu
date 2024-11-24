# Retrieve the theme settings
export def main [] {
    return {
        binary: '#53395F'
        block: '#025146'
        cell-path: '#45434F'
        closure: '#36436B'
        custom: '#53395F'
        duration: '#025146'
        float: '#544310'
        glob: '#025146'
        int: '#544310'
        list: '#094C61'
        nothing: '#633443'
        range: '#025146'
        record: '#094C61'
        string: '#344D26'

        bool: {|| if $in { '#025146' } else { "#633443" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#633443'
            } else if $in < 6hr {
                '#643824'
            } else if $in < 1day {
                '#544310'
            } else if $in < 3day {
                '#344D26'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#094C61'
            } else if $in < 52wk {
                '#36436B'
            } else { '#53395F'}
        }

        filesize: {|e|
            if $e == 0b {
                '#45463A'
            } else if $e < 1mb {
                '#025146'
            } else {{ fg: '#35343F' attr: 'b' }}
        }

        shape_and: { fg: '#025146' attr: 'b' }
        shape_binary: { fg: '#53395F' attr: 'b' }
        shape_block: { fg: '#025146' attr: 'b' }
        shape_bool: '#544310'
        shape_closure: { fg: '#36436B' attr: 'b' }
        shape_custom: '#53395F'
        shape_datetime: { fg: '#544310' attr: 'b' }
        shape_directory: '#36436B'
        shape_external: '#344D26'
        shape_external_resolved: '#344D26'
        shape_externalarg: { fg: '#544310' attr: 'b' }
        shape_filepath: '#36436B'
        shape_flag: { fg: '#633443' attr: 'b' }
        shape_float: { fg: '#544310' attr: 'b' }
        shape_garbage: { fg: '#3A3C30' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#025146' attr: 'b' }
        shape_globpattern: { fg: '#025146' attr: 'b' }
        shape_int: { fg: '#544310' attr: 'b' }
        shape_internalcall: { fg: '#025146' attr: 'b' }
        shape_keyword: { fg: '#633443' attr: 'b' }
        shape_list: { fg: '#094C61' attr: 'b' }
        shape_literal: '#544310'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#633443'
        shape_operator: '#36436B'
        shape_or: { fg: '#025146' attr: 'b' }
        shape_pipe: { fg: '#36436B' attr: 'b' }
        shape_range: { fg: '#025146' attr: 'b' }
        shape_raw_string: { fg: '#3B3944' attr: 'b' }
        shape_record: { fg: '#094C61' attr: 'b' }
        shape_redirection: { fg: '#094C61' attr: 'b' }
        shape_signature: { fg: '#643824' attr: 'b' }
        shape_string: '#344D26'
        shape_string_interpolation: { fg: '#025146' attr: 'b' }
        shape_table: { fg: '#094C61' attr: 'b' }
        shape_vardecl: { fg: '#36436B' attr: 'u' }
        shape_variable: '#643824'

        foreground: '#3B3944'
        background: '#E1E4CA'
        cursor: '#45434F'

        empty: '#36436B'
        header: { fg: '#344D26' attr: 'b' }
        hints: '#45434F'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#403E4A' attr: 'b' }
        search_result: { fg: '#643824' bg: '#BEBAD3' }
        separator: '#35372B'
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
