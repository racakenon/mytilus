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

## light colors

| | hex | rgb | OKlab |
|---|---|---|
| d0_black | #2E2B3C | [46.04, 43.13, 59.77] |  [0.3, 0.01, -0.03] |
| d0_white | #2E2F1E | [45.85, 47.48, 29.83] |  [0.3, -0.01, 0.03] |
| d1_black | #3B3849 | [58.71, 55.79, 73.09] |  [0.35, 0.01, -0.03] |
| d1_white | #3B3C2A | [58.51, 60.29, 42.14] |  [0.35, -0.01, 0.03] |
| d2_black | #484557 | [71.84, 68.91, 86.8] |  [0.4, 0.01, -0.03] |
| d2_white | #484A37 | [71.65, 73.55, 54.92] |  [0.4, -0.01, 0.03] |
| d3_black | #555265 | [85.4, 82.45, 100.88] |  [0.45, 0.01, -0.03] |
| d3_white | #555744 | [85.2, 87.22, 68.12] |  [0.45, -0.01, 0.03] |
| d3_red | #794153 | [120.93, 65.24, 83.36] |  [0.45, 0.08, 0.0] |
| d3_orange | #7A462E | [121.63, 69.87, 45.94] |  [0.45, 0.06, 0.06] |
| d3_yellow | #675317 | [102.51, 82.85, 23.38] |  [0.45, 0.0, 0.08] |
| d3_chartreuse | #415F30 | [65.37, 95.09, 48.14] |  [0.45, -0.06, 0.06] |
| d3_green | #066357 | [5.71, 99.47, 86.89] |  [0.45, -0.08, 0.0] |
| d3_cyan | #105E77 | [15.8, 94.09, 118.54] |  [0.45, -0.06, -0.06] |
| d3_blue | #445282 | [67.93, 82.48, 129.84] |  [0.45, -0.0, -0.08] |
| d3_purple | #664774 | [101.96, 71.0, 115.75] |  [0.45, 0.06, -0.06] |
| v0_black | #EFEBFF | [238.51, 235.27, 255.0] |  [0.95, 0.01, -0.03] |
| v0_white | #EEF1DA | [238.27, 240.98, 218.33] |  [0.95, -0.01, 0.03] |
| v1_black | #DEDBF1 | [222.02, 218.81, 240.8] |  [0.9, 0.01, -0.03] |
| v1_white | #DEE0CA | [221.79, 224.45, 202.08] |  [0.9, -0.01, 0.03] |
| v2_black | #CECBE0 | [205.76, 202.58, 224.25] |  [0.85, 0.01, -0.03] |
| v2_white | #CED0BA | [205.54, 208.14, 186.08] |  [0.85, -0.01, 0.03] |
| v3_black | #BEBBD0 | [189.74, 186.59, 207.93] |  [0.8, 0.01, -0.03] |
| v3_white | #BEC0AA | [189.52, 192.07, 170.32] |  [0.8, -0.01, 0.03] |
| v3_red | #EAA9BB | [233.66, 168.56, 187.48] |  [0.8, 0.08, 0.0] |
| v3_orange | #EAAE93 | [234.12, 173.93, 147.18] |  [0.8, 0.06, 0.06] |
| v3_yellow | #D2BC82 | [209.66, 188.01, 129.62] |  [0.8, 0.0, 0.08] |
| v3_chartreuse | #A8CA96 | [167.77, 201.8, 149.86] |  [0.8, -0.06, 0.06] |
| v3_green | #82CFC0 | [129.81, 207.04, 191.56] |  [0.8, -0.08, 0.0] |
| v3_cyan | #84C9E5 | [131.56, 201.14, 228.69] |  [0.8, -0.06, -0.06] |
| v3_blue | #A9BCF2 | [169.45, 187.86, 242.2] |  [0.8, -0.0, -0.08] |
| v3_purple | #D1AFE2 | [209.45, 174.61, 225.6] |  [0.8, 0.06, -0.06] |


### contrast

