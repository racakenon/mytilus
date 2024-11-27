# Retrieve the theme settings
export def main [] {
    return {
        binary: '#613D6A'
        block: '#235751'
        cell-path: '#534A50'
        closure: '#454876'
        custom: '#613D6A'
        duration: '#235751'
        float: '#614820'
        glob: '#235751'
        int: '#614820'
        list: '#26526C'
        nothing: '#70384E'
        range: '#235751'
        record: '#26526C'
        string: '#435332'

        bool: {|| if $in { '#235751' } else { "#70384E" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#70384E'
            } else if $in < 6hr {
                '#713C30'
            } else if $in < 1day {
                '#614820'
            } else if $in < 3day {
                '#435332'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#26526C'
            } else if $in < 52wk {
                '#454876'
            } else { '#613D6A'}
        }

        filesize: {|e|
            if $e == 0b {
                '#47504A'
            } else if $e < 1mb {
                '#235751'
            } else {{ fg: '#3B3338' attr: 'b' }}
        }

        shape_and: { fg: '#235751' attr: 'b' }
        shape_binary: { fg: '#613D6A' attr: 'b' }
        shape_block: { fg: '#235751' attr: 'b' }
        shape_bool: '#614820'
        shape_closure: { fg: '#454876' attr: 'b' }
        shape_custom: '#613D6A'
        shape_datetime: { fg: '#614820' attr: 'b' }
        shape_directory: '#454876'
        shape_external: '#435332'
        shape_external_resolved: '#435332'
        shape_externalarg: { fg: '#614820' attr: 'b' }
        shape_filepath: '#454876'
        shape_flag: { fg: '#70384E' attr: 'b' }
        shape_float: { fg: '#614820' attr: 'b' }
        shape_garbage: { fg: '#37403A' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#235751' attr: 'b' }
        shape_globpattern: { fg: '#235751' attr: 'b' }
        shape_int: { fg: '#614820' attr: 'b' }
        shape_internalcall: { fg: '#235751' attr: 'b' }
        shape_keyword: { fg: '#70384E' attr: 'b' }
        shape_list: { fg: '#26526C' attr: 'b' }
        shape_literal: '#614820'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#70384E'
        shape_operator: '#454876'
        shape_or: { fg: '#235751' attr: 'b' }
        shape_pipe: { fg: '#454876' attr: 'b' }
        shape_range: { fg: '#235751' attr: 'b' }
        shape_raw_string: { fg: '#433A40' attr: 'b' }
        shape_record: { fg: '#26526C' attr: 'b' }
        shape_redirection: { fg: '#26526C' attr: 'b' }
        shape_signature: { fg: '#713C30' attr: 'b' }
        shape_string: '#435332'
        shape_string_interpolation: { fg: '#235751' attr: 'b' }
        shape_table: { fg: '#26526C' attr: 'b' }
        shape_vardecl: { fg: '#454876' attr: 'u' }
        shape_variable: '#713C30'

        foreground: '#433A40'
        background: '#DAE4DD'
        cursor: '#534A50'

        empty: '#454876'
        header: { fg: '#435332' attr: 'b' }
        hints: '#534A50'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#4B4248' attr: 'b' }
        search_result: { fg: '#713C30' bg: '#CEC4CB' }
        separator: '#2F3832'
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
