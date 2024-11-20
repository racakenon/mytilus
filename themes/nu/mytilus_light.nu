# Retrieve the theme settings
export def main [] {
    return {
        binary: '#5D3F6B'
        block: '#005B4F'
        cell-path: '#4D4A5C'
        closure: '#3C4A79'
        custom: '#5D3F6B'
        duration: '#005B4F'
        float: '#5E4B0C'
        glob: '#005B4F'
        int: '#5E4B0C'
        list: '#00566E'
        nothing: '#70394B'
        range: '#005B4F'
        record: '#00566E'
        string: '#395728'

        bool: {|| if $in { '#005B4F' } else { "#70394B" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#70394B'
            } else if $in < 6hr {
                '#713E26'
            } else if $in < 1day {
                '#5E4B0C'
            } else if $in < 3day {
                '#395728'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#00566E'
            } else if $in < 52wk {
                '#3C4A79'
            } else { '#5D3F6B'}
        }

        filesize: {|e|
            if $e == 0b {
                '#4D4F3C'
            } else if $e < 1mb {
                '#005B4F'
            } else {{ fg: '#363344' attr: 'b' }}
        }

        shape_and: { fg: '#005B4F' attr: 'b' }
        shape_binary: { fg: '#5D3F6B' attr: 'b' }
        shape_block: { fg: '#005B4F' attr: 'b' }
        shape_bool: '#5E4B0C'
        shape_closure: { fg: '#3C4A79' attr: 'b' }
        shape_custom: '#5D3F6B'
        shape_datetime: { fg: '#5E4B0C' attr: 'b' }
        shape_directory: '#3C4A79'
        shape_external: '#395728'
        shape_external_resolved: '#395728'
        shape_externalarg: { fg: '#5E4B0C' attr: 'b' }
        shape_filepath: '#3C4A79'
        shape_flag: { fg: '#70394B' attr: 'b' }
        shape_float: { fg: '#5E4B0C' attr: 'b' }
        shape_garbage: { fg: '#3D3F2D' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#005B4F' attr: 'b' }
        shape_globpattern: { fg: '#005B4F' attr: 'b' }
        shape_int: { fg: '#5E4B0C' attr: 'b' }
        shape_internalcall: { fg: '#005B4F' attr: 'b' }
        shape_keyword: { fg: '#70394B' attr: 'b' }
        shape_list: { fg: '#00566E' attr: 'b' }
        shape_literal: '#5E4B0C'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#70394B'
        shape_operator: '#3C4A79'
        shape_or: { fg: '#005B4F' attr: 'b' }
        shape_pipe: { fg: '#3C4A79' attr: 'b' }
        shape_range: { fg: '#005B4F' attr: 'b' }
        shape_raw_string: { fg: '#3D3A4C' attr: 'b' }
        shape_record: { fg: '#00566E' attr: 'b' }
        shape_redirection: { fg: '#00566E' attr: 'b' }
        shape_signature: { fg: '#713E26' attr: 'b' }
        shape_string: '#395728'
        shape_string_interpolation: { fg: '#005B4F' attr: 'b' }
        shape_table: { fg: '#00566E' attr: 'b' }
        shape_vardecl: { fg: '#3C4A79' attr: 'u' }
        shape_variable: '#713E26'

        foreground: '#3D3A4C'
        background: '#DEE0CA'
        cursor: '#4D4A5C'

        empty: '#3C4A79'
        header: { fg: '#395728' attr: 'b' }
        hints: '#4D4A5C'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#454254' attr: 'b' }
        search_result: { fg: '#713E26' bg: '#CBC7DD' }
        separator: '#353725'
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
