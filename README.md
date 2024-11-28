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
| d0_black | #33323A | [0.199, 0.194, 0.227] |  [0.32, 0.006, -0.014] |
| d0_white | #33342B | [0.199, 0.203, 0.169] |  [0.32, -0.006, 0.014] |
| d1_black | #3D3C45 | [0.24, 0.234, 0.269] |  [0.36, 0.006, -0.014] |
| d1_white | #3D3E35 | [0.239, 0.243, 0.208] |  [0.36, -0.006, 0.014] |
| d2_black | #42414A | [0.26, 0.255, 0.29] |  [0.38, 0.006, -0.014] |
| d2_white | #42433A | [0.26, 0.264, 0.228] |  [0.38, -0.006, 0.014] |
| d3_black | #4D4C55 | [0.302, 0.297, 0.332] |  [0.42, 0.006, -0.014] |
| d3_white | #4D4E45 | [0.302, 0.306, 0.27] |  [0.42, -0.006, 0.014] |
| d1_red | #533334 | [0.325, 0.2, 0.204] |  [0.36, 0.044, 0.014] |
| d1_orange | #53351C | [0.327, 0.209, 0.112] |  [0.36, 0.03, 0.049] |
| d1_yellow | #483C0F | [0.281, 0.237, 0.057] |  [0.36, -0.006, 0.064] |
| d1_chartreuse | #32441E | [0.196, 0.266, 0.117] |  [0.36, -0.041, 0.049] |
| d1_green | #1A4736 | [0.102, 0.277, 0.212] |  [0.36, -0.056, 0.014] |
| d1_cyan | #1B444A | [0.106, 0.266, 0.289] |  [0.36, -0.041, -0.021] |
| d1_blue | #323D51 | [0.197, 0.241, 0.316] |  [0.36, -0.006, -0.036] |
| d1_purple | #473748 | [0.278, 0.214, 0.283] |  [0.36, 0.03, -0.021] |
| d3_red | #6C3D43 | [0.424, 0.241, 0.264] |  [0.42, 0.064, 0.014] |
| d3_orange | #6D4120 | [0.427, 0.254, 0.125] |  [0.42, 0.044, 0.063] |
| d3_yellow | #5C4C04 | [0.362, 0.296, 0.016] |  [0.42, -0.006, 0.084] |
| d3_chartreuse | #3C5622 | [0.237, 0.338, 0.133] |  [0.42, -0.055, 0.063] |
| d3_green | #115A46 | [0.066, 0.354, 0.275] |  [0.42, -0.076, 0.014] |
| d3_cyan | #145662 | [0.08, 0.338, 0.385] |  [0.42, -0.055, -0.036] |
| d3_blue | #3D4D6C | [0.241, 0.301, 0.424] |  [0.42, -0.006, -0.056] |
| d3_purple | #5B4360 | [0.358, 0.262, 0.376] |  [0.42, 0.044, -0.036] |
| v0_black | #F2F0FB | [0.948, 0.942, 0.985] |  [0.96, 0.006, -0.014] |
| v0_white | #F2F3E8 | [0.947, 0.953, 0.908] |  [0.96, -0.006, 0.014] |
| v1_black | #E4E3EE | [0.896, 0.89, 0.933] |  [0.92, 0.006, -0.014] |
| v1_white | #E4E6DB | [0.896, 0.901, 0.857] |  [0.92, -0.006, 0.014] |
| v2_black | #D7D6E1 | [0.845, 0.839, 0.881] |  [0.88, 0.006, -0.014] |
| v2_white | #D7D9CE | [0.844, 0.85, 0.806] |  [0.88, -0.006, 0.014] |
| v3_black | #CAC9D4 | [0.794, 0.788, 0.83] |  [0.84, 0.006, -0.014] |
| v3_white | #CACCC1 | [0.793, 0.799, 0.756] |  [0.84, -0.006, 0.014] |
| v2_red | #F5CCCC | [0.96, 0.799, 0.801] |  [0.88, 0.044, 0.014] |
| v2_orange | #F5CFB2 | [0.961, 0.812, 0.7] |  [0.88, 0.03, 0.049] |
| v2_yellow | #E4D8A8 | [0.896, 0.846, 0.658] |  [0.88, -0.006, 0.064] |
| v2_chartreuse | #CAE1B4 | [0.791, 0.881, 0.707] |  [0.88, -0.041, 0.049] |
| v2_green | #B4E4CF | [0.708, 0.895, 0.811] |  [0.88, -0.056, 0.014] |
| v2_cyan | #B5E1E7 | [0.709, 0.881, 0.907] |  [0.88, -0.041, -0.021] |
| v2_blue | #CAD8F0 | [0.793, 0.848, 0.942] |  [0.88, -0.006, -0.036] |
| v2_purple | #E4D0E5 | [0.895, 0.815, 0.899] |  [0.88, 0.03, -0.021] |


### contrast

