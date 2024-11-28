# Retrieve the theme settings
export def main [] {
    return {
        binary: '#62296B'
        block: '#154F4D'
        cell-path: '#3E4842'
        closure: '#43397A'
        custom: '#62296B'
        duration: '#154F4D'
        float: '#633B02'
        glob: '#154F4D'
        int: '#633B02'
        list: '#1B486E'
        nothing: '#742049'
        range: '#154F4D'
        record: '#1B486E'
        string: '#404A23'

        bool: {|| if $in { '#154F4D' } else { "#742049" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#742049'
            } else if $in < 6hr {
                '#752821'
            } else if $in < 1day {
                '#633B02'
            } else if $in < 3day {
                '#404A23'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#1B486E'
            } else if $in < 52wk {
                '#43397A'
            } else { '#62296B'}
        }

        filesize: {|e|
            if $e == 0b {
                '#4B4247'
            } else if $e < 1mb {
                '#154F4D'
            } else {{ fg: '#202924' attr: 'b' }}
        }

        shape_and: { fg: '#154F4D' attr: 'b' }
        shape_binary: { fg: '#62296B' attr: 'b' }
        shape_block: { fg: '#154F4D' attr: 'b' }
        shape_bool: '#633B02'
        shape_closure: { fg: '#43397A' attr: 'b' }
        shape_custom: '#62296B'
        shape_datetime: { fg: '#633B02' attr: 'b' }
        shape_directory: '#43397A'
        shape_external: '#404A23'
        shape_external_resolved: '#404A23'
        shape_externalarg: { fg: '#633B02' attr: 'b' }
        shape_filepath: '#43397A'
        shape_flag: { fg: '#742049' attr: 'b' }
        shape_float: { fg: '#633B02' attr: 'b' }
        shape_garbage: { fg: '#362D33' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#154F4D' attr: 'b' }
        shape_globpattern: { fg: '#154F4D' attr: 'b' }
        shape_int: { fg: '#633B02' attr: 'b' }
        shape_internalcall: { fg: '#154F4D' attr: 'b' }
        shape_keyword: { fg: '#742049' attr: 'b' }
        shape_list: { fg: '#1B486E' attr: 'b' }
        shape_literal: '#633B02'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#742049'
        shape_operator: '#43397A'
        shape_or: { fg: '#154F4D' attr: 'b' }
        shape_pipe: { fg: '#43397A' attr: 'b' }
        shape_range: { fg: '#154F4D' attr: 'b' }
        shape_raw_string: { fg: '#2A332E' attr: 'b' }
        shape_record: { fg: '#1B486E' attr: 'b' }
        shape_redirection: { fg: '#1B486E' attr: 'b' }
        shape_signature: { fg: '#752821' attr: 'b' }
        shape_string: '#404A23'
        shape_string_interpolation: { fg: '#154F4D' attr: 'b' }
        shape_table: { fg: '#1B486E' attr: 'b' }
        shape_vardecl: { fg: '#43397A' attr: 'u' }
        shape_variable: '#752821'

        foreground: '#2A332E'
        background: '#E5CCDB'
        cursor: '#3E4842'

        empty: '#43397A'
        header: { fg: '#404A23' attr: 'b' }
        hints: '#3E4842'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#343D38' attr: 'b' }
        search_result: { fg: '#752821' bg: '#A8C2B3' }
        separator: '#2C2429'
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
