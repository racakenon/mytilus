module Mytilus
include("theme.jl")
include("builder.jl")
using .theme
using .builder

function main()
    open("README.md", "w") do f
        content = """
    # Mytilus

    Mytilus is a theme inspired by the shell of Mytilus edulis, the blue mussel.
    Created using the OKLCH color space,
    this theme meets AA contrast standards

    |mytilus-light|mytilus-dark|
    |---|---|
    |![mytilus-light](./asset/mytilus-light.png)|![mytilus-dark](./asset/mytilus-dark.png)|

    ## Install
    		
    - lazy.nvim

    ```lua
    {
      "racagogi/mytilus",
      lazy = false,
      priority = 1000,
      opts = {},
    }
    ```
    ## Usage
    		
    ```lua
    vim.cmd[[colorscheme mytilus]] -- default is light
    vim.cmd[[colorscheme mytilus-light]]
    vim.cmd[[colorscheme mytilus-dark]]
    ```

    ## Config	
    			
    ```lua
    config = function()
    	require("mytilus").setup(
    		{
    			theme = 'light' -- light or dark
    			options = {  -- add or remove attrs
    				clear = {},
    				bold = { ["sy.type"] = true, ["sy.keyword"] = true },
    				undercurl = {},
    				underline = {},
    				underdashed = {},
    				underdotted = {},
    				underdouble = {},
    				strikethrough = {},
    				italic = { ["sy.string"] = true }
    			}
    			overides = { 
    				Normal = { bg = nil } -- overide highlight groups directly
    			}
    		}
    	)
    	vim.cmd [[colorscheme mytilus-dark]] -- colorscheme takes precedence over theme
    end
    ```
    <details>

    """

        write(f, content)

    end
    generate_theme([34.0, 37.0, 40.0, 43.0, 85.0, 89.0, 93.0, 97.0], [292.5, 112.5], "light")
    generate_theme([89.0, 86.0, 83.0, 80.0, 37.0, 33.0, 29.0, 25.0], [292.5, 112.5], "dark")

    open("README.md", "a") do f
        content = """

    </details>

    ## Color Palette

    <details>

    ```lua
    ---@class Palette
    ---@field tc TerminalColor
    ---@field di Diagnostic
    ---@field fg Foreground
    ---@field bg Background
    ---@field sy Syntax
    ---@field df Diff
    ---@field rb Rainbow
    ---@field at Attr
    ---@field ui UI

    ---@class TerminalColor
    ---@field black         Color
    ---@field red           Color
    ---@field orange        Color
    ---@field yellow        Color
    ---@field green         Color
    ---@field mint          Color
    ---@field cyan          Color
    ---@field blue          Color
    ---@field magenta       Color
    ---@field white         Color
    ---@field bright_black  Color
    ---@field bright_white  Color

    ---@class Diagnostic
    ---@field error         Color
    ---@field warn          Color
    ---@field ok            Color
    ---@field info          Color
    ---@field hint          Color

    ---@class Rainbow
    ---@field rb1           Color
    ---@field rb2           Color
    ---@field rb3           Color
    ---@field rb4           Color
    ---@field rb5           Color
    ---@field rb6           Color
    ---@field rb7           Color

    ---@class Diff
    ---@field delete        Color
    ---@field add           Color
    ---@field change        Color
    ---@field difftext      Color

    ---@class Attr
    ---@field clear         Color
    ---@field bold          Color
    ---@field strikethrough Color
    ---@field underline     Color
    ---@field undercurl     Color
    ---@field underdouble   Color
    ---@field underdotted   Color
    ---@field underdashed   Color
    ---@field italic        Color

    ---@class Foreground
    ---@field strong        Color
    ---@field text          Color
    ---@field comment       Color

    ---@class Background
    ---@field float         Color
    ---@field plain	        Color
    ---@field visual        Color

    ---@class UI
    ---@field important  Color
    ---@field warning    Color
    ---@field info       Color
    ---@field hint       Color
    ---@field select     Color
    ---@field note       Color
    ---@field doc        Color
    ---@field sign       Color
    ---@field cursorline Color
    ---@field bar        Bar
    ---@field board      Board
    ---@field border     Color
    ---@field inactive   Color
    ---@field cursor     Color
    ---@field dir        Color
    ---@field fold       Color
    ---@field nontext    Color
    ---@field candidate  Color
    ---@field pmenu      Color
    ---@field pselect    Color

    ---@class Bar
    ---@field active     Color
    ---@field inactive   Color

    ---@class Board
    ---@field light      Color
    ---@field dark       Color

    ---@class Syntax
    ---@field keyword    Color
    ---@field constant   Color
    ---@field type       Color
    ---@field macro      Color
    ---@field functions  Color
    ---@field statement  Color
    ---@field modifier   Color
    ---@field operator   Color
    ---@field string     Color
    ---@field symbol     Color
    ---@field struct     Color
    ---@field member     Color
    ---@field parameter  Color
    ---@field variable   Color
    ---@field construct  Color
    ---@field special    Color
    ```
    </details>
    	
    ## Ports

    - [fish](./themes/fish)
    - [nushell](./themes/nu)
    - [rio](./themes/rio)
    - [vivid](./themes/vivid)
    - [wezterm](./themes/wezterm)

    ## Acknowledge

    - [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
    - [gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)
    - [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)
    """

        write(f, content)
    end

    process_files()
end

main()
end