| | v0_black | v0_white | v1_black | v1_white | v2_black | v2_white |
|---|---|---|---|---|---|---|
| d0_black | 11.78 | 11.93 | 10.13 | 10.25 | 8.64 | 8.74 |
| d0_white | 11.63 | 11.78 | 10.0 | 10.12 | 8.53 | 8.63 |
| d1_black | 9.78 | 9.9 | 8.41 | 8.5 | 7.16 | 7.25 |
| d1_white | 9.64 | 9.76 | 8.29 | 8.38 | 7.06 | 7.15 |
| d2_black | 7.97 | 8.07 | 6.85 | 6.93 | 5.84 | 5.91 |
| d2_white | 7.85 | 7.95 | 6.75 | 6.82 | 5.75 | 5.82 |
| d3_black | 6.44 | 6.52 | 5.53 | 5.6 | 4.72 | 4.77 |
| d3_white | 6.34 | 6.42 | 5.45 | 5.51 | 4.64 | 4.7 |
| d3_red | 6.67 | 6.76 | 5.74 | 5.8 | 4.89 | 4.95 |
| d3_orange | 6.59 | 6.67 | 5.66 | 5.73 | 4.83 | 4.89 |
| d3_yellow | 6.4 | 6.48 | 5.5 | 5.56 | 4.69 | 4.74 |
| d3_chartreuse | 6.19 | 6.27 | 5.32 | 5.38 | 4.54 | 4.59 |
| d3_green | 6.11 | 6.19 | 5.26 | 5.31 | 4.48 | 4.53 |
| d3_cyan | 6.23 | 6.31 | 5.36 | 5.42 | 4.57 | 4.62 |
| d3_blue | 6.46 | 6.54 | 5.55 | 5.62 | 4.73 | 4.79 |
| d3_purple | 6.63 | 6.71 | 5.7 | 5.77 | 4.86 | 4.92 |


| | v3_black | v3_white | v3_red | v3_orange | v3_yellow | v3_chartreuse | v3_green | v3_cyan | v3_blue | v3_purple |
|---|---|---|---|---|---|---|---|---|---|---|
| d0_black | 7.3 | 7.4 | 7.1 | 7.18 | 7.36 | 7.54 | 7.61 | 7.5 | 7.3 | 7.14 |
| d0_white | 7.21 | 7.3 | 7.01 | 7.09 | 7.26 | 7.45 | 7.51 | 7.41 | 7.21 | 7.05 |
| d1_black | 6.06 | 6.14 | 5.89 | 5.96 | 6.1 | 6.26 | 6.31 | 6.23 | 6.06 | 5.93 |
| d1_white | 5.97 | 6.05 | 5.81 | 5.87 | 6.02 | 6.17 | 6.22 | 6.14 | 5.97 | 5.84 |
| d2_black | 4.94 | 5.0 | 4.8 | 4.85 | 4.97 | 5.1 | 5.15 | 5.07 | 4.94 | 4.83 |
| d2_white | 4.86 | 4.93 | 4.73 | 4.78 | 4.9 | 5.02 | 5.07 | 5.0 | 4.86 | 4.76 |
| d3_black | 3.99 | 4.04 | 3.88 | 3.92 | 4.02 | 4.12 | 4.16 | 4.1 | 3.99 | 3.9 |
| d3_white | 3.93 | 3.98 | 3.82 | 3.86 | 3.96 | 4.06 | 4.09 | 4.04 | 3.93 | 3.84 |
| d3_red | 4.14 | 4.19 | 4.02 | 4.06 | 4.17 | 4.27 | 4.31 | 4.25 | 4.13 | 4.04 |
| d3_orange | 4.08 | 4.13 | 3.97 | 4.01 | 4.11 | 4.22 | 4.25 | 4.19 | 4.08 | 3.99 |
| d3_yellow | 3.96 | 4.01 | 3.85 | 3.9 | 3.99 | 4.09 | 4.13 | 4.07 | 3.96 | 3.88 |
| d3_chartreuse | 3.84 | 3.88 | 3.73 | 3.77 | 3.86 | 3.96 | 4.0 | 3.94 | 3.84 | 3.75 |
| d3_green | 3.79 | 3.84 | 3.68 | 3.72 | 3.82 | 3.91 | 3.95 | 3.89 | 3.79 | 3.71 |
| d3_cyan | 3.86 | 3.91 | 3.75 | 3.8 | 3.89 | 3.99 | 4.02 | 3.97 | 3.86 | 3.78 |
| d3_blue | 4.0 | 4.05 | 3.89 | 3.94 | 4.03 | 4.13 | 4.17 | 4.11 | 4.0 | 3.92 |
| d3_purple | 4.11 | 4.16 | 3.99 | 4.04 | 4.14 | 4.24 | 4.28 | 4.22 | 4.11 | 4.02 |


