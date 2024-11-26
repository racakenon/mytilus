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
| d0_black | #332E36 | [0.2, 0.18, 0.21] |  [0.31, 0.01, -0.01] |
| d0_white | #2D322B | [0.18, 0.2, 0.17] |  [0.31, -0.01, 0.01] |
| d1_black | #3B363D | [0.23, 0.21, 0.24] |  [0.34, 0.01, -0.01] |
| d1_white | #353A32 | [0.21, 0.23, 0.2] |  [0.34, -0.01, 0.01] |
| d2_black | #433D45 | [0.26, 0.24, 0.27] |  [0.37, 0.01, -0.01] |
| d2_white | #3C423A | [0.24, 0.26, 0.23] |  [0.37, -0.01, 0.01] |
| d3_black | #4B454D | [0.29, 0.27, 0.3] |  [0.4, 0.01, -0.01] |
| d3_white | #444A42 | [0.27, 0.29, 0.26] |  [0.4, -0.01, 0.01] |
| d1_red | #4E2B3C | [0.3, 0.17, 0.24] |  [0.34, 0.06, -0.01] |
| d1_orange | #4E2E2B | [0.31, 0.18, 0.17] |  [0.34, 0.04, 0.02] |
| d1_yellow | #433523 | [0.26, 0.21, 0.14] |  [0.34, 0.01, 0.03] |
| d1_chartreuse | #313C2C | [0.19, 0.23, 0.17] |  [0.34, -0.02, 0.02] |
| d1_green | #203E3E | [0.12, 0.24, 0.24] |  [0.34, -0.03, -0.01] |
| d1_cyan | #213B4F | [0.13, 0.23, 0.31] |  [0.34, -0.02, -0.04] |
| d1_blue | #333455 | [0.2, 0.2, 0.33] |  [0.34, 0.01, -0.06] |
| d1_purple | #442E4D | [0.27, 0.18, 0.3] |  [0.34, 0.04, -0.04] |
| d3_red | #63384C | [0.39, 0.22, 0.3] |  [0.4, 0.07, -0.01] |
| d3_orange | #633C35 | [0.39, 0.23, 0.21] |  [0.4, 0.05, 0.03] |
| d3_yellow | #56442B | [0.34, 0.27, 0.17] |  [0.4, 0.01, 0.04] |
| d3_chartreuse | #3E4D37 | [0.24, 0.3, 0.22] |  [0.4, -0.03, 0.03] |
| d3_green | #27504F | [0.15, 0.31, 0.31] |  [0.4, -0.04, -0.01] |
| d3_cyan | #294C63 | [0.16, 0.3, 0.39] |  [0.4, -0.03, -0.05] |
| d3_blue | #40446B | [0.25, 0.26, 0.42] |  [0.4, 0.01, -0.07] |
| d3_purple | #563C62 | [0.34, 0.23, 0.38] |  [0.4, 0.05, -0.05] |
| v0_black | #EFE8F2 | [0.94, 0.91, 0.95] |  [0.94, 0.01, -0.01] |
| v0_white | #E7EEE4 | [0.91, 0.93, 0.89] |  [0.94, -0.01, 0.01] |
| v1_black | #E2DBE5 | [0.89, 0.86, 0.9] |  [0.9, 0.01, -0.01] |
| v1_white | #DAE0D6 | [0.85, 0.88, 0.84] |  [0.9, -0.01, 0.01] |
| v2_black | #D5CED8 | [0.83, 0.81, 0.85] |  [0.86, 0.01, -0.01] |
| v2_white | #CDD3CA | [0.8, 0.83, 0.79] |  [0.86, -0.01, 0.01] |
| v3_black | #C8C1CB | [0.78, 0.76, 0.8] |  [0.82, 0.01, -0.01] |
| v3_white | #C0C6BD | [0.75, 0.78, 0.74] |  [0.82, -0.01, 0.01] |
| v2_red | #E8C8C8 | [0.91, 0.78, 0.79] |  [0.86, 0.03, 0.01] |
| v2_orange | #E8CBB1 | [0.91, 0.8, 0.7] |  [0.86, 0.02, 0.04] |
| v2_yellow | #D9D3A8 | [0.85, 0.83, 0.66] |  [0.86, -0.01, 0.06] |
| v2_chartreuse | #C0DAB3 | [0.75, 0.86, 0.7] |  [0.86, -0.04, 0.04] |
| v2_green | #ADDECB | [0.68, 0.87, 0.79] |  [0.86, -0.06, 0.01] |
| v2_cyan | #AEDAE1 | [0.68, 0.86, 0.88] |  [0.86, -0.04, -0.02] |
| v2_blue | #C1D3E9 | [0.76, 0.83, 0.91] |  [0.86, -0.01, -0.03] |
| v2_purple | #D9CBDF | [0.85, 0.8, 0.87] |  [0.86, 0.02, -0.02] |


