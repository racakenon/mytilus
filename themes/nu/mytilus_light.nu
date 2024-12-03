# Retrieve the theme settings
export def main [] {
    return {
        binary: '#5E4663'
        block: '#155D49'
        cell-path: '#504E57'
        closure: '#404F6F'
        custom: '#5E4663'
        duration: '#155D49'
        float: '#5F4E09'
        glob: '#155D49'
        int: '#5F4E09'
        list: '#185965'
        nothing: '#6F4046'
        range: '#155D49'
        record: '#185965'
        string: '#3F5925'

        bool: {|| if $in { '#155D49' } else { "#6F4046" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#6F4046'
            } else if $in < 6hr {
                '#704423'
            } else if $in < 1day {
                '#5F4E09'
            } else if $in < 3day {
                '#3F5925'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#185965'
            } else if $in < 52wk {
                '#404F6F'
            } else { '#5E4663'}
        }

        filesize: {|e|
            if $e == 0b {
                '#505147'
            } else if $e < 1mb {
                '#155D49'
            } else {{ fg: '#39363F' attr: 'b' }}
        }

        shape_and: { fg: '#155D49' attr: 'b' }
        shape_binary: { fg: '#5E4663' attr: 'b' }
        shape_block: { fg: '#155D49' attr: 'b' }
        shape_bool: '#5F4E09'
        shape_closure: { fg: '#404F6F' attr: 'b' }
        shape_custom: '#5E4663'
        shape_datetime: { fg: '#5F4E09' attr: 'b' }
        shape_directory: '#404F6F'
        shape_external: '#3F5925'
        shape_external_resolved: '#3F5925'
        shape_externalarg: { fg: '#5F4E09' attr: 'b' }
        shape_filepath: '#404F6F'
        shape_flag: { fg: '#6F4046' attr: 'b' }
        shape_float: { fg: '#5F4E09' attr: 'b' }
        shape_garbage: { fg: '#404138' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#155D49' attr: 'b' }
        shape_globpattern: { fg: '#155D49' attr: 'b' }
        shape_int: { fg: '#5F4E09' attr: 'b' }
        shape_internalcall: { fg: '#155D49' attr: 'b' }
        shape_keyword: { fg: '#6F4046' attr: 'b' }
        shape_list: { fg: '#185965' attr: 'b' }
        shape_literal: '#5F4E09'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#6F4046'
        shape_operator: '#404F6F'
        shape_or: { fg: '#155D49' attr: 'b' }
        shape_pipe: { fg: '#404F6F' attr: 'b' }
        shape_range: { fg: '#155D49' attr: 'b' }
        shape_raw_string: { fg: '#403E47' attr: 'b' }
        shape_record: { fg: '#185965' attr: 'b' }
        shape_redirection: { fg: '#185965' attr: 'b' }
        shape_signature: { fg: '#704423' attr: 'b' }
        shape_string: '#3F5925'
        shape_string_interpolation: { fg: '#155D49' attr: 'b' }
        shape_table: { fg: '#185965' attr: 'b' }
        shape_vardecl: { fg: '#404F6F' attr: 'u' }
        shape_variable: '#704423'

        foreground: '#403E47'
        background: '#E8E9DE'
        cursor: '#504E57'

        empty: '#404F6F'
        header: { fg: '#3F5925' attr: 'b' }
        hints: '#504E57'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#48464F' attr: 'b' }
        search_result: { fg: '#704423' bg: '#CFCCD7' }
        separator: '#383930'
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
