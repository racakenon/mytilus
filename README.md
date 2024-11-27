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
| d0_black | #3B3338 | [0.23, 0.2, 0.22] |  [0.33, 0.01, -0.01] |
| d0_white | #2F3832 | [0.19, 0.22, 0.2] |  [0.33, -0.01, 0.01] |
| d1_black | #433A40 | [0.26, 0.23, 0.25] |  [0.36, 0.01, -0.01] |
| d1_white | #37403A | [0.22, 0.25, 0.23] |  [0.36, -0.01, 0.01] |
| d2_black | #4B4248 | [0.29, 0.26, 0.28] |  [0.39, 0.01, -0.01] |
| d2_white | #3F4842 | [0.25, 0.28, 0.26] |  [0.39, -0.01, 0.01] |
| d3_black | #534A50 | [0.32, 0.29, 0.31] |  [0.42, 0.01, -0.01] |
| d3_white | #47504A | [0.28, 0.31, 0.29] |  [0.42, -0.01, 0.01] |
| d1_red | #5E283E | [0.37, 0.16, 0.24] |  [0.36, 0.08, -0.01] |
| d1_orange | #5F2C20 | [0.37, 0.17, 0.13] |  [0.36, 0.06, 0.04] |
| d1_yellow | #50380E | [0.31, 0.22, 0.05] |  [0.36, 0.01, 0.06] |
| d1_chartreuse | #344322 | [0.2, 0.26, 0.13] |  [0.36, -0.04, 0.04] |
| d1_green | #0F4741 | [0.06, 0.28, 0.26] |  [0.36, -0.06, -0.01] |
| d1_cyan | #14425B | [0.08, 0.26, 0.36] |  [0.36, -0.04, -0.06] |
| d1_blue | #363764 | [0.21, 0.22, 0.39] |  [0.36, 0.01, -0.08] |
| d1_purple | #502D59 | [0.31, 0.18, 0.35] |  [0.36, 0.06, -0.06] |
| d3_red | #70384E | [0.44, 0.22, 0.31] |  [0.42, 0.08, -0.01] |
| d3_orange | #713C30 | [0.44, 0.24, 0.19] |  [0.42, 0.06, 0.04] |
| d3_yellow | #614820 | [0.38, 0.28, 0.12] |  [0.42, 0.01, 0.06] |
| d3_chartreuse | #435332 | [0.26, 0.33, 0.19] |  [0.42, -0.04, 0.04] |
| d3_green | #235751 | [0.14, 0.34, 0.32] |  [0.42, -0.06, -0.01] |
| d3_cyan | #26526C | [0.15, 0.32, 0.43] |  [0.42, -0.04, -0.06] |
| d3_blue | #454876 | [0.27, 0.28, 0.46] |  [0.42, 0.01, -0.08] |
| d3_purple | #613D6A | [0.38, 0.24, 0.42] |  [0.42, 0.06, -0.06] |
| v0_black | #F6EBF2 | [0.96, 0.92, 0.95] |  [0.95, 0.01, -0.01] |
| v0_white | #E7F2EA | [0.9, 0.95, 0.92] |  [0.95, -0.01, 0.01] |
| v1_black | #E8DEE5 | [0.91, 0.87, 0.9] |  [0.91, 0.01, -0.01] |
| v1_white | #DAE4DD | [0.85, 0.9, 0.87] |  [0.91, -0.01, 0.01] |
| v2_black | #DBD1D8 | [0.86, 0.82, 0.85] |  [0.87, 0.01, -0.01] |
| v2_white | #CDD7D0 | [0.8, 0.84, 0.82] |  [0.87, -0.01, 0.01] |
| v3_black | #CEC4CB | [0.81, 0.77, 0.79] |  [0.83, 0.01, -0.01] |
| v3_white | #C0CAC3 | [0.75, 0.79, 0.77] |  [0.83, -0.01, 0.01] |
| v2_red | #E5CDCF | [0.9, 0.81, 0.81] |  [0.87, 0.03, 0.01] |
| v2_orange | #E5D0BB | [0.9, 0.82, 0.73] |  [0.87, 0.01, 0.03] |
| v2_yellow | #D7D7B3 | [0.84, 0.84, 0.7] |  [0.87, -0.01, 0.05] |
| v2_chartreuse | #C1DEBD | [0.76, 0.87, 0.74] |  [0.87, -0.04, 0.03] |
| v2_green | #B0E0D1 | [0.69, 0.88, 0.82] |  [0.87, -0.05, 0.01] |
| v2_cyan | #B1DEE5 | [0.69, 0.87, 0.9] |  [0.87, -0.04, -0.02] |
| v2_blue | #C2D7EC | [0.76, 0.84, 0.93] |  [0.87, -0.01, -0.03] |
| v2_purple | #D7D0E3 | [0.84, 0.82, 0.89] |  [0.87, 0.01, -0.02] |


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
| d3_red | AAA | AAA | AA | AA | AA | AA |
| d3_orange | AAA | AAA | AA | AA | AA | AA |
| d3_yellow | AAA | AAA | AA | AA | AA | AA |
| d3_chartreuse | AAA | AAA | AA | AA | AA | AA |
| d3_green | AAA | AAA | AA | AA | AA | AA |
| d3_cyan | AAA | AAA | AA | AA | AA | AA |
| d3_blue | AAA | AAA | AA | AA | AA | AA |
| d3_purple | AAA | AAA | AA | AA | AA | AA |


