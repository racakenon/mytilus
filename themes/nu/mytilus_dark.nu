# Retrieve the theme settings
export def main [] {
    return {
        binary: '#D5B9DB'
        block: '#91D5BC'
        cell-path: '#C4C2CD'
        closure: '#B2C4EA'
        custom: '#D5B9DB'
        duration: '#91D5BC'
        float: '#D6C485'
        glob: '#91D5BC'
        int: '#D6C485'
        list: '#92D0DD'
        nothing: '#EBB3B9'
        range: '#91D5BC'
        record: '#92D0DD'
        string: '#B1D097'

        bool: {|| if $in { '#91D5BC' } else { "#EBB3B9" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#EBB3B9'
            } else if $in < 6hr {
                '#ECB894'
            } else if $in < 1day {
                '#D6C485'
            } else if $in < 3day {
                '#B1D097'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#92D0DD'
            } else if $in < 52wk {
                '#B2C4EA'
            } else { '#D5B9DB'}
        }

        filesize: {|e|
            if $e == 0b {
                '#C4C5BA'
            } else if $e < 1mb {
                '#91D5BC'
            } else {{ fg: '#EBEAF5' attr: 'b' }}
        }

        shape_and: { fg: '#91D5BC' attr: 'b' }
        shape_binary: { fg: '#D5B9DB' attr: 'b' }
        shape_block: { fg: '#91D5BC' attr: 'b' }
        shape_bool: '#D6C485'
        shape_closure: { fg: '#B2C4EA' attr: 'b' }
        shape_custom: '#D5B9DB'
        shape_datetime: { fg: '#D6C485' attr: 'b' }
        shape_directory: '#B2C4EA'
        shape_external: '#B1D097'
        shape_external_resolved: '#B1D097'
        shape_externalarg: { fg: '#D6C485' attr: 'b' }
        shape_filepath: '#B2C4EA'
        shape_flag: { fg: '#EBB3B9' attr: 'b' }
        shape_float: { fg: '#D6C485' attr: 'b' }
        shape_garbage: { fg: '#DEDFD4' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#91D5BC' attr: 'b' }
        shape_globpattern: { fg: '#91D5BC' attr: 'b' }
        shape_int: { fg: '#D6C485' attr: 'b' }
        shape_internalcall: { fg: '#91D5BC' attr: 'b' }
        shape_keyword: { fg: '#EBB3B9' attr: 'b' }
        shape_list: { fg: '#92D0DD' attr: 'b' }
        shape_literal: '#D6C485'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#EBB3B9'
        shape_operator: '#B2C4EA'
        shape_or: { fg: '#91D5BC' attr: 'b' }
        shape_pipe: { fg: '#B2C4EA' attr: 'b' }
        shape_range: { fg: '#91D5BC' attr: 'b' }
        shape_raw_string: { fg: '#DEDCE7' attr: 'b' }
        shape_record: { fg: '#92D0DD' attr: 'b' }
        shape_redirection: { fg: '#92D0DD' attr: 'b' }
        shape_signature: { fg: '#ECB894' attr: 'b' }
        shape_string: '#B1D097'
        shape_string_interpolation: { fg: '#91D5BC' attr: 'b' }
        shape_table: { fg: '#92D0DD' attr: 'b' }
        shape_vardecl: { fg: '#B2C4EA' attr: 'u' }
        shape_variable: '#ECB894'

        foreground: '#DEDCE7'
        background: '#33342B'
        cursor: '#C4C2CD'

        empty: '#B2C4EA'
        header: { fg: '#B1D097' attr: 'b' }
        hints: '#C4C2CD'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#D1CFDA' attr: 'b' }
        search_result: { fg: '#ECB894' bg: '#48464F' }
        separator: '#EBECE1'
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