| | v0_black | v0_white | v1_black | v1_white | v2_black | v2_white |
|---|---|---|---|---|---|---|
| d0_black      | AAA | AAA | AAA | AAA | AAA | AAA |
| d0_white      | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_black      | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_white      | AAA | AAA | AAA | AAA | AAA | AAA |
| d2_black      | AAA | AAA | AAA | AAA | AA  | AAA |
| d2_white      | AAA | AAA | AAA | AAA | AA  | AA  |
| d3_black      | AAA | AAA | AA  | AA  | AA  | AA  |
| d3_white      | AAA | AAA | AA  | AA  | AA  | AA  |
| d1_red        | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_orange     | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_yellow     | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_chartreuse | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_green      | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_cyan       | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_blue       | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_purple     | AAA | AAA | AAA | AAA | AAA | AAA |
| d3_red        | AAA | AAA | AA  | AA  | AA  | AA  |
| d3_orange     | AAA | AAA | AA  | AA  | AA  | AA  |
| d3_yellow     | AAA | AAA | AA  | AA  | AA  | AA  |
| d3_chartreuse | AAA | AAA | AA  | AA  | AA  | AA  |
| d3_green      | AAA | AAA | AA  | AA  | AA  | AA  |
| d3_cyan       | AAA | AAA | AA  | AA  | AA  | AA  |
| d3_blue       | AAA | AAA | AA  | AA  | AA  | AA  |
| d3_purple     | AAA | AAA | AA  | AA  | AA  | AA  |


| | v3_black | v3_white | v2_red | v2_orange | v2_yellow | v2_chartreuse | v2_green | v2_cyan | v2_blue | v2_purple |
|---|---|---|---|---|---|---|---|---|---|---|
| d0_black      | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d0_white      | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_black      | AA  | AA  | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_white      | AA  | AA  | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d2_black      | AA  | AA  | AA  | AA  | AAA | AAA | AAA | AAA | AA  | AA  |
| d2_white      | AA  | AA  | AA  | AA  | AA  | AAA | AAA | AAA | AA  | AA  |
| d3_black      | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |
| d3_white      | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |
| d1_red        | AA  | AA  | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_orange     | AA  | AA  | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_yellow     | AA  | AA  | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_chartreuse | AA  | AA  | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_green      | AA  | AA  | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_cyan       | AA  | AA  | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_blue       | AA  | AA  | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_purple     | AA  | AA  | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d3_red        | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |
| d3_orange     | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |
| d3_yellow     | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |
| d3_chartreuse | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |
| d3_green      | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |
| d3_cyan       | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |
| d3_blue       | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |
| d3_purple     | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |


## dark colors

| | hex | rgb | OKlab |
|---|---|---|
| d0_black | #EBEAF5 | [0.922, 0.916, 0.959] |  [0.94, 0.006, -0.014] |
| d0_white | #EBECE1 | [0.921, 0.927, 0.883] |  [0.94, -0.006, 0.014] |
| d1_black | #DEDCE7 | [0.87, 0.864, 0.907] |  [0.9, 0.006, -0.014] |
| d1_white | #DEDFD4 | [0.87, 0.875, 0.831] |  [0.9, -0.006, 0.014] |
| d2_black | #D1CFDA | [0.819, 0.813, 0.856] |  [0.86, 0.006, -0.014] |
| d2_white | #D1D2C7 | [0.819, 0.824, 0.781] |  [0.86, -0.006, 0.014] |
| d3_black | #C4C2CD | [0.769, 0.763, 0.805] |  [0.82, 0.006, -0.014] |
| d3_white | #C4C5BA | [0.768, 0.773, 0.731] |  [0.82, -0.006, 0.014] |
| d1_red | #FCD2D3 | [0.987, 0.825, 0.826] |  [0.9, 0.044, 0.014] |
| d1_orange | #FCD6B9 | [0.987, 0.838, 0.725] |  [0.9, 0.03, 0.049] |
| d1_yellow | #EBDEAE | [0.921, 0.872, 0.683] |  [0.9, -0.006, 0.064] |
| d1_chartreuse | #D0E7BB | [0.817, 0.907, 0.732] |  [0.9, -0.041, 0.049] |
| d1_green | #BBEBD5 | [0.733, 0.921, 0.836] |  [0.9, -0.056, 0.014] |
| d1_cyan | #BBE7EE | [0.735, 0.907, 0.933] |  [0.9, -0.041, -0.021] |
| d1_blue | #D1DFF7 | [0.818, 0.874, 0.969] |  [0.9, -0.006, -0.036] |
| d1_purple | #EBD6EC | [0.921, 0.84, 0.925] |  [0.9, 0.03, -0.021] |
| d3_red | #EBB3B9 | [0.923, 0.703, 0.724] |  [0.82, 0.064, 0.014] |
| d3_orange | #ECB894 | [0.925, 0.72, 0.582] |  [0.82, 0.044, 0.063] |
| d3_yellow | #D6C485 | [0.839, 0.767, 0.52] |  [0.82, -0.006, 0.084] |
| d3_chartreuse | #B1D097 | [0.694, 0.815, 0.591] |  [0.82, -0.055, 0.063] |
| d3_green | #91D5BC | [0.569, 0.834, 0.738] |  [0.82, -0.076, 0.014] |
| d3_cyan | #92D0DD | [0.573, 0.815, 0.868] |  [0.82, -0.055, -0.036] |
| d3_blue | #B2C4EA | [0.697, 0.77, 0.916] |  [0.82, -0.006, -0.056] |
| d3_purple | #D5B9DB | [0.837, 0.724, 0.858] |  [0.82, 0.044, -0.036] |
| v0_black | #292830 | [0.16, 0.155, 0.187] |  [0.28, 0.006, -0.014] |
| v0_white | #292A21 | [0.16, 0.164, 0.131] |  [0.28, -0.006, 0.014] |
| v1_black | #33323A | [0.199, 0.194, 0.227] |  [0.32, 0.006, -0.014] |
| v1_white | #33342B | [0.199, 0.203, 0.169] |  [0.32, -0.006, 0.014] |
| v2_black | #3D3C45 | [0.24, 0.234, 0.269] |  [0.36, 0.006, -0.014] |
| v2_white | #3D3E35 | [0.239, 0.243, 0.208] |  [0.36, -0.006, 0.014] |
| v3_black | #48464F | [0.281, 0.276, 0.311] |  [0.4, 0.006, -0.014] |
| v3_white | #48493F | [0.281, 0.285, 0.249] |  [0.4, -0.006, 0.014] |
| v2_red | #533334 | [0.325, 0.2, 0.204] |  [0.36, 0.044, 0.014] |
| v2_orange | #53351C | [0.327, 0.209, 0.112] |  [0.36, 0.03, 0.049] |
| v2_yellow | #483C0F | [0.281, 0.237, 0.057] |  [0.36, -0.006, 0.064] |
| v2_chartreuse | #32441E | [0.196, 0.266, 0.117] |  [0.36, -0.041, 0.049] |
| v2_green | #1A4736 | [0.102, 0.277, 0.212] |  [0.36, -0.056, 0.014] |
| v2_cyan | #1B444A | [0.106, 0.266, 0.289] |  [0.36, -0.041, -0.021] |
| v2_blue | #323D51 | [0.197, 0.241, 0.316] |  [0.36, -0.006, -0.036] |
| v2_purple | #473748 | [0.278, 0.214, 0.283] |  [0.36, 0.03, -0.021] |


