# Retrieve the theme settings
export def main [] {
    return {
        binary: '#D0B0DF'
        block: '#86CEBF'
        cell-path: '#BEBCC7'
        closure: '#ABBCEF'
        custom: '#D0B0DF'
        duration: '#86CEBF'
        float: '#D0BC86'
        glob: '#86CEBF'
        int: '#D0BC86'
        list: '#88C9E2'
        nothing: '#E7AABC'
        range: '#86CEBF'
        record: '#88C9E2'
        string: '#A9C999'

        bool: {|| if $in { '#86CEBF' } else { "#E7AABC" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#E7AABC'
            } else if $in < 6hr {
                '#E8AF96'
            } else if $in < 1day {
                '#D0BC86'
            } else if $in < 3day {
                '#A9C999'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#88C9E2'
            } else if $in < 52wk {
                '#ABBCEF'
            } else { '#D0B0DF'}
        }

        filesize: {|e|
            if $e == 0b {
                '#BDBFB4'
            } else if $e < 1mb {
                '#86CEBF'
            } else {{ fg: '#DBD9E4' attr: 'b' }}
        }

        shape_and: { fg: '#86CEBF' attr: 'b' }
        shape_binary: { fg: '#D0B0DF' attr: 'b' }
        shape_block: { fg: '#86CEBF' attr: 'b' }
        shape_bool: '#D0BC86'
        shape_closure: { fg: '#ABBCEF' attr: 'b' }
        shape_custom: '#D0B0DF'
        shape_datetime: { fg: '#D0BC86' attr: 'b' }
        shape_directory: '#ABBCEF'
        shape_external: '#A9C999'
        shape_external_resolved: '#A9C999'
        shape_externalarg: { fg: '#D0BC86' attr: 'b' }
        shape_filepath: '#ABBCEF'
        shape_flag: { fg: '#E7AABC' attr: 'b' }
        shape_float: { fg: '#D0BC86' attr: 'b' }
        shape_garbage: { fg: '#D1D2C7' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#86CEBF' attr: 'b' }
        shape_globpattern: { fg: '#86CEBF' attr: 'b' }
        shape_int: { fg: '#D0BC86' attr: 'b' }
        shape_internalcall: { fg: '#86CEBF' attr: 'b' }
        shape_keyword: { fg: '#E7AABC' attr: 'b' }
        shape_list: { fg: '#88C9E2' attr: 'b' }
        shape_literal: '#D0BC86'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#E7AABC'
        shape_operator: '#ABBCEF'
        shape_or: { fg: '#86CEBF' attr: 'b' }
        shape_pipe: { fg: '#ABBCEF' attr: 'b' }
        shape_range: { fg: '#86CEBF' attr: 'b' }
        shape_raw_string: { fg: '#D1CFDA' attr: 'b' }
        shape_record: { fg: '#88C9E2' attr: 'b' }
        shape_redirection: { fg: '#88C9E2' attr: 'b' }
        shape_signature: { fg: '#E8AF96' attr: 'b' }
        shape_string: '#A9C999'
        shape_string_interpolation: { fg: '#86CEBF' attr: 'b' }
        shape_table: { fg: '#88C9E2' attr: 'b' }
        shape_vardecl: { fg: '#ABBCEF' attr: 'u' }
        shape_variable: '#E8AF96'

        foreground: '#D1CFDA'
        background: '#2B2D1B'
        cursor: '#BEBCC7'

        empty: '#ABBCEF'
        header: { fg: '#A9C999' attr: 'b' }
        hints: '#BEBCC7'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#C7C6D0' attr: 'b' }
        search_result: { fg: '#E8AF96' bg: '#403D4F' }
        separator: '#DBDCD1'
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
