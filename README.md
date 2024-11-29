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
| d0_black      | #2E2D35 | [0.18, 0.175, 0.207]  | [0.3, 0.006, -0.014]   | [0.3, 0.015, 292.5]    |
| d0_white      | #2E2F26 | [0.179, 0.183, 0.149] | [0.3, -0.006, 0.014]   | [0.3, 0.015, 112.5]    |
| d1_black      | #38373F | [0.219, 0.214, 0.248] | [0.34, 0.006, -0.014]  | [0.34, 0.015, 292.5]   |
| d1_white      | #383930 | [0.219, 0.223, 0.188] | [0.34, -0.006, 0.014]  | [0.34, 0.015, 112.5]   |
| d2_black      | #42414A | [0.26, 0.255, 0.29]   | [0.38, 0.006, -0.014]  | [0.38, 0.015, 292.5]   |
| d2_white      | #42433A | [0.26, 0.264, 0.228]  | [0.38, -0.006, 0.014]  | [0.38, 0.015, 112.5]   |
| d3_black      | #4D4C55 | [0.302, 0.297, 0.332] | [0.42, 0.006, -0.014]  | [0.42, 0.015, 292.5]   |
| d3_white      | #4D4E45 | [0.302, 0.306, 0.27]  | [0.42, -0.006, 0.014]  | [0.42, 0.015, 112.5]   |
| d1_red        | #4F2E23 | [0.31, 0.181, 0.138]  | [0.34, 0.04, 0.033]    | [0.34, 0.052, 39.199]  |
| d1_orange     | #49330D | [0.288, 0.201, 0.049] | [0.34, 0.013, 0.06]    | [0.34, 0.062, 77.427]  |
| d1_yellow     | #393B0D | [0.222, 0.232, 0.052] | [0.34, -0.025, 0.06]   | [0.34, 0.065, 112.5]   |
| d1_chartreuse | #204125 | [0.125, 0.253, 0.145] | [0.34, -0.052, 0.033]  | [0.34, 0.062, 147.573] |
| d1_green      | #0F413C | [0.058, 0.253, 0.234] | [0.34, -0.052, -0.005] | [0.34, 0.052, 185.801] |
| d1_cyan       | #213C4A | [0.129, 0.234, 0.289] | [0.34, -0.025, -0.032] | [0.34, 0.041, 232.431] |
| d1_blue       | #383549 | [0.221, 0.207, 0.285] | [0.34, 0.013, -0.032]  | [0.34, 0.035, 292.5]   |
| d1_purple     | #492F3A | [0.285, 0.185, 0.227] | [0.34, 0.04, -0.005]   | [0.34, 0.041, 352.569] |
| d3_red        | #6F3E32 | [0.434, 0.243, 0.196] | [0.42, 0.059, 0.041]   | [0.42, 0.072, 34.595]  |
| d3_orange     | #67460E | [0.403, 0.273, 0.055] | [0.42, 0.021, 0.079]   | [0.42, 0.081, 74.996]  |
| d3_yellow     | #4E510F | [0.306, 0.319, 0.06]  | [0.42, -0.033, 0.079]  | [0.42, 0.085, 112.5]   |
| d3_chartreuse | #285934 | [0.156, 0.35, 0.206]  | [0.42, -0.07, 0.041]   | [0.42, 0.081, 150.004] |
| d3_green      | #035956 | [0.011, 0.35, 0.337]  | [0.42, -0.07, -0.013]  | [0.42, 0.072, 190.405] |
| d3_cyan       | #2A526A | [0.166, 0.321, 0.416] | [0.42, -0.033, -0.051] | [0.42, 0.06, 237.375]  |
| d3_blue       | #4E4869 | [0.305, 0.28, 0.411]  | [0.42, 0.021, -0.051]  | [0.42, 0.055, 292.5]   |
| d3_purple     | #653F53 | [0.398, 0.248, 0.326] | [0.42, 0.059, -0.013]  | [0.42, 0.06, 347.625]  |
| v0_black      | #EEEDF8 | [0.935, 0.929, 0.972] | [0.95, 0.006, -0.014]  | [0.95, 0.015, 292.5]   |
| v0_white      | #EEF0E4 | [0.934, 0.94, 0.895]  | [0.95, -0.006, 0.014]  | [0.95, 0.015, 112.5]   |
| v1_black      | #E1E0EB | [0.883, 0.877, 0.92]  | [0.91, 0.006, -0.014]  | [0.91, 0.015, 292.5]   |
| v1_white      | #E1E2D7 | [0.883, 0.888, 0.844] | [0.91, -0.006, 0.014]  | [0.91, 0.015, 112.5]   |
| v2_black      | #D1CFDA | [0.819, 0.813, 0.856] | [0.86, 0.006, -0.014]  | [0.86, 0.015, 292.5]   |
| v2_white      | #D1D2C7 | [0.819, 0.824, 0.781] | [0.86, -0.006, 0.014]  | [0.86, 0.015, 112.5]   |
| v3_black      | #C4C2CD | [0.769, 0.763, 0.805] | [0.82, 0.006, -0.014]  | [0.82, 0.015, 292.5]   |
| v3_white      | #C4C5BA | [0.768, 0.773, 0.731] | [0.82, -0.006, 0.014]  | [0.82, 0.015, 112.5]   |
| v2_red        | #F6C4B5 | [0.966, 0.767, 0.71]  | [0.86, 0.05, 0.037]    | [0.86, 0.062, 36.536]  |
| v2_orange     | #ECCB9D | [0.927, 0.797, 0.614] | [0.86, 0.017, 0.069]   | [0.86, 0.071, 76.043]  |
| v2_yellow     | #D1D79E | [0.82, 0.842, 0.619]  | [0.86, -0.029, 0.069]  | [0.86, 0.075, 112.5]   |
| v2_chartreuse | #B1DFB8 | [0.695, 0.873, 0.72]  | [0.86, -0.061, 0.037]  | [0.86, 0.071, 148.957] |
| v2_green      | #A2DFD9 | [0.637, 0.873, 0.85]  | [0.86, -0.061, -0.009] | [0.86, 0.062, 188.464] |
| v2_cyan       | #B2D7EE | [0.698, 0.843, 0.933] | [0.86, -0.029, -0.042] | [0.86, 0.051, 235.381] |
| v2_blue       | #D1CCED | [0.82, 0.801, 0.928]  | [0.86, 0.017, -0.042]  | [0.86, 0.045, 292.5]   |
| v2_purple     | #ECC4D6 | [0.925, 0.769, 0.838] | [0.86, 0.05, -0.009]   | [0.86, 0.051, 349.619] |


