# Retrieve the theme settings
export def main [] {
    return {
        binary: '#D2B4E1'
        block: '#8ED0C2'
        cell-path: '#C1C3B1'
        closure: '#AFBFEF'
        custom: '#D2B4E1'
        duration: '#8ED0C2'
        float: '#D2C08D'
        glob: '#8ED0C2'
        int: '#D2C08D'
        list: '#8FCBE3'
        nothing: '#E8AFBF'
        range: '#8ED0C2'
        record: '#8FCBE3'
        string: '#AECC9E'

        bool: {|| if $in { '#8ED0C2' } else { "#E8AFBF" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#E8AFBF'
            } else if $in < 6hr {
                '#E8B39C'
            } else if $in < 1day {
                '#D2C08D'
            } else if $in < 3day {
                '#AECC9E'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#8FCBE3'
            } else if $in < 52wk {
                '#AFBFEF'
            } else { '#D2B4E1'}
        }

        filesize: {|e|
            if $e == 0b {
                '#C1BED0'
            } else if $e < 1mb {
                '#8ED0C2'
            } else {{ fg: '#DEDFD7' attr: 'b' }}
        }

        shape_and: { fg: '#8ED0C2' attr: 'b' }
        shape_binary: { fg: '#D2B4E1' attr: 'b' }
        shape_block: { fg: '#8ED0C2' attr: 'b' }
        shape_bool: '#D2C08D'
        shape_closure: { fg: '#AFBFEF' attr: 'b' }
        shape_custom: '#D2B4E1'
        shape_datetime: { fg: '#D2C08D' attr: 'b' }
        shape_directory: '#AFBFEF'
        shape_external: '#AECC9E'
        shape_external_resolved: '#AECC9E'
        shape_externalarg: { fg: '#D2C08D' attr: 'b' }
        shape_filepath: '#AFBFEF'
        shape_flag: { fg: '#E8AFBF' attr: 'b' }
        shape_float: { fg: '#D2C08D' attr: 'b' }
        shape_garbage: { fg: '#D4D2E4' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#8ED0C2' attr: 'b' }
        shape_globpattern: { fg: '#8ED0C2' attr: 'b' }
        shape_int: { fg: '#D2C08D' attr: 'b' }
        shape_internalcall: { fg: '#8ED0C2' attr: 'b' }
        shape_keyword: { fg: '#E8AFBF' attr: 'b' }
        shape_list: { fg: '#8FCBE3' attr: 'b' }
        shape_literal: '#D2C08D'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#E8AFBF'
        shape_operator: '#AFBFEF'
        shape_or: { fg: '#8ED0C2' attr: 'b' }
        shape_pipe: { fg: '#AFBFEF' attr: 'b' }
        shape_range: { fg: '#8ED0C2' attr: 'b' }
        shape_raw_string: { fg: '#D4D6C4' attr: 'b' }
        shape_record: { fg: '#8FCBE3' attr: 'b' }
        shape_redirection: { fg: '#8FCBE3' attr: 'b' }
        shape_signature: { fg: '#E8B39C' attr: 'b' }
        shape_string: '#AECC9E'
        shape_string_interpolation: { fg: '#8ED0C2' attr: 'b' }
        shape_table: { fg: '#8FCBE3' attr: 'b' }
        shape_vardecl: { fg: '#AFBFEF' attr: 'u' }
        shape_variable: '#E8B39C'

        foreground: '#D4D6C4'
        background: '#363248'
        cursor: '#C1C3B1'

        empty: '#AFBFEF'
        header: { fg: '#AECC9E' attr: 'b' }
        hints: '#C1C3B1'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#CACCBA' attr: 'b' }
        search_result: { fg: '#E8B39C' bg: '#45472E' }
        separator: '#DEDDE4'
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
