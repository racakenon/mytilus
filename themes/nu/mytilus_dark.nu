# Retrieve the theme settings
export def main [] {
    return {
        binary: '#DFB2C8'
        block: '#89D0CB'
        cell-path: '#C1BFCA'
        closure: '#C1BBE2'
        custom: '#DFB2C8'
        duration: '#89D0CB'
        float: '#C1C787'
        glob: '#89D0CB'
        int: '#C1C787'
        list: '#9DC7E4'
        nothing: '#EBB1A2'
        range: '#89D0CB'
        record: '#9DC7E4'
        string: '#9CD0A5'

        bool: {|| if $in { '#89D0CB' } else { "#EBB1A2" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#EBB1A2'
            } else if $in < 6hr {
                '#E0BA85'
            } else if $in < 1day {
                '#C1C787'
            } else if $in < 3day {
                '#9CD0A5'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#9DC7E4'
            } else if $in < 52wk {
                '#C1BBE2'
            } else { '#DFB2C8'}
        }

        filesize: {|e|
            if $e == 0b {
                '#C1C2B7'
            } else if $e < 1mb {
                '#89D0CB'
            } else {{ fg: '#E8E6F1' attr: 'b' }}
        }

        shape_and: { fg: '#89D0CB' attr: 'b' }
        shape_binary: { fg: '#DFB2C8' attr: 'b' }
        shape_block: { fg: '#89D0CB' attr: 'b' }
        shape_bool: '#C1C787'
        shape_closure: { fg: '#C1BBE2' attr: 'b' }
        shape_custom: '#DFB2C8'
        shape_datetime: { fg: '#C1C787' attr: 'b' }
        shape_directory: '#C1BBE2'
        shape_external: '#9CD0A5'
        shape_external_resolved: '#9CD0A5'
        shape_externalarg: { fg: '#C1C787' attr: 'b' }
        shape_filepath: '#C1BBE2'
        shape_flag: { fg: '#EBB1A2' attr: 'b' }
        shape_float: { fg: '#C1C787' attr: 'b' }
        shape_garbage: { fg: '#DBDCD1' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#89D0CB' attr: 'b' }
        shape_globpattern: { fg: '#89D0CB' attr: 'b' }
        shape_int: { fg: '#C1C787' attr: 'b' }
        shape_internalcall: { fg: '#89D0CB' attr: 'b' }
        shape_keyword: { fg: '#EBB1A2' attr: 'b' }
        shape_list: { fg: '#9DC7E4' attr: 'b' }
        shape_literal: '#C1C787'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#EBB1A2'
        shape_operator: '#C1BBE2'
        shape_or: { fg: '#89D0CB' attr: 'b' }
        shape_pipe: { fg: '#C1BBE2' attr: 'b' }
        shape_range: { fg: '#89D0CB' attr: 'b' }
        shape_raw_string: { fg: '#DBD9E4' attr: 'b' }
        shape_record: { fg: '#9DC7E4' attr: 'b' }
        shape_redirection: { fg: '#9DC7E4' attr: 'b' }
        shape_signature: { fg: '#E0BA85' attr: 'b' }
        shape_string: '#9CD0A5'
        shape_string_interpolation: { fg: '#89D0CB' attr: 'b' }
        shape_table: { fg: '#9DC7E4' attr: 'b' }
        shape_vardecl: { fg: '#C1BBE2' attr: 'u' }
        shape_variable: '#E0BA85'

        foreground: '#DBD9E4'
        background: '#33342B'
        cursor: '#C1BFCA'

        empty: '#C1BBE2'
        header: { fg: '#9CD0A5' attr: 'b' }
        hints: '#C1BFCA'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#CECCD7' attr: 'b' }
        search_result: { fg: '#E0BA85' bg: '#4A4952' }
        separator: '#E8E9DE'
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