### contrast

| | v0_black | v0_white | v1_black | v1_white | v2_black | v2_white |
|---|---|---|---|---|---|---|
| d0_black      | AAA | AAA | AAA | AAA | AAA | AAA |
| d0_white      | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_black      | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_white      | AAA | AAA | AAA | AAA | AAA | AAA |
| d2_black      | AAA | AAA | AAA | AAA | AA  | AA  |
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
| d2_black      | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |
| d2_white      | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |
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
| d0_black      | #E8E6F1 | [0.909, 0.903, 0.946] | [0.93, 0.006, -0.014]  | [0.93, 0.015, 292.5]   |
| d0_white      | #E8E9DE | [0.908, 0.914, 0.87]  | [0.93, -0.006, 0.014]  | [0.93, 0.015, 112.5]   |
| d1_black      | #DBD9E4 | [0.857, 0.851, 0.894] | [0.89, 0.006, -0.014]  | [0.89, 0.015, 292.5]   |
| d1_white      | #DBDCD1 | [0.857, 0.862, 0.819] | [0.89, -0.006, 0.014]  | [0.89, 0.015, 112.5]   |
| d2_black      | #CECCD7 | [0.806, 0.8, 0.843]   | [0.85, 0.006, -0.014]  | [0.85, 0.015, 292.5]   |
| d2_white      | #CECFC4 | [0.806, 0.811, 0.768] | [0.85, -0.006, 0.014]  | [0.85, 0.015, 112.5]   |
| d3_black      | #C1BFCA | [0.756, 0.75, 0.792]  | [0.81, 0.006, -0.014]  | [0.81, 0.015, 292.5]   |
| d3_white      | #C1C2B7 | [0.756, 0.761, 0.718] | [0.81, -0.006, 0.014]  | [0.81, 0.015, 112.5]   |
| d1_red        | #FBD0C2 | [0.983, 0.815, 0.759] | [0.89, 0.04, 0.033]    | [0.89, 0.052, 39.199]  |
| d1_orange     | #F2D6AE | [0.949, 0.84, 0.681]  | [0.89, 0.013, 0.06]    | [0.89, 0.062, 77.427]  |
| d1_yellow     | #DBE0AF | [0.858, 0.878, 0.684] | [0.89, -0.025, 0.06]   | [0.89, 0.065, 112.5]   |
| d1_chartreuse | #C0E7C4 | [0.755, 0.904, 0.768] | [0.89, -0.052, 0.033]  | [0.89, 0.062, 147.573] |
| d1_green      | #B5E7E0 | [0.708, 0.904, 0.877] | [0.89, -0.052, -0.005] | [0.89, 0.052, 185.801] |
| d1_cyan       | #C1E0F2 | [0.757, 0.879, 0.947] | [0.89, -0.025, -0.032] | [0.89, 0.041, 232.431] |
| d1_blue       | #DBD7F1 | [0.858, 0.843, 0.943] | [0.89, 0.013, -0.032]  | [0.89, 0.035, 292.5]   |
| d1_purple     | #F2D0DD | [0.947, 0.817, 0.867] | [0.89, 0.04, -0.005]   | [0.89, 0.041, 352.569] |
| d3_red        | #EBB1A2 | [0.922, 0.694, 0.636] | [0.81, 0.059, 0.041]   | [0.81, 0.072, 34.595]  |
| d3_orange     | #E0BA85 | [0.879, 0.729, 0.523] | [0.81, 0.021, 0.079]   | [0.81, 0.081, 74.996]  |
| d3_yellow     | #C1C787 | [0.758, 0.781, 0.528] | [0.81, -0.033, 0.079]  | [0.81, 0.085, 112.5]   |
| d3_chartreuse | #9CD0A5 | [0.61, 0.817, 0.648]  | [0.81, -0.07, 0.041]   | [0.81, 0.081, 150.004] |
| d3_green      | #89D0CB | [0.538, 0.817, 0.797] | [0.81, -0.07, -0.013]  | [0.81, 0.072, 190.405] |
| d3_cyan       | #9DC7E4 | [0.615, 0.782, 0.892] | [0.81, -0.033, -0.051] | [0.81, 0.06, 237.375]  |
| d3_blue       | #C1BBE2 | [0.758, 0.733, 0.887] | [0.81, 0.021, -0.051]  | [0.81, 0.055, 292.5]   |
| d3_purple     | #DFB2C8 | [0.876, 0.697, 0.784] | [0.81, 0.059, -0.013]  | [0.81, 0.06, 347.625]  |
| v0_black      | #292830 | [0.16, 0.155, 0.187]  | [0.28, 0.006, -0.014]  | [0.28, 0.015, 292.5]   |
| v0_white      | #292A21 | [0.16, 0.164, 0.131]  | [0.28, -0.006, 0.014]  | [0.28, 0.015, 112.5]   |
| v1_black      | #33323A | [0.199, 0.194, 0.227] | [0.32, 0.006, -0.014]  | [0.32, 0.015, 292.5]   |
| v1_white      | #33342B | [0.199, 0.203, 0.169] | [0.32, -0.006, 0.014]  | [0.32, 0.015, 112.5]   |
| v2_black      | #403E47 | [0.25, 0.245, 0.279]  | [0.37, 0.006, -0.014]  | [0.37, 0.015, 292.5]   |
| v2_white      | #404138 | [0.249, 0.254, 0.218] | [0.37, -0.006, 0.014]  | [0.37, 0.015, 112.5]   |
| v3_black      | #4A4952 | [0.292, 0.286, 0.322] | [0.41, 0.006, -0.014]  | [0.41, 0.015, 292.5]   |
| v3_white      | #4A4B42 | [0.291, 0.295, 0.259] | [0.41, -0.006, 0.014]  | [0.41, 0.015, 112.5]   |
| v2_red        | #5C3328 | [0.36, 0.201, 0.157]  | [0.37, 0.05, 0.037]    | [0.37, 0.062, 36.536]  |
| v2_orange     | #553A0A | [0.334, 0.226, 0.038] | [0.37, 0.017, 0.069]   | [0.37, 0.071, 76.043]  |
| v2_yellow     | #41430B | [0.253, 0.264, 0.042] | [0.37, -0.029, 0.069]  | [0.37, 0.075, 112.5]   |
| v2_chartreuse | #214A2A | [0.13, 0.29, 0.165]   | [0.37, -0.061, 0.037]  | [0.37, 0.071, 148.957] |
| v2_green      | #064A46 | [0.023, 0.29, 0.275]  | [0.37, -0.061, -0.009] | [0.37, 0.062, 188.464] |
| v2_cyan       | #234457 | [0.137, 0.266, 0.34]  | [0.37, -0.029, -0.042] | [0.37, 0.051, 235.381] |
| v2_blue       | #403B56 | [0.252, 0.233, 0.336] | [0.37, 0.017, -0.042]  | [0.37, 0.045, 292.5]   |
| v2_purple     | #543544 | [0.33, 0.206, 0.265]  | [0.37, 0.05, -0.009]   | [0.37, 0.051, 349.619] |


