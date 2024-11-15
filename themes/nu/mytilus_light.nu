# Retrieve the theme settings
export def main [] {
    return {
        binary: '#664774'
        block: '#066357'
        cell-path: '#555265'
        closure: '#445282'
        custom: '#664774'
        duration: '#066357'
        float: '#675317'
        glob: '#066357'
        int: '#675317'
        list: '#105E77'
        nothing: '#794153'
        range: '#066357'
        record: '#105E77'
        string: '#415F30'

        bool: {|| if $in { '#066357' } else { "#794153" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#794153'
            } else if $in < 6hr {
                '#7A462E'
            } else if $in < 1day {
                '#675317'
            } else if $in < 3day {
                '#415F30'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#105E77'
            } else if $in < 52wk {
                '#445282'
            } else { '#664774'}
        }

        filesize: {|e|
            if $e == 0b {
                '#555744'
            } else if $e < 1mb {
                '#066357'
            } else {{ fg: '#2E2B3C' attr: 'b' }}
        }

        shape_and: { fg: '#066357' attr: 'b' }
        shape_binary: { fg: '#664774' attr: 'b' }
        shape_block: { fg: '#066357' attr: 'b' }
        shape_bool: '#675317'
        shape_closure: { fg: '#445282' attr: 'b' }
        shape_custom: '#664774'
        shape_datetime: { fg: '#675317' attr: 'b' }
        shape_directory: '#445282'
        shape_external: '#415F30'
        shape_external_resolved: '#415F30'
        shape_externalarg: { fg: '#675317' attr: 'b' }
        shape_filepath: '#445282'
        shape_flag: { fg: '#794153' attr: 'b' }
        shape_float: { fg: '#675317' attr: 'b' }
        shape_garbage: { fg: '#3B3C2A' bg: '#EAA9BB' attr: 'b' }
        shape_glob_interpolation: { fg: '#066357' attr: 'b' }
        shape_globpattern: { fg: '#066357' attr: 'b' }
        shape_int: { fg: '#675317' attr: 'b' }
        shape_internalcall: { fg: '#066357' attr: 'b' }
        shape_keyword: { fg: '#794153' attr: 'b' }
        shape_list: { fg: '#105E77' attr: 'b' }
        shape_literal: '#675317'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#794153'
        shape_operator: '#445282'
        shape_or: { fg: '#066357' attr: 'b' }
        shape_pipe: { fg: '#445282' attr: 'b' }
        shape_range: { fg: '#066357' attr: 'b' }
        shape_raw_string: { fg: '#3B3849' attr: 'b' }
        shape_record: { fg: '#105E77' attr: 'b' }
        shape_redirection: { fg: '#105E77' attr: 'b' }
        shape_signature: { fg: '#7A462E' attr: 'b' }
        shape_string: '#415F30'
        shape_string_interpolation: { fg: '#066357' attr: 'b' }
        shape_table: { fg: '#105E77' attr: 'b' }
        shape_vardecl: { fg: '#445282' attr: 'u' }
        shape_variable: '#7A462E'

        foreground: '#3B3849'
        background: '#DEE0CA'
        cursor: '#555265'

        empty: '#445282'
        header: { fg: '#415F30' attr: 'b' }
        hints: '#555265'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#484557' attr: 'b' }
        search_result: { fg: '#7A462E' bg: '#BEBBD0' }
        separator: '#2E2F1E'
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