### contrast

| | v0_black | v0_white | v1_black | v1_white | v2_black | v2_white |
|---|---|---|---|---|---|---|
| d0_black | AAA | AAA | AAA | AAA | AAA | AAA |
| d0_white | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_black | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_white | AAA | AAA | AAA | AAA | AAA | AAA |
| d2_black | AAA | AAA | AAA | AAA | AA | AA |
| d2_white | AAA | AAA | AAA | AAA | AA | AA |
| d3_black | AAA | AAA | AA | AA | AA | AA |
| d3_white | AAA | AAA | AA | AA | AA | AA |
| d1_red | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_orange | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_yellow | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_chartreuse | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_green | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_cyan | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_blue | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_purple | AAA | AAA | AAA | AAA | AAA | AAA |
| d3_red | AAA | AAA | AAA | AAA | AA | AA |
| d3_orange | AAA | AAA | AA | AAA | AA | AA |
| d3_yellow | AAA | AAA | AA | AA | AA | AA |
| d3_chartreuse | AAA | AAA | AA | AA | AA | AA |
| d3_green | AAA | AAA | AA | AA | AA | AA |
| d3_cyan | AAA | AAA | AA | AA | AA | AA |
| d3_blue | AAA | AAA | AA | AA | AA | AA |
| d3_purple | AAA | AAA | AAA | AAA | AA | AA |


| | v3_black | v3_white | v2_red | v2_orange | v2_yellow | v2_chartreuse | v2_green | v2_cyan | v2_blue | v2_purple |
|---|---|---|---|---|---|---|---|---|---|---|
| d0_black | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d0_white | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_black | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_white | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d2_black | AA | AA | AA | AA | AA | AA | AAA | AA | AA | AA |
| d2_white | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |
| d3_black | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |
| d3_white | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |
| d1_red | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_orange | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_yellow | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_chartreuse | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_green | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_cyan | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_blue | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_purple | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d3_red | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |
| d3_orange | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |
| d3_yellow | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |
| d3_chartreuse | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |
| d3_green | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |
| d3_cyan | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |
| d3_blue | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |
| d3_purple | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |


## dark colors

