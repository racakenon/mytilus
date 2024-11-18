# Retrieve the theme settings
export def main [] {
    return {
        binary: '$(d3_magenta)'
        block: '$(d3_mint)'
        cell-path: '#BEC0AA'
        closure: '#A9BCF2'
        custom: '$(d3_magenta)'
        duration: '$(d3_mint)'
        float: '#D2BC82'
        glob: '$(d3_mint)'
        int: '#D2BC82'
        list: '#84C9E5'
        nothing: '#EAA9BB'
        range: '$(d3_mint)'
        record: '#84C9E5'
        string: '#82CFC0'

        bool: {|| if $in { '$(d3_mint)' } else { "#EAA9BB" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#EAA9BB'
            } else if $in < 6hr {
                '#EAAE93'
            } else if $in < 1day {
                '#D2BC82'
            } else if $in < 3day {
                '#82CFC0'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#84C9E5'
            } else if $in < 52wk {
                '#A9BCF2'
            } else { '$(d3_magenta)'}
        }

        filesize: {|e|
            if $e == 0b {
                '#BEBBD0'
            } else if $e < 1mb {
                '$(d3_mint)'
            } else {{ fg: '#EEF1DA' attr: 'b' }}
        }

        shape_and: { fg: '$(d3_mint)' attr: 'b' }
        shape_binary: { fg: '$(d3_magenta)' attr: 'b' }
        shape_block: { fg: '$(d3_mint)' attr: 'b' }
        shape_bool: '#D2BC82'
        shape_closure: { fg: '#A9BCF2' attr: 'b' }
        shape_custom: '$(d3_magenta)'
        shape_datetime: { fg: '#D2BC82' attr: 'b' }
        shape_directory: '#A9BCF2'
        shape_external: '#82CFC0'
        shape_external_resolved: '#82CFC0'
        shape_externalarg: { fg: '#D2BC82' attr: 'b' }
        shape_filepath: '#A9BCF2'
        shape_flag: { fg: '#EAA9BB' attr: 'b' }
        shape_float: { fg: '#D2BC82' attr: 'b' }
        shape_garbage: { fg: '#DEDBF1' bg: '#794153' attr: 'b' }
        shape_glob_interpolation: { fg: '$(d3_mint)' attr: 'b' }
        shape_globpattern: { fg: '$(d3_mint)' attr: 'b' }
        shape_int: { fg: '#D2BC82' attr: 'b' }
        shape_internalcall: { fg: '$(d3_mint)' attr: 'b' }
        shape_keyword: { fg: '#EAA9BB' attr: 'b' }
        shape_list: { fg: '#84C9E5' attr: 'b' }
        shape_literal: '#D2BC82'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#EAA9BB'
        shape_operator: '#A9BCF2'
        shape_or: { fg: '$(d3_mint)' attr: 'b' }
        shape_pipe: { fg: '#A9BCF2' attr: 'b' }
        shape_range: { fg: '$(d3_mint)' attr: 'b' }
        shape_raw_string: { fg: '#DEE0CA' attr: 'b' }
        shape_record: { fg: '#84C9E5' attr: 'b' }
        shape_redirection: { fg: '#84C9E5' attr: 'b' }
        shape_signature: { fg: '#EAAE93' attr: 'b' }
        shape_string: '#82CFC0'
        shape_string_interpolation: { fg: '$(d3_mint)' attr: 'b' }
        shape_table: { fg: '#84C9E5' attr: 'b' }
        shape_vardecl: { fg: '#A9BCF2' attr: 'u' }
        shape_variable: '#EAAE93'

        foreground: '#DEE0CA'
        background: '#3B3849'
        cursor: '#BEC0AA'

        empty: '#A9BCF2'
        header: { fg: '#82CFC0' attr: 'b' }
        hints: '#BEC0AA'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#CED0BA' attr: 'b' }
        search_result: { fg: '#EAAE93' bg: '#555744' }
        separator: '#EFEBFF'
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
