# Retrieve the theme settings
export def main [] {
    return {
        binary: '#D293DC'
        block: '#82BAB7'
        cell-path: '#A6B1AB'
        closure: '#AAA3EE'
        custom: '#D293DC'
        duration: '#82BAB7'
        float: '#D2A473'
        glob: '#82BAB7'
        int: '#D2A473'
        list: '#84B3E0'
        nothing: '#EB8CB3'
        range: '#82BAB7'
        record: '#84B3E0'
        string: '#A8B48A'

        bool: {|| if $in { '#82BAB7' } else { "#EB8CB3" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#EB8CB3'
            } else if $in < 6hr {
                '#EB9387'
            } else if $in < 1day {
                '#D2A473'
            } else if $in < 3day {
                '#A8B48A'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#84B3E0'
            } else if $in < 52wk {
                '#AAA3EE'
            } else { '#D293DC'}
        }

        filesize: {|e|
            if $e == 0b {
                '#B5AAB1'
            } else if $e < 1mb {
                '#82BAB7'
            } else {{ fg: '#CCD7D1' attr: 'b' }}
        }

        shape_and: { fg: '#82BAB7' attr: 'b' }
        shape_binary: { fg: '#D293DC' attr: 'b' }
        shape_block: { fg: '#82BAB7' attr: 'b' }
        shape_bool: '#D2A473'
        shape_closure: { fg: '#AAA3EE' attr: 'b' }
        shape_custom: '#D293DC'
        shape_datetime: { fg: '#D2A473' attr: 'b' }
        shape_directory: '#AAA3EE'
        shape_external: '#A8B48A'
        shape_external_resolved: '#A8B48A'
        shape_externalarg: { fg: '#D2A473' attr: 'b' }
        shape_filepath: '#AAA3EE'
        shape_flag: { fg: '#EB8CB3' attr: 'b' }
        shape_float: { fg: '#D2A473' attr: 'b' }
        shape_garbage: { fg: '#CEC4CA' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#82BAB7' attr: 'b' }
        shape_globpattern: { fg: '#82BAB7' attr: 'b' }
        shape_int: { fg: '#D2A473' attr: 'b' }
        shape_internalcall: { fg: '#82BAB7' attr: 'b' }
        shape_keyword: { fg: '#EB8CB3' attr: 'b' }
        shape_list: { fg: '#84B3E0' attr: 'b' }
        shape_literal: '#D2A473'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#EB8CB3'
        shape_operator: '#AAA3EE'
        shape_or: { fg: '#82BAB7' attr: 'b' }
        shape_pipe: { fg: '#AAA3EE' attr: 'b' }
        shape_range: { fg: '#82BAB7' attr: 'b' }
        shape_raw_string: { fg: '#BFCAC4' attr: 'b' }
        shape_record: { fg: '#84B3E0' attr: 'b' }
        shape_redirection: { fg: '#84B3E0' attr: 'b' }
        shape_signature: { fg: '#EB9387' attr: 'b' }
        shape_string: '#A8B48A'
        shape_string_interpolation: { fg: '#82BAB7' attr: 'b' }
        shape_table: { fg: '#84B3E0' attr: 'b' }
        shape_vardecl: { fg: '#AAA3EE' attr: 'u' }
        shape_variable: '#EB9387'

        foreground: '#BFCAC4'
        background: '#32202C'
        cursor: '#A6B1AB'

        empty: '#AAA3EE'
        header: { fg: '#A8B48A' attr: 'b' }
        hints: '#A6B1AB'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#B3BEB7' attr: 'b' }
        search_result: { fg: '#EB9387' bg: '#2A4034' }
        separator: '#DBD1D7'
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