## dark colors

| | hex | rgb | OKlab |
|---|---|---|
| d0_black | #EEF1DA | [238.27, 240.98, 218.33] |  [0.95, -0.01, 0.03] |
| d0_white | #EFEBFF | [238.51, 235.27, 255.0] |  [0.95, 0.01, -0.03] |
| d1_black | #DEE0CA | [221.79, 224.45, 202.08] |  [0.9, -0.01, 0.03] |
| d1_white | #DEDBF1 | [222.02, 218.81, 240.8] |  [0.9, 0.01, -0.03] |
| d2_black | #CED0BA | [205.54, 208.14, 186.08] |  [0.85, -0.01, 0.03] |
| d2_white | #CECBE0 | [205.76, 202.58, 224.25] |  [0.85, 0.01, -0.03] |
| d3_black | #BEC0AA | [189.52, 192.07, 170.32] |  [0.8, -0.01, 0.03] |
| d3_white | #BEBBD0 | [189.74, 186.59, 207.93] |  [0.8, 0.01, -0.03] |
| d3_red | #EAA9BB | [233.66, 168.56, 187.48] |  [0.8, 0.08, 0.0] |
| d3_orange | #EAAE93 | [234.12, 173.93, 147.18] |  [0.8, 0.06, 0.06] |
| d3_yellow | #D2BC82 | [209.66, 188.01, 129.62] |  [0.8, 0.0, 0.08] |
| d3_chartreuse | #A8CA96 | [167.77, 201.8, 149.86] |  [0.8, -0.06, 0.06] |
| d3_green | #82CFC0 | [129.81, 207.04, 191.56] |  [0.8, -0.08, 0.0] |
| d3_cyan | #84C9E5 | [131.56, 201.14, 228.69] |  [0.8, -0.06, -0.06] |
| d3_blue | #A9BCF2 | [169.45, 187.86, 242.2] |  [0.8, -0.0, -0.08] |
| d3_purple | #D1AFE2 | [209.45, 174.61, 225.6] |  [0.8, 0.06, -0.06] |
| v0_black | #2E2F1E | [45.85, 47.48, 29.83] |  [0.3, -0.01, 0.03] |
| v0_white | #2E2B3C | [46.04, 43.13, 59.77] |  [0.3, 0.01, -0.03] |
| v1_black | #3B3C2A | [58.51, 60.29, 42.14] |  [0.35, -0.01, 0.03] |
| v1_white | #3B3849 | [58.71, 55.79, 73.09] |  [0.35, 0.01, -0.03] |
| v2_black | #484A37 | [71.65, 73.55, 54.92] |  [0.4, -0.01, 0.03] |
| v2_white | #484557 | [71.84, 68.91, 86.8] |  [0.4, 0.01, -0.03] |
| v3_black | #555744 | [85.2, 87.22, 68.12] |  [0.45, -0.01, 0.03] |
| v3_white | #555265 | [85.4, 82.45, 100.88] |  [0.45, 0.01, -0.03] |
| v3_red | #794153 | [120.93, 65.24, 83.36] |  [0.45, 0.08, 0.0] |
| v3_orange | #7A462E | [121.63, 69.87, 45.94] |  [0.45, 0.06, 0.06] |
| v3_yellow | #675317 | [102.51, 82.85, 23.38] |  [0.45, 0.0, 0.08] |
| v3_chartreuse | #415F30 | [65.37, 95.09, 48.14] |  [0.45, -0.06, 0.06] |
| v3_green | #066357 | [5.71, 99.47, 86.89] |  [0.45, -0.08, 0.0] |
| v3_cyan | #105E77 | [15.8, 94.09, 118.54] |  [0.45, -0.06, -0.06] |
| v3_blue | #445282 | [67.93, 82.48, 129.84] |  [0.45, -0.0, -0.08] |
| v3_purple | #664774 | [101.96, 71.0, 115.75] |  [0.45, 0.06, -0.06] |


### contrast

