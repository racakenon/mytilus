# Retrieve the theme settings
export def main [] {
    return {
        binary: '#653F53'
        block: '#035956'
        cell-path: '#4D4C55'
        closure: '#4E4869'
        custom: '#653F53'
        duration: '#035956'
        float: '#4E510F'
        glob: '#035956'
        int: '#4E510F'
        list: '#2A526A'
        nothing: '#6F3E32'
        range: '#035956'
        record: '#2A526A'
        string: '#285934'

        bool: {|| if $in { '#035956' } else { "#6F3E32" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#6F3E32'
            } else if $in < 6hr {
                '#67460E'
            } else if $in < 1day {
                '#4E510F'
            } else if $in < 3day {
                '#285934'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#2A526A'
            } else if $in < 52wk {
                '#4E4869'
            } else { '#653F53'}
        }

        filesize: {|e|
            if $e == 0b {
                '#4D4E45'
            } else if $e < 1mb {
                '#035956'
            } else {{ fg: '#2E2D35' attr: 'b' }}
        }

        shape_and: { fg: '#035956' attr: 'b' }
        shape_binary: { fg: '#653F53' attr: 'b' }
        shape_block: { fg: '#035956' attr: 'b' }
        shape_bool: '#4E510F'
        shape_closure: { fg: '#4E4869' attr: 'b' }
        shape_custom: '#653F53'
        shape_datetime: { fg: '#4E510F' attr: 'b' }
        shape_directory: '#4E4869'
        shape_external: '#285934'
        shape_external_resolved: '#285934'
        shape_externalarg: { fg: '#4E510F' attr: 'b' }
        shape_filepath: '#4E4869'
        shape_flag: { fg: '#6F3E32' attr: 'b' }
        shape_float: { fg: '#4E510F' attr: 'b' }
        shape_garbage: { fg: '#383930' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#035956' attr: 'b' }
        shape_globpattern: { fg: '#035956' attr: 'b' }
        shape_int: { fg: '#4E510F' attr: 'b' }
        shape_internalcall: { fg: '#035956' attr: 'b' }
        shape_keyword: { fg: '#6F3E32' attr: 'b' }
        shape_list: { fg: '#2A526A' attr: 'b' }
        shape_literal: '#4E510F'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#6F3E32'
        shape_operator: '#4E4869'
        shape_or: { fg: '#035956' attr: 'b' }
        shape_pipe: { fg: '#4E4869' attr: 'b' }
        shape_range: { fg: '#035956' attr: 'b' }
        shape_raw_string: { fg: '#38373F' attr: 'b' }
        shape_record: { fg: '#2A526A' attr: 'b' }
        shape_redirection: { fg: '#2A526A' attr: 'b' }
        shape_signature: { fg: '#67460E' attr: 'b' }
        shape_string: '#285934'
        shape_string_interpolation: { fg: '#035956' attr: 'b' }
        shape_table: { fg: '#2A526A' attr: 'b' }
        shape_vardecl: { fg: '#4E4869' attr: 'u' }
        shape_variable: '#67460E'

        foreground: '#38373F'
        background: '#E1E2D7'
        cursor: '#4D4C55'

        empty: '#4E4869'
        header: { fg: '#285934' attr: 'b' }
        hints: '#4D4C55'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#42414A' attr: 'b' }
        search_result: { fg: '#67460E' bg: '#C7C6D0' }
        separator: '#2E2F26'
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