### contrast

| | v0_black | v0_white | v1_black | v1_white | v2_black | v2_white |
|---|---|---|---|---|---|---|
| d0_black      | AAA | AAA | AAA | AAA | AAA | AAA |
| d0_white      | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_black      | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_white      | AAA | AAA | AAA | AAA | AAA | AAA |
| d2_black      | AAA | AAA | AAA | AAA | AAA | AAA |
| d2_white      | AAA | AAA | AAA | AAA | AAA | AAA |
| d3_black      | AAA | AAA | AAA | AAA | AA  | AA  |
| d3_white      | AAA | AAA | AAA | AAA | AA  | AA  |
| d1_red        | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_orange     | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_yellow     | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_chartreuse | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_green      | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_cyan       | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_blue       | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_purple     | AAA | AAA | AAA | AAA | AAA | AAA |
| d3_red        | AAA | AAA | AAA | AAA | AA  | AA  |
| d3_orange     | AAA | AAA | AAA | AAA | AA  | AA  |
| d3_yellow     | AAA | AAA | AAA | AAA | AA  | AA  |
| d3_chartreuse | AAA | AAA | AAA | AAA | AA  | AA  |
| d3_green      | AAA | AAA | AAA | AAA | AA  | AA  |
| d3_cyan       | AAA | AAA | AAA | AAA | AA  | AA  |
| d3_blue       | AAA | AAA | AAA | AAA | AA  | AA  |
| d3_purple     | AAA | AAA | AAA | AAA | AA  | AA  |


| | v3_black | v3_white | v2_red | v2_orange | v2_yellow | v2_chartreuse | v2_green | v2_cyan | v2_blue | v2_purple |
|---|---|---|---|---|---|---|---|---|---|---|
| d0_black      | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d0_white      | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_black      | AA  | AA  | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_white      | AA  | AA  | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d2_black      | AA  | AA  | AAA | AAA | AAA | AA  | AA  | AA  | AAA | AAA |
| d2_white      | AA  | AA  | AAA | AAA | AAA | AA  | AA  | AA  | AAA | AAA |
| d3_black      | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |
| d3_white      | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |
| d1_red        | AA  | AA  | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_orange     | AA  | AA  | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_yellow     | AA  | AA  | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_chartreuse | AA  | AA  | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_green      | AAA | AA  | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_cyan       | AA  | AA  | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_blue       | AA  | AA  | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_purple     | AA  | AA  | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d3_red        | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |
| d3_orange     | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |
| d3_yellow     | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |
| d3_chartreuse | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |
| d3_green      | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |
| d3_cyan       | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |
| d3_blue       | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |
| d3_purple     | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |



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
