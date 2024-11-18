# Retrieve the theme settings
export def main [] {
    return {
        binary: '$(d3_purple)'
        block: '$(d3_green)'
        cell-path: '$(d3_black)'
        closure: '$(d3_blue)'
        custom: '$(d3_purple)'
        duration: '$(d3_green)'
        float: '$(d3_yellow)'
        glob: '$(d3_green)'
        int: '$(d3_yellow)'
        list: '$(d3_cyan)'
        nothing: '$(d3_red)'
        range: '$(d3_green)'
        record: '$(d3_cyan)'
        string: '$(d3_chartreuse)'

        bool: {|| if $in { '$(d3_green)' } else { "$(d3_red)" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '$(d3_red)'
            } else if $in < 6hr {
                '$(d3_orange)'
            } else if $in < 1day {
                '$(d3_yellow)'
            } else if $in < 3day {
                '$(d3_chartreuse)'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '$(d3_cyan)'
            } else if $in < 52wk {
                '$(d3_blue)'
            } else { '$(d3_purple)'}
        }

        filesize: {|e|
            if $e == 0b {
                '$(d3_white)'
            } else if $e < 1mb {
                '$(d3_green)'
            } else {{ fg: '$(d0_black)' attr: 'b' }}
        }

        shape_and: { fg: '$(d3_green)' attr: 'b' }
        shape_binary: { fg: '$(d3_purple)' attr: 'b' }
        shape_block: { fg: '$(d3_green)' attr: 'b' }
        shape_bool: '$(d3_yellow)'
        shape_closure: { fg: '$(d3_blue)' attr: 'b' }
        shape_custom: '$(d3_purple)'
        shape_datetime: { fg: '$(d3_yellow)' attr: 'b' }
        shape_directory: '$(d3_blue)'
        shape_external: '$(d3_chartreuse)'
        shape_external_resolved: '$(d3_chartreuse)'
        shape_externalarg: { fg: '$(d3_yellow)' attr: 'b' }
        shape_filepath: '$(d3_blue)'
        shape_flag: { fg: '$(d3_red)' attr: 'b' }
        shape_float: { fg: '$(d3_yellow)' attr: 'b' }
        shape_garbage: { fg: '$(d1_white)' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '$(d3_green)' attr: 'b' }
        shape_globpattern: { fg: '$(d3_green)' attr: 'b' }
        shape_int: { fg: '$(d3_yellow)' attr: 'b' }
        shape_internalcall: { fg: '$(d3_green)' attr: 'b' }
        shape_keyword: { fg: '$(d3_red)' attr: 'b' }
        shape_list: { fg: '$(d3_cyan)' attr: 'b' }
        shape_literal: '$(d3_yellow)'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '$(d3_red)'
        shape_operator: '$(d3_blue)'
        shape_or: { fg: '$(d3_green)' attr: 'b' }
        shape_pipe: { fg: '$(d3_blue)' attr: 'b' }
        shape_range: { fg: '$(d3_green)' attr: 'b' }
        shape_raw_string: { fg: '$(d1_black)' attr: 'b' }
        shape_record: { fg: '$(d3_cyan)' attr: 'b' }
        shape_redirection: { fg: '$(d3_cyan)' attr: 'b' }
        shape_signature: { fg: '$(d3_orange)' attr: 'b' }
        shape_string: '$(d3_chartreuse)'
        shape_string_interpolation: { fg: '$(d3_green)' attr: 'b' }
        shape_table: { fg: '$(d3_cyan)' attr: 'b' }
        shape_vardecl: { fg: '$(d3_blue)' attr: 'u' }
        shape_variable: '$(d3_orange)'

        foreground: '$(d1_black)'
        background: '$(v1_white)'
        cursor: '$(d3_black)'

        empty: '$(d3_blue)'
        header: { fg: '$(d3_chartreuse)' attr: 'b' }
        hints: '$(d3_black)'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '$(d2_black)' attr: 'b' }
        search_result: { fg: '$(d3_orange)' bg: '$(v3_black)' }
        separator: '$(d0_white)'
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