| | hex | rgb | OKlab |
|---|---|---|
| d0_black | #E2DBE5 | [0.89, 0.86, 0.9] |  [0.9, 0.01, -0.01] |
| d0_white | #DAE0D6 | [0.85, 0.88, 0.84] |  [0.9, -0.01, 0.01] |
| d1_black | #D8D1DB | [0.85, 0.82, 0.86] |  [0.87, 0.01, -0.01] |
| d1_white | #D0D7CD | [0.82, 0.84, 0.8] |  [0.87, -0.01, 0.01] |
| d2_black | #CEC8D1 | [0.81, 0.78, 0.82] |  [0.84, 0.01, -0.01] |
| d2_white | #C6CDC3 | [0.78, 0.8, 0.77] |  [0.84, -0.01, 0.01] |
| d3_black | #C5BEC8 | [0.77, 0.75, 0.78] |  [0.81, 0.01, -0.01] |
| d3_white | #BDC3BA | [0.74, 0.77, 0.73] |  [0.81, -0.01, 0.01] |
| d1_red | #F2C6DA | [0.95, 0.78, 0.85] |  [0.87, 0.06, -0.01] |
| d1_orange | #F2C9C4 | [0.95, 0.79, 0.77] |  [0.87, 0.04, 0.02] |
| d1_yellow | #E3D1BB | [0.89, 0.82, 0.73] |  [0.87, 0.01, 0.03] |
| d1_chartreuse | #CCD9C5 | [0.8, 0.85, 0.77] |  [0.87, -0.02, 0.02] |
| d1_green | #BADCDC | [0.73, 0.86, 0.86] |  [0.87, -0.03, -0.01] |
| d1_cyan | #BAD9F2 | [0.73, 0.85, 0.95] |  [0.87, -0.02, -0.04] |
| d1_blue | #CDD1FA | [0.8, 0.82, 0.98] |  [0.87, 0.01, -0.06] |
| d1_purple | #E3C9F0 | [0.89, 0.79, 0.94] |  [0.87, 0.04, -0.04] |
| d3_red | #E3B0C6 | [0.89, 0.69, 0.78] |  [0.81, 0.07, -0.01] |
| d3_orange | #E4B4AB | [0.89, 0.71, 0.67] |  [0.81, 0.05, 0.03] |
| d3_yellow | #D2BEA1 | [0.82, 0.74, 0.63] |  [0.81, 0.01, 0.04] |
| d3_chartreuse | #B6C7AD | [0.71, 0.78, 0.68] |  [0.81, -0.03, 0.03] |
| d3_green | #9FCBC9 | [0.63, 0.8, 0.79] |  [0.81, -0.04, -0.01] |
| d3_cyan | #A0C7E3 | [0.63, 0.78, 0.89] |  [0.81, -0.03, -0.05] |
| d3_blue | #B7BDEC | [0.72, 0.74, 0.93] |  [0.81, 0.01, -0.07] |
| d3_purple | #D2B4E0 | [0.82, 0.71, 0.88] |  [0.81, 0.05, -0.05] |
| v0_black | #272229 | [0.15, 0.13, 0.16] |  [0.26, 0.01, -0.01] |
| v0_white | #21261E | [0.13, 0.15, 0.12] |  [0.26, -0.01, 0.01] |
| v1_black | #312C33 | [0.19, 0.17, 0.2] |  [0.3, 0.01, -0.01] |
| v1_white | #2B3028 | [0.17, 0.19, 0.16] |  [0.3, -0.01, 0.01] |
| v2_black | #3B363D | [0.23, 0.21, 0.24] |  [0.34, 0.01, -0.01] |
| v2_white | #353A32 | [0.21, 0.23, 0.2] |  [0.34, -0.01, 0.01] |
| v3_black | #454048 | [0.27, 0.25, 0.28] |  [0.38, 0.01, -0.01] |
| v3_white | #3F443C | [0.25, 0.27, 0.24] |  [0.38, -0.01, 0.01] |
| v2_red | #493031 | [0.29, 0.19, 0.19] |  [0.34, 0.03, 0.01] |
| v2_orange | #49321D | [0.29, 0.2, 0.11] |  [0.34, 0.02, 0.04] |
| v2_yellow | #3E3912 | [0.24, 0.22, 0.07] |  [0.34, -0.01, 0.06] |
| v2_chartreuse | #2A3F1E | [0.16, 0.25, 0.12] |  [0.34, -0.04, 0.04] |
| v2_green | #124133 | [0.07, 0.26, 0.2] |  [0.34, -0.06, 0.01] |
| v2_cyan | #143F44 | [0.08, 0.25, 0.27] |  [0.34, -0.04, -0.02] |
| v2_blue | #2B394A | [0.17, 0.22, 0.29] |  [0.34, -0.01, -0.03] |
| v2_purple | #3E3343 | [0.24, 0.2, 0.26] |  [0.34, 0.02, -0.02] |


### contrast

| | v0_black | v0_white | v1_black | v1_white | v2_black | v2_white |
|---|---|---|---|---|---|---|
| d0_black | AAA | AAA | AAA | AAA | AAA | AAA |
| d0_white | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_black | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_white | AAA | AAA | AAA | AAA | AAA | AAA |
| d2_black | AAA | AAA | AAA | AAA | AAA | AAA |
| d2_white | AAA | AAA | AAA | AAA | AAA | AAA |
| d3_black | AAA | AAA | AAA | AAA | AA | AA |
| d3_white | AAA | AAA | AAA | AAA | AA | AA |
| d1_red | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_orange | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_yellow | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_chartreuse | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_green | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_cyan | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_blue | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_purple | AAA | AAA | AAA | AAA | AAA | AAA |
| d3_red | AAA | AAA | AAA | AAA | AA | AA |
| d3_orange | AAA | AAA | AAA | AAA | AA | AA |
| d3_yellow | AAA | AAA | AAA | AAA | AA | AA |
| d3_chartreuse | AAA | AAA | AAA | AAA | AA | AA |
| d3_green | AAA | AAA | AAA | AAA | AA | AA |
| d3_cyan | AAA | AAA | AAA | AAA | AA | AA |
| d3_blue | AAA | AAA | AAA | AAA | AA | AA |
| d3_purple | AAA | AAA | AAA | AAA | AA | AA |


| | v3_black | v3_white | v2_red | v2_orange | v2_yellow | v2_chartreuse | v2_green | v2_cyan | v2_blue | v2_purple |
|---|---|---|---|---|---|---|---|---|---|---|
| d0_black | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d0_white | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_black | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_white | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d2_black | AA | AA | AAA | AAA | AAA | AAA | AA | AAA | AAA | AAA |
| d2_white | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d3_black | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |
| d3_white | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |
| d1_red | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_orange | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_yellow | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_chartreuse | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_green | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_cyan | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_blue | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_purple | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d3_red | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |
| d3_orange | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |
| d3_yellow | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |
| d3_chartreuse | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |
| d3_green | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |
| d3_cyan | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |
| d3_blue | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |
| d3_purple | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |



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
