# Retrieve the theme settings
export def main [] {
    return {
        binary: '#DFBBEF'
        block: '#8FDCCC'
        cell-path: '#CACDB7'
        closure: '#B6C9FF'
        custom: '#DFBBEF'
        duration: '#8FDCCC'
        float: '#DFC98E'
        glob: '#8FDCCC'
        int: '#DFC98E'
        list: '#90D6F2'
        nothing: '#F7B5C8'
        range: '#8FDCCC'
        record: '#90D6F2'
        string: '#B4D7A2'

        bool: {|| if $in { '#8FDCCC' } else { "#F7B5C8" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#F7B5C8'
            } else if $in < 6hr {
                '#F8BBA0'
            } else if $in < 1day {
                '#DFC98E'
            } else if $in < 3day {
                '#B4D7A2'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#90D6F2'
            } else if $in < 52wk {
                '#B6C9FF'
            } else { '#DFBBEF'}
        }

        filesize: {|e|
            if $e == 0b {
                '#CBC7DD'
            } else if $e < 1mb {
                '#8FDCCC'
            } else {{ fg: '#E8EAD4' attr: 'b' }}
        }

        shape_and: { fg: '#8FDCCC' attr: 'b' }
        shape_binary: { fg: '#DFBBEF' attr: 'b' }
        shape_block: { fg: '#8FDCCC' attr: 'b' }
        shape_bool: '#DFC98E'
        shape_closure: { fg: '#B6C9FF' attr: 'b' }
        shape_custom: '#DFBBEF'
        shape_datetime: { fg: '#DFC98E' attr: 'b' }
        shape_directory: '#B6C9FF'
        shape_external: '#B4D7A2'
        shape_external_resolved: '#B4D7A2'
        shape_externalarg: { fg: '#DFC98E' attr: 'b' }
        shape_filepath: '#B6C9FF'
        shape_flag: { fg: '#F7B5C8' attr: 'b' }
        shape_float: { fg: '#DFC98E' attr: 'b' }
        shape_garbage: { fg: '#DEDBF1' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#8FDCCC' attr: 'b' }
        shape_globpattern: { fg: '#8FDCCC' attr: 'b' }
        shape_int: { fg: '#DFC98E' attr: 'b' }
        shape_internalcall: { fg: '#8FDCCC' attr: 'b' }
        shape_keyword: { fg: '#F7B5C8' attr: 'b' }
        shape_list: { fg: '#90D6F2' attr: 'b' }
        shape_literal: '#DFC98E'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#F7B5C8'
        shape_operator: '#B6C9FF'
        shape_or: { fg: '#8FDCCC' attr: 'b' }
        shape_pipe: { fg: '#B6C9FF' attr: 'b' }
        shape_range: { fg: '#8FDCCC' attr: 'b' }
        shape_raw_string: { fg: '#DEE0CA' attr: 'b' }
        shape_record: { fg: '#90D6F2' attr: 'b' }
        shape_redirection: { fg: '#90D6F2' attr: 'b' }
        shape_signature: { fg: '#F8BBA0' attr: 'b' }
        shape_string: '#B4D7A2'
        shape_string_interpolation: { fg: '#8FDCCC' attr: 'b' }
        shape_table: { fg: '#90D6F2' attr: 'b' }
        shape_vardecl: { fg: '#B6C9FF' attr: 'u' }
        shape_variable: '#F8BBA0'

        foreground: '#DEE0CA'
        background: '#3D3A4C'
        cursor: '#CACDB7'

        empty: '#B6C9FF'
        header: { fg: '#B4D7A2' attr: 'b' }
        hints: '#CACDB7'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#D4D7C0' attr: 'b' }
        search_result: { fg: '#F8BBA0' bg: '#4D4F3C' }
        separator: '#E8E5FB'
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
