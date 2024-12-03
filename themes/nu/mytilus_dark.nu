# Retrieve the theme settings
export def main [] {
    return {
        binary: '#D9BCDE'
        block: '#94D8BF'
        cell-path: '#C8C5D0'
        closure: '#B5C8ED'
        custom: '#D9BCDE'
        duration: '#94D8BF'
        float: '#D9C788'
        glob: '#94D8BF'
        int: '#D9C788'
        list: '#95D3E1'
        nothing: '#EFB6BC'
        range: '#94D8BF'
        record: '#95D3E1'
        string: '#B4D39A'

        bool: {|| if $in { '#94D8BF' } else { "#EFB6BC" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#EFB6BC'
            } else if $in < 6hr {
                '#EFBB97'
            } else if $in < 1day {
                '#D9C788'
            } else if $in < 3day {
                '#B4D39A'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#95D3E1'
            } else if $in < 52wk {
                '#B5C8ED'
            } else { '#D9BCDE'}
        }

        filesize: {|e|
            if $e == 0b {
                '#C7C8BD'
            } else if $e < 1mb {
                '#94D8BF'
            } else {{ fg: '#E5E3EE' attr: 'b' }}
        }

        shape_and: { fg: '#94D8BF' attr: 'b' }
        shape_binary: { fg: '#D9BCDE' attr: 'b' }
        shape_block: { fg: '#94D8BF' attr: 'b' }
        shape_bool: '#D9C788'
        shape_closure: { fg: '#B5C8ED' attr: 'b' }
        shape_custom: '#D9BCDE'
        shape_datetime: { fg: '#D9C788' attr: 'b' }
        shape_directory: '#B5C8ED'
        shape_external: '#B4D39A'
        shape_external_resolved: '#B4D39A'
        shape_externalarg: { fg: '#D9C788' attr: 'b' }
        shape_filepath: '#B5C8ED'
        shape_flag: { fg: '#EFB6BC' attr: 'b' }
        shape_float: { fg: '#D9C788' attr: 'b' }
        shape_garbage: { fg: '#DBDCD1' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#94D8BF' attr: 'b' }
        shape_globpattern: { fg: '#94D8BF' attr: 'b' }
        shape_int: { fg: '#D9C788' attr: 'b' }
        shape_internalcall: { fg: '#94D8BF' attr: 'b' }
        shape_keyword: { fg: '#EFB6BC' attr: 'b' }
        shape_list: { fg: '#95D3E1' attr: 'b' }
        shape_literal: '#D9C788'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#EFB6BC'
        shape_operator: '#B5C8ED'
        shape_or: { fg: '#94D8BF' attr: 'b' }
        shape_pipe: { fg: '#B5C8ED' attr: 'b' }
        shape_range: { fg: '#94D8BF' attr: 'b' }
        shape_raw_string: { fg: '#DCD9E4' attr: 'b' }
        shape_record: { fg: '#95D3E1' attr: 'b' }
        shape_redirection: { fg: '#95D3E1' attr: 'b' }
        shape_signature: { fg: '#EFBB97' attr: 'b' }
        shape_string: '#B4D39A'
        shape_string_interpolation: { fg: '#94D8BF' attr: 'b' }
        shape_table: { fg: '#95D3E1' attr: 'b' }
        shape_vardecl: { fg: '#B5C8ED' attr: 'u' }
        shape_variable: '#EFBB97'

        foreground: '#DCD9E4'
        background: '#35362E'
        cursor: '#C8C5D0'

        empty: '#B5C8ED'
        header: { fg: '#B4D39A' attr: 'b' }
        hints: '#C8C5D0'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#D2CFDA' attr: 'b' }
        search_result: { fg: '#EFBB97' bg: '#4B4952' }
        separator: '#E4E6DB'
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
