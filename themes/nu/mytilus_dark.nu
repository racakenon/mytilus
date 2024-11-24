# Retrieve the theme settings
export def main [] {
    return {
        binary: '#DDBCED'
        block: '#93DBCC'
        cell-path: '#CACCC1'
        closure: '#B7C9FC'
        custom: '#DDBCED'
        duration: '#93DBCC'
        float: '#DDC992'
        glob: '#93DBCC'
        int: '#DDC992'
        list: '#95D6F0'
        nothing: '#F5B7C8'
        range: '#93DBCC'
        record: '#95D6F0'
        string: '#B6D6A5'

        bool: {|| if $in { '#93DBCC' } else { "#F5B7C8" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#F5B7C8'
            } else if $in < 6hr {
                '#F5BCA2'
            } else if $in < 1day {
                '#DDC992'
            } else if $in < 3day {
                '#B6D6A5'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#95D6F0'
            } else if $in < 52wk {
                '#B7C9FC'
            } else { '#DDBCED'}
        }

        filesize: {|e|
            if $e == 0b {
                '#CAC9D4'
            } else if $e < 1mb {
                '#93DBCC'
            } else {{ fg: '#E1E2D7' attr: 'b' }}
        }

        shape_and: { fg: '#93DBCC' attr: 'b' }
        shape_binary: { fg: '#DDBCED' attr: 'b' }
        shape_block: { fg: '#93DBCC' attr: 'b' }
        shape_bool: '#DDC992'
        shape_closure: { fg: '#B7C9FC' attr: 'b' }
        shape_custom: '#DDBCED'
        shape_datetime: { fg: '#DDC992' attr: 'b' }
        shape_directory: '#B7C9FC'
        shape_external: '#B6D6A5'
        shape_external_resolved: '#B6D6A5'
        shape_externalarg: { fg: '#DDC992' attr: 'b' }
        shape_filepath: '#B7C9FC'
        shape_flag: { fg: '#F5B7C8' attr: 'b' }
        shape_float: { fg: '#DDC992' attr: 'b' }
        shape_garbage: { fg: '#D4D3DE' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#93DBCC' attr: 'b' }
        shape_globpattern: { fg: '#93DBCC' attr: 'b' }
        shape_int: { fg: '#DDC992' attr: 'b' }
        shape_internalcall: { fg: '#93DBCC' attr: 'b' }
        shape_keyword: { fg: '#F5B7C8' attr: 'b' }
        shape_list: { fg: '#95D6F0' attr: 'b' }
        shape_literal: '#DDC992'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#F5B7C8'
        shape_operator: '#B7C9FC'
        shape_or: { fg: '#93DBCC' attr: 'b' }
        shape_pipe: { fg: '#B7C9FC' attr: 'b' }
        shape_range: { fg: '#93DBCC' attr: 'b' }
        shape_raw_string: { fg: '#D4D5CA' attr: 'b' }
        shape_record: { fg: '#95D6F0' attr: 'b' }
        shape_redirection: { fg: '#95D6F0' attr: 'b' }
        shape_signature: { fg: '#F5BCA2' attr: 'b' }
        shape_string: '#B6D6A5'
        shape_string_interpolation: { fg: '#93DBCC' attr: 'b' }
        shape_table: { fg: '#95D6F0' attr: 'b' }
        shape_vardecl: { fg: '#B7C9FC' attr: 'u' }
        shape_variable: '#F5BCA2'

        foreground: '#D4D5CA'
        background: '#363344'
        cursor: '#CACCC1'

        empty: '#B7C9FC'
        header: { fg: '#B6D6A5' attr: 'b' }
        hints: '#CACCC1'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#CECFC4' attr: 'b' }
        search_result: { fg: '#F5BCA2' bg: '#525441' }
        separator: '#E1E0EB'
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
