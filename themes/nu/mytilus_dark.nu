# Retrieve the theme settings
export def main [] {
    return {
        binary: '#C8A0D3'
        block: '#88BDB6'
        cell-path: '#B8AEB4'
        closure: '#A7ACE2'
        custom: '#C8A0D3'
        duration: '#88BDB6'
        float: '#C9AC82'
        glob: '#88BDB6'
        int: '#C9AC82'
        list: '#89B8D6'
        nothing: '#DD9BB3'
        range: '#88BDB6'
        record: '#89B8D6'
        string: '#A6B993'

        bool: {|| if $in { '#88BDB6' } else { "#DD9BB3" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#DD9BB3'
            } else if $in < 6hr {
                '#DDA090'
            } else if $in < 1day {
                '#C9AC82'
            } else if $in < 3day {
                '#A6B993'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#89B8D6'
            } else if $in < 52wk {
                '#A7ACE2'
            } else { '#C8A0D3'}
        }

        filesize: {|e|
            if $e == 0b {
                '#AAB4AD'
            } else if $e < 1mb {
                '#88BDB6'
            } else {{ fg: '#D5CAD1' attr: 'b' }}
        }

        shape_and: { fg: '#88BDB6' attr: 'b' }
        shape_binary: { fg: '#C8A0D3' attr: 'b' }
        shape_block: { fg: '#88BDB6' attr: 'b' }
        shape_bool: '#C9AC82'
        shape_closure: { fg: '#A7ACE2' attr: 'b' }
        shape_custom: '#C8A0D3'
        shape_datetime: { fg: '#C9AC82' attr: 'b' }
        shape_directory: '#A7ACE2'
        shape_external: '#A6B993'
        shape_external_resolved: '#A6B993'
        shape_externalarg: { fg: '#C9AC82' attr: 'b' }
        shape_filepath: '#A7ACE2'
        shape_flag: { fg: '#DD9BB3' attr: 'b' }
        shape_float: { fg: '#C9AC82' attr: 'b' }
        shape_garbage: { fg: '#BDC7C0' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#88BDB6' attr: 'b' }
        shape_globpattern: { fg: '#88BDB6' attr: 'b' }
        shape_int: { fg: '#C9AC82' attr: 'b' }
        shape_internalcall: { fg: '#88BDB6' attr: 'b' }
        shape_keyword: { fg: '#DD9BB3' attr: 'b' }
        shape_list: { fg: '#89B8D6' attr: 'b' }
        shape_literal: '#C9AC82'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#DD9BB3'
        shape_operator: '#A7ACE2'
        shape_or: { fg: '#88BDB6' attr: 'b' }
        shape_pipe: { fg: '#A7ACE2' attr: 'b' }
        shape_range: { fg: '#88BDB6' attr: 'b' }
        shape_raw_string: { fg: '#CBC1C7' attr: 'b' }
        shape_record: { fg: '#89B8D6' attr: 'b' }
        shape_redirection: { fg: '#89B8D6' attr: 'b' }
        shape_signature: { fg: '#DDA090' attr: 'b' }
        shape_string: '#A6B993'
        shape_string_interpolation: { fg: '#88BDB6' attr: 'b' }
        shape_table: { fg: '#89B8D6' attr: 'b' }
        shape_vardecl: { fg: '#A7ACE2' attr: 'u' }
        shape_variable: '#DDA090'

        foreground: '#CBC1C7'
        background: '#212924'
        cursor: '#B8AEB4'

        empty: '#A7ACE2'
        header: { fg: '#A6B993' attr: 'b' }
        hints: '#B8AEB4'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#C1B7BE' attr: 'b' }
        search_result: { fg: '#DDA090' bg: '#40383D' }
        separator: '#C6D1CA'
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
