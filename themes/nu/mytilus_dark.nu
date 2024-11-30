# Retrieve the theme settings
export def main [] {
    return {
        binary: '#E3B5CB'
        block: '#8CD3CF'
        cell-path: '#C4C2CD'
        closure: '#C5BEE5'
        custom: '#E3B5CB'
        duration: '#8CD3CF'
        float: '#C4CA8A'
        glob: '#8CD3CF'
        int: '#C4CA8A'
        list: '#A0CBE7'
        nothing: '#EFB4A5'
        range: '#8CD3CF'
        record: '#A0CBE7'
        string: '#9FD3A8'

        bool: {|| if $in { '#8CD3CF' } else { "#EFB4A5" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#EFB4A5'
            } else if $in < 6hr {
                '#E3BD89'
            } else if $in < 1day {
                '#C4CA8A'
            } else if $in < 3day {
                '#9FD3A8'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#A0CBE7'
            } else if $in < 52wk {
                '#C5BEE5'
            } else { '#E3B5CB'}
        }

        filesize: {|e|
            if $e == 0b {
                '#C4C5BA'
            } else if $e < 1mb {
                '#8CD3CF'
            } else {{ fg: '#EBEAF5' attr: 'b' }}
        }

        shape_and: { fg: '#8CD3CF' attr: 'b' }
        shape_binary: { fg: '#E3B5CB' attr: 'b' }
        shape_block: { fg: '#8CD3CF' attr: 'b' }
        shape_bool: '#C4CA8A'
        shape_closure: { fg: '#C5BEE5' attr: 'b' }
        shape_custom: '#E3B5CB'
        shape_datetime: { fg: '#C4CA8A' attr: 'b' }
        shape_directory: '#C5BEE5'
        shape_external: '#9FD3A8'
        shape_external_resolved: '#9FD3A8'
        shape_externalarg: { fg: '#C4CA8A' attr: 'b' }
        shape_filepath: '#C5BEE5'
        shape_flag: { fg: '#EFB4A5' attr: 'b' }
        shape_float: { fg: '#C4CA8A' attr: 'b' }
        shape_garbage: { fg: '#DEDFD4' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#8CD3CF' attr: 'b' }
        shape_globpattern: { fg: '#8CD3CF' attr: 'b' }
        shape_int: { fg: '#C4CA8A' attr: 'b' }
        shape_internalcall: { fg: '#8CD3CF' attr: 'b' }
        shape_keyword: { fg: '#EFB4A5' attr: 'b' }
        shape_list: { fg: '#A0CBE7' attr: 'b' }
        shape_literal: '#C4CA8A'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#EFB4A5'
        shape_operator: '#C5BEE5'
        shape_or: { fg: '#8CD3CF' attr: 'b' }
        shape_pipe: { fg: '#C5BEE5' attr: 'b' }
        shape_range: { fg: '#8CD3CF' attr: 'b' }
        shape_raw_string: { fg: '#DEDCE7' attr: 'b' }
        shape_record: { fg: '#A0CBE7' attr: 'b' }
        shape_redirection: { fg: '#A0CBE7' attr: 'b' }
        shape_signature: { fg: '#E3BD89' attr: 'b' }
        shape_string: '#9FD3A8'
        shape_string_interpolation: { fg: '#8CD3CF' attr: 'b' }
        shape_table: { fg: '#A0CBE7' attr: 'b' }
        shape_vardecl: { fg: '#C5BEE5' attr: 'u' }
        shape_variable: '#E3BD89'

        foreground: '#DEDCE7'
        background: '#35362E'
        cursor: '#C4C2CD'

        empty: '#C5BEE5'
        header: { fg: '#9FD3A8' attr: 'b' }
        hints: '#C4C2CD'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#D1CFDA' attr: 'b' }
        search_result: { fg: '#E3BD89' bg: '#4D4C55' }
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