| | v3_black | v3_white | v2_red | v2_orange | v2_yellow | v2_chartreuse | v2_green | v2_cyan | v2_blue | v2_purple |
|---|---|---|---|---|---|---|---|---|---|---|
| d0_black | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d0_white | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_black | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_white | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d2_black | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |
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
| d0_black | #D5CAD1 | [0.83, 0.79, 0.82] |  [0.85, 0.01, -0.01] |
| d0_white | #C6D1CA | [0.78, 0.82, 0.79] |  [0.85, -0.01, 0.01] |
| d1_black | #CBC1C7 | [0.8, 0.76, 0.78] |  [0.82, 0.01, -0.01] |
| d1_white | #BDC7C0 | [0.74, 0.78, 0.75] |  [0.82, -0.01, 0.01] |
| d2_black | #C1B7BE | [0.76, 0.72, 0.74] |  [0.79, 0.01, -0.01] |
| d2_white | #B3BEB7 | [0.7, 0.74, 0.72] |  [0.79, -0.01, 0.01] |
| d3_black | #B8AEB4 | [0.72, 0.68, 0.71] |  [0.76, 0.01, -0.01] |
| d3_white | #AAB4AD | [0.67, 0.71, 0.68] |  [0.76, -0.01, 0.01] |
| d1_red | #F1AEC6 | [0.95, 0.68, 0.78] |  [0.82, 0.08, -0.01] |
| d1_orange | #F1B3A3 | [0.95, 0.7, 0.64] |  [0.82, 0.06, 0.04] |
| d1_yellow | #DCBF94 | [0.86, 0.75, 0.58] |  [0.82, 0.01, 0.06] |
| d1_chartreuse | #B9CCA5 | [0.72, 0.8, 0.65] |  [0.82, -0.04, 0.04] |
| d1_green | #9BD1C9 | [0.61, 0.82, 0.79] |  [0.82, -0.06, -0.01] |
| d1_cyan | #9CCBEA | [0.61, 0.8, 0.92] |  [0.82, -0.04, -0.06] |
| d1_blue | #BABFF6 | [0.73, 0.75, 0.96] |  [0.82, 0.01, -0.08] |
| d1_purple | #DCB3E7 | [0.86, 0.7, 0.91] |  [0.82, 0.06, -0.06] |
| d3_red | #DD9BB3 | [0.87, 0.61, 0.7] |  [0.76, 0.08, -0.01] |
| d3_orange | #DDA090 | [0.87, 0.63, 0.57] |  [0.76, 0.06, 0.04] |
| d3_yellow | #C9AC82 | [0.79, 0.68, 0.51] |  [0.76, 0.01, 0.06] |
| d3_chartreuse | #A6B993 | [0.65, 0.72, 0.58] |  [0.76, -0.04, 0.04] |
| d3_green | #88BDB6 | [0.53, 0.74, 0.71] |  [0.76, -0.06, -0.01] |
| d3_cyan | #89B8D6 | [0.54, 0.72, 0.84] |  [0.76, -0.04, -0.06] |
| d3_blue | #A7ACE2 | [0.66, 0.67, 0.89] |  [0.76, 0.01, -0.08] |
| d3_purple | #C8A0D3 | [0.79, 0.63, 0.83] |  [0.76, 0.06, -0.06] |
| v0_black | #221A1F | [0.13, 0.1, 0.12] |  [0.23, 0.01, -0.01] |
| v0_white | #171F1A | [0.09, 0.12, 0.1] |  [0.23, -0.01, 0.01] |
| v1_black | #2B2429 | [0.17, 0.14, 0.16] |  [0.27, 0.01, -0.01] |
| v1_white | #212924 | [0.13, 0.16, 0.14] |  [0.27, -0.01, 0.01] |
| v2_black | #362D33 | [0.21, 0.18, 0.2] |  [0.31, 0.01, -0.01] |
| v2_white | #2A332D | [0.17, 0.2, 0.18] |  [0.31, -0.01, 0.01] |
| v3_black | #40383D | [0.25, 0.22, 0.24] |  [0.35, 0.01, -0.01] |
| v3_white | #343D37 | [0.21, 0.24, 0.22] |  [0.35, -0.01, 0.01] |
| v2_red | #3D2B2D | [0.24, 0.17, 0.17] |  [0.31, 0.03, 0.01] |
| v2_orange | #3D2D1C | [0.24, 0.18, 0.11] |  [0.31, 0.01, 0.03] |
| v2_yellow | #333213 | [0.2, 0.2, 0.08] |  [0.31, -0.01, 0.05] |
| v2_chartreuse | #20371D | [0.13, 0.22, 0.11] |  [0.31, -0.04, 0.03] |
| v2_green | #08392E | [0.03, 0.22, 0.18] |  [0.31, -0.05, 0.01] |
| v2_cyan | #09373D | [0.04, 0.22, 0.24] |  [0.31, -0.04, -0.02] |
| v2_blue | #213242 | [0.13, 0.2, 0.26] |  [0.31, -0.01, -0.03] |
| v2_purple | #332D3C | [0.2, 0.18, 0.23] |  [0.31, 0.01, -0.02] |


