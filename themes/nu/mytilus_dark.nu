# Retrieve the theme settings
export def main [] {
    return {
        binary: '#DFC1EE'
        block: '#9BDDCF'
        cell-path: '#CECFC1'
        closure: '#BCCCFD'
        custom: '#DFC1EE'
        duration: '#9BDDCF'
        float: '#DFCC99'
        glob: '#9BDDCF'
        int: '#DFCC99'
        list: '#9CD8F0'
        nothing: '#F5BBCC'
        range: '#9BDDCF'
        record: '#9CD8F0'
        string: '#BAD9AB'

        bool: {|| if $in { '#9BDDCF' } else { "#F5BBCC" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#F5BBCC'
            } else if $in < 6hr {
                '#F6C0A8'
            } else if $in < 1day {
                '#DFCC99'
            } else if $in < 3day {
                '#BAD9AB'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#9CD8F0'
            } else if $in < 52wk {
                '#BCCCFD'
            } else { '#DFC1EE'}
        }

        filesize: {|e|
            if $e == 0b {
                '#CECCDA'
            } else if $e < 1mb {
                '#9BDDCF'
            } else {{ fg: '#E1E3D4' attr: 'b' }}
        }

        shape_and: { fg: '#9BDDCF' attr: 'b' }
        shape_binary: { fg: '#DFC1EE' attr: 'b' }
        shape_block: { fg: '#9BDDCF' attr: 'b' }
        shape_bool: '#DFCC99'
        shape_closure: { fg: '#BCCCFD' attr: 'b' }
        shape_custom: '#DFC1EE'
        shape_datetime: { fg: '#DFCC99' attr: 'b' }
        shape_directory: '#BCCCFD'
        shape_external: '#BAD9AB'
        shape_external_resolved: '#BAD9AB'
        shape_externalarg: { fg: '#DFCC99' attr: 'b' }
        shape_filepath: '#BCCCFD'
        shape_flag: { fg: '#F5BBCC' attr: 'b' }
        shape_float: { fg: '#DFCC99' attr: 'b' }
        shape_garbage: { fg: '#DBD9E7' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#9BDDCF' attr: 'b' }
        shape_globpattern: { fg: '#9BDDCF' attr: 'b' }
        shape_int: { fg: '#DFCC99' attr: 'b' }
        shape_internalcall: { fg: '#9BDDCF' attr: 'b' }
        shape_keyword: { fg: '#F5BBCC' attr: 'b' }
        shape_list: { fg: '#9CD8F0' attr: 'b' }
        shape_literal: '#DFCC99'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#F5BBCC'
        shape_operator: '#BCCCFD'
        shape_or: { fg: '#9BDDCF' attr: 'b' }
        shape_pipe: { fg: '#BCCCFD' attr: 'b' }
        shape_range: { fg: '#9BDDCF' attr: 'b' }
        shape_raw_string: { fg: '#DBDCCE' attr: 'b' }
        shape_record: { fg: '#9CD8F0' attr: 'b' }
        shape_redirection: { fg: '#9CD8F0' attr: 'b' }
        shape_signature: { fg: '#F6C0A8' attr: 'b' }
        shape_string: '#BAD9AB'
        shape_string_interpolation: { fg: '#9BDDCF' attr: 'b' }
        shape_table: { fg: '#9CD8F0' attr: 'b' }
        shape_vardecl: { fg: '#BCCCFD' attr: 'u' }
        shape_variable: '#F6C0A8'

        foreground: '#DBDCCE'
        background: '#363246'
        cursor: '#CECFC1'

        empty: '#BCCCFD'
        header: { fg: '#BAD9AB' attr: 'b' }
        hints: '#CECFC1'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#D4D6C7' attr: 'b' }
        search_result: { fg: '#F6C0A8' bg: '#53553E' }
        separator: '#E1DFEE'
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
