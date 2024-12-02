# Retrieve the theme settings
export def main [] {
    return {
        binary: '#5B4360'
        block: '#115A46'
        cell-path: '#4E4B54'
        closure: '#3D4D6C'
        custom: '#5B4360'
        duration: '#115A46'
        float: '#5C4C04'
        glob: '#115A46'
        int: '#5C4C04'
        list: '#145662'
        nothing: '#6C3D43'
        range: '#115A46'
        record: '#145662'
        string: '#3C5622'

        bool: {|| if $in { '#115A46' } else { "#6C3D43" } }

        date: {|| (date now) - $in |
            if $in < 1hr {
                '#6C3D43'
            } else if $in < 6hr {
                '#6D4120'
            } else if $in < 1day {
                '#5C4C04'
            } else if $in < 3day {
                '#3C5622'
            } else if $in < 1wk {
                '$(d3_int)' 
            } else if $in < 6wk {
                '#145662'
            } else if $in < 52wk {
                '#3D4D6C'
            } else { '#5B4360'}
        }

        filesize: {|e|
            if $e == 0b {
                '#4D4E45'
            } else if $e < 1mb {
                '#115A46'
            } else {{ fg: '#36343C' attr: 'b' }}
        }

        shape_and: { fg: '#115A46' attr: 'b' }
        shape_binary: { fg: '#5B4360' attr: 'b' }
        shape_block: { fg: '#115A46' attr: 'b' }
        shape_bool: '#5C4C04'
        shape_closure: { fg: '#3D4D6C' attr: 'b' }
        shape_custom: '#5B4360'
        shape_datetime: { fg: '#5C4C04' attr: 'b' }
        shape_directory: '#3D4D6C'
        shape_external: '#3C5622'
        shape_external_resolved: '#3C5622'
        shape_externalarg: { fg: '#5C4C04' attr: 'b' }
        shape_filepath: '#3D4D6C'
        shape_flag: { fg: '#6C3D43' attr: 'b' }
        shape_float: { fg: '#5C4C04' attr: 'b' }
        shape_garbage: { fg: '#3D3E35' bg: '$(v3_red)' attr: 'b' }
        shape_glob_interpolation: { fg: '#115A46' attr: 'b' }
        shape_globpattern: { fg: '#115A46' attr: 'b' }
        shape_int: { fg: '#5C4C04' attr: 'b' }
        shape_internalcall: { fg: '#115A46' attr: 'b' }
        shape_keyword: { fg: '#6C3D43' attr: 'b' }
        shape_list: { fg: '#145662' attr: 'b' }
        shape_literal: '#5C4C04'
        shape_match_pattern: '$(d3_orage)'
        shape_matching_brackets: { attr: 'u' }
        shape_nothing: '#6C3D43'
        shape_operator: '#3D4D6C'
        shape_or: { fg: '#115A46' attr: 'b' }
        shape_pipe: { fg: '#3D4D6C' attr: 'b' }
        shape_range: { fg: '#115A46' attr: 'b' }
        shape_raw_string: { fg: '#3E3C44' attr: 'b' }
        shape_record: { fg: '#145662' attr: 'b' }
        shape_redirection: { fg: '#145662' attr: 'b' }
        shape_signature: { fg: '#6D4120' attr: 'b' }
        shape_string: '#3C5622'
        shape_string_interpolation: { fg: '#115A46' attr: 'b' }
        shape_table: { fg: '#145662' attr: 'b' }
        shape_vardecl: { fg: '#3D4D6C' attr: 'u' }
        shape_variable: '#6D4120'

        foreground: '#3E3C44'
        background: '#E4E6DB'
        cursor: '#4E4B54'

        empty: '#3D4D6C'
        header: { fg: '#3C5622' attr: 'b' }
        hints: '#4E4B54'
        leading_trailing_space_bg: { attr: 'n' }
        row_index: { fg: '#46434C' attr: 'b' }
        search_result: { fg: '#6D4120' bg: '#CBC9D3' }
        separator: '#35362E'
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