### contrast

| | v0_black | v0_white | v1_black | v1_white | v2_black | v2_white |
|---|---|---|---|---|---|---|
| d0_black | AAA | AAA | AAA | AAA | AAA | AAA |
| d0_white | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_black | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_white | AAA | AAA | AAA | AAA | AAA | AAA |
| d2_black | AAA | AAA | AAA | AAA | AA | AA |
| d2_white | AAA | AAA | AAA | AAA | AA | AA |
| d3_black | AAA | AAA | AAA | AA | AA | AA |
| d3_white | AAA | AAA | AAA | AAA | AA | AA |
| d1_red | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_orange | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_yellow | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_chartreuse | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_green | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_cyan | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_blue | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_purple | AAA | AAA | AAA | AAA | AAA | AAA |
| d3_red | AAA | AAA | AA | AA | AA | AA |
| d3_orange | AAA | AAA | AA | AA | AA | AA |
| d3_yellow | AAA | AAA | AAA | AA | AA | AA |
| d3_chartreuse | AAA | AAA | AAA | AAA | AA | AA |
| d3_green | AAA | AAA | AAA | AAA | AA | AA |
| d3_cyan | AAA | AAA | AAA | AAA | AA | AA |
| d3_blue | AAA | AAA | AA | AA | AA | AA |
| d3_purple | AAA | AAA | AA | AA | AA | AA |


| | v3_black | v3_white | v2_red | v2_orange | v2_yellow | v2_chartreuse | v2_green | v2_cyan | v2_blue | v2_purple |
|---|---|---|---|---|---|---|---|---|---|---|
| d0_black | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d0_white | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_black | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_white | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d2_black | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |
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
