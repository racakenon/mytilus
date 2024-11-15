# Retrieve the theme settings
export def main [] {
    return {
        binary: '#D1AFE2'
        block: '#82CFC0'
        cell-path: '#BEC0AA'
        closure: '#A9BCF2'
        custom: '#D1AFE2'
        duration: '#82CFC0'
        float: '#D2BC82'
        glob: '#82CFC0'
        int: '#D2BC82'
        list: '#84C9E5'
        nothing: '#EAA9BB'
        range: '#82CFC0'
        record: '#84C9E5'
        string: '#A8CA96'

        bool: {|| if $in { '#82CFC0' } else { "#EAA9BB" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#EAA9BB'
            } else if $in < 6hr {
                '#EAAE93'
            } else if $in < 1day {
                '#D2BC82'
            } else if $in < 3day {
                '#A8CA96'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#84C9E5'
            } else if $in < 52wk {
                '#A9BCF2'
            } else { '#D1AFE2'}
        }

        filesize: {|e|
            if $e == 0b {
                '#BEBBD0'
            } else if $e < 1mb {
                '#82CFC0'
            } else {{ fg: '#EEF1DA' attr: 'b' }}
        }

        shape_and: { fg: '#82CFC0' attr: 'b' }
        shape_binary: { fg: '#D1AFE2' attr: 'b' }
        shape_block: { fg: '#82CFC0' attr: 'b' }
        shape_bool: '#D2BC82'
        shape_closure: { fg: '#A9BCF2' attr: 'b' }
        shape_custom: '#D1AFE2'
        shape_datetime: { fg: '#D2BC82' attr: 'b' }
        shape_directory: '#A9BCF2'
        shape_external: '#A8CA96'
        shape_external_resolved: '#A8CA96'
        shape_externalarg: { fg: '#D2BC82' attr: 'b' }
        shape_filepath: '#A9BCF2'
        shape_flag: { fg: '#EAA9BB' attr: 'b' }
        shape_float: { fg: '#D2BC82' attr: 'b' }
        shape_garbage: { fg: '#DEDBF1' bg: '#794153' attr: 'b' }
        shape_glob_interpolation: { fg: '#82CFC0' attr: 'b' }
        shape_globpattern: { fg: '#82CFC0' attr: 'b' }
        shape_int: { fg: '#D2BC82' attr: 'b' }
        shape_internalcall: { fg: '#82CFC0' attr: 'b' }
        shape_keyword: { fg: '#EAA9BB' attr: 'b' }
        shape_list: { fg: '#84C9E5' attr: 'b' }
        shape_literal: '#D2BC82'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#EAA9BB'
        shape_operator: '#A9BCF2'
        shape_or: { fg: '#82CFC0' attr: 'b' }
        shape_pipe: { fg: '#A9BCF2' attr: 'b' }
        shape_range: { fg: '#82CFC0' attr: 'b' }
        shape_raw_string: { fg: '#DEE0CA' attr: 'b' }
        shape_record: { fg: '#84C9E5' attr: 'b' }
        shape_redirection: { fg: '#84C9E5' attr: 'b' }
        shape_signature: { fg: '#EAAE93' attr: 'b' }
        shape_string: '#A8CA96'
        shape_string_interpolation: { fg: '#82CFC0' attr: 'b' }
        shape_table: { fg: '#84C9E5' attr: 'b' }
        shape_vardecl: { fg: '#A9BCF2' attr: 'u' }
        shape_variable: '#EAAE93'

        foreground: '#DEE0CA'
        background: '#3B3849'
        cursor: '#BEC0AA'

        empty: '#A9BCF2'
        header: { fg: '#A8CA96' attr: 'b' }
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