| | v0_black | v0_white | v1_black | v1_white | v2_black | v2_white |
|---|---|---|---|---|---|---|
| d0_black | 11.78 | 11.93 | 9.76 | 9.9 | 7.95 | 8.07 |
| d0_white | 11.63 | 11.78 | 9.64 | 9.78 | 7.85 | 7.97 |
| d1_black | 10.12 | 10.25 | 8.38 | 8.5 | 6.82 | 6.93 |
| d1_white | 10.0 | 10.13 | 8.29 | 8.41 | 6.75 | 6.85 |
| d2_black | 8.63 | 8.74 | 7.15 | 7.25 | 5.82 | 5.91 |
| d2_white | 8.53 | 8.64 | 7.06 | 7.16 | 5.75 | 5.84 |
| d3_black | 7.3 | 7.4 | 6.05 | 6.14 | 4.93 | 5.0 |
| d3_white | 7.21 | 7.3 | 5.97 | 6.06 | 4.86 | 4.94 |
| d3_red | 7.01 | 7.1 | 5.81 | 5.89 | 4.73 | 4.8 |
| d3_orange | 7.09 | 7.18 | 5.87 | 5.96 | 4.78 | 4.85 |
| d3_yellow | 7.26 | 7.36 | 6.02 | 6.1 | 4.9 | 4.97 |
| d3_chartreuse | 7.45 | 7.54 | 6.17 | 6.26 | 5.02 | 5.1 |
| d3_green | 7.51 | 7.61 | 6.22 | 6.31 | 5.07 | 5.15 |
| d3_cyan | 7.41 | 7.5 | 6.14 | 6.23 | 5.0 | 5.07 |
| d3_blue | 7.21 | 7.3 | 5.97 | 6.06 | 4.86 | 4.94 |
| d3_purple | 7.05 | 7.14 | 5.84 | 5.93 | 4.76 | 4.83 |


| | v3_black | v3_white | v3_red | v3_orange | v3_yellow | v3_chartreuse | v3_green | v3_cyan | v3_blue | v3_purple |
|---|---|---|---|---|---|---|---|---|---|---|
| d0_black | 6.42 | 6.52 | 6.76 | 6.67 | 6.48 | 6.27 | 6.19 | 6.31 | 6.54 | 6.71 |
| d0_white | 6.34 | 6.44 | 6.67 | 6.59 | 6.4 | 6.19 | 6.11 | 6.23 | 6.46 | 6.63 |
| d1_black | 5.51 | 5.6 | 5.8 | 5.73 | 5.56 | 5.38 | 5.31 | 5.42 | 5.62 | 5.77 |
| d1_white | 5.45 | 5.53 | 5.74 | 5.66 | 5.5 | 5.32 | 5.26 | 5.36 | 5.55 | 5.7 |
| d2_black | 4.7 | 4.77 | 4.95 | 4.89 | 4.74 | 4.59 | 4.53 | 4.62 | 4.79 | 4.92 |
| d2_white | 4.64 | 4.72 | 4.89 | 4.83 | 4.69 | 4.54 | 4.48 | 4.57 | 4.73 | 4.86 |
| d3_black | 3.98 | 4.04 | 4.19 | 4.13 | 4.01 | 3.88 | 3.84 | 3.91 | 4.05 | 4.16 |
| d3_white | 3.93 | 3.99 | 4.14 | 4.08 | 3.96 | 3.84 | 3.79 | 3.86 | 4.0 | 4.11 |
| d3_red | 3.82 | 3.88 | 4.02 | 3.97 | 3.85 | 3.73 | 3.68 | 3.75 | 3.89 | 3.99 |
| d3_orange | 3.86 | 3.92 | 4.06 | 4.01 | 3.9 | 3.77 | 3.72 | 3.8 | 3.94 | 4.04 |
| d3_yellow | 3.96 | 4.02 | 4.17 | 4.11 | 3.99 | 3.86 | 3.82 | 3.89 | 4.03 | 4.14 |
| d3_chartreuse | 4.06 | 4.12 | 4.27 | 4.22 | 4.09 | 3.96 | 3.91 | 3.99 | 4.13 | 4.24 |
| d3_green | 4.09 | 4.16 | 4.31 | 4.25 | 4.13 | 4.0 | 3.95 | 4.02 | 4.17 | 4.28 |
| d3_cyan | 4.04 | 4.1 | 4.25 | 4.19 | 4.07 | 3.94 | 3.89 | 3.97 | 4.11 | 4.22 |
| d3_blue | 3.93 | 3.99 | 4.13 | 4.08 | 3.96 | 3.84 | 3.79 | 3.86 | 4.0 | 4.11 |
| d3_purple | 3.84 | 3.9 | 4.04 | 3.99 | 3.88 | 3.75 | 3.71 | 3.78 | 3.92 | 4.02 |



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
