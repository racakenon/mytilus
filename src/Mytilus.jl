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
	require("mytilus.configs").setup(
		{
			theme    = 'light',
			options  = {
				sideBarDim = true, --if false then sidebar bg is same normal
				statusBarRevers = true, --if false, statusBarRevers bg is d2_black,
				NCWindowDim = true, --if false, not current window bg is same normal
				str = { bold = true },
				func = { bold = true, italic = true},
				type = {},
				statement = {},
				keyword = {},
				str = {},
				statement = {},
				func = {},
				type = {},
				constant = {},
				keyword = {},
				comment = {},
				doc = {},
			},
			overides = {} -- ["@string"] = { fg = "#222222", italic = true },
		}
	)
	vim.cmd [[colorscheme mytilus]]
end
}

```
<details>

"""

        write(f, content)

    end
    generate_theme([34.0, 37.0, 40.0, 43.0, 85.0, 89.0, 93.0, 97.0], [297.5, 112.5], "light")
    generate_theme([92.0, 89.0, 86.0, 83.0, 41.0, 37.0, 33.0, 29.0], [297.5, 112.5], "dark")

    open("README.md", "a") do f
        content = """

</details>
	
## Ports

- [fish](./themes/fish)
- [nushell](./themes/nu)
- [rio](./themes/rio)
- [vivid](./themes/vivid)
- [wezterm](./themes/wezterm)
- [ghostty](./themes/ghostty)

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