### contrast

| | v0_black | v0_white | v1_black | v1_white | v2_black | v2_white |
|---|---|---|---|---|---|---|
| d0_black      | AAA | AAA | AAA | AAA | AAA | AAA |
| d0_white      | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_black      | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_white      | AAA | AAA | AAA | AAA | AAA | AAA |
| d2_black      | AAA | AAA | AAA | AAA | AA  | AA  |
| d2_white      | AAA | AAA | AAA | AAA | AA  | AA  |
| d3_black      | AAA | AAA | AAA | AA  | AA  | AA  |
| d3_white      | AAA | AAA | AAA | AAA | AA  | AA  |
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
| d3_yellow     | AAA | AAA | AAA | AAA | AA  | AA  |
| d3_chartreuse | AAA | AAA | AAA | AAA | AA  | AA  |
| d3_green      | AAA | AAA | AAA | AAA | AA  | AA  |
| d3_cyan       | AAA | AAA | AAA | AAA | AA  | AA  |
| d3_blue       | AAA | AAA | AA  | AA  | AA  | AA  |
| d3_purple     | AAA | AAA | AA  | AA  | AA  | AA  |


| | v3_black | v3_white | v2_red | v2_orange | v2_yellow | v2_chartreuse | v2_green | v2_cyan | v2_blue | v2_purple |
|---|---|---|---|---|---|---|---|---|---|---|
| d0_black      | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d0_white      | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_black      | AA  | AA  | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_white      | AA  | AA  | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d2_black      | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |
| d2_white      | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  | AA  |
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
