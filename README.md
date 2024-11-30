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
| d0_black | #2E2D35 | [0.18, 0.175, 0.207] | [0.3, 0.006, -0.014] | [0.3, 0.015, 292.5] |
| d0_white | #2E2F26 | [0.179, 0.183, 0.149] | [0.3, -0.006, 0.014] | [0.3, 0.015, 112.5] |
| d1_black | #38373F | [0.219, 0.214, 0.248] | [0.34, 0.006, -0.014] | [0.34, 0.015, 292.5] |
| d1_white | #383930 | [0.219, 0.223, 0.188] | [0.34, -0.006, 0.014] | [0.34, 0.015, 112.5] |
| d2_black | #42414A | [0.26, 0.255, 0.29] | [0.38, 0.006, -0.014] | [0.38, 0.015, 292.5] |
| d2_white | #42433A | [0.26, 0.264, 0.228] | [0.38, -0.006, 0.014] | [0.38, 0.015, 112.5] |
| d3_black | #4D4C55 | [0.302, 0.297, 0.332] | [0.42, 0.006, -0.014] | [0.42, 0.015, 292.5] |
| d3_white | #4D4E45 | [0.302, 0.306, 0.27] | [0.42, -0.006, 0.014] | [0.42, 0.015, 112.5] |
| d1_red | #4F2E23 | [0.31, 0.181, 0.138] | [0.34, 0.04, 0.033] | [0.34, 0.052, 39.199] |
| d1_orange | #49330D | [0.288, 0.201, 0.049] | [0.34, 0.013, 0.06] | [0.34, 0.062, 77.427] |
| d1_yellow | #393B0D | [0.222, 0.232, 0.052] | [0.34, -0.025, 0.06] | [0.34, 0.065, 112.5] |
| d1_chartreuse | #204125 | [0.125, 0.253, 0.145] | [0.34, -0.052, 0.033] | [0.34, 0.062, 147.573] |
| d1_green | #0F413C | [0.058, 0.253, 0.234] | [0.34, -0.052, -0.005] | [0.34, 0.052, 185.801] |
| d1_cyan | #213C4A | [0.129, 0.234, 0.289] | [0.34, -0.025, -0.032] | [0.34, 0.041, 232.431] |
| d1_blue | #383549 | [0.221, 0.207, 0.285] | [0.34, 0.013, -0.032] | [0.34, 0.035, 292.5] |
| d1_purple | #492F3A | [0.285, 0.185, 0.227] | [0.34, 0.04, -0.005] | [0.34, 0.041, 352.569] |
| d3_red | #6F3E32 | [0.434, 0.243, 0.196] | [0.42, 0.059, 0.041] | [0.42, 0.072, 34.595] |
| d3_orange | #67460E | [0.403, 0.273, 0.055] | [0.42, 0.021, 0.079] | [0.42, 0.081, 74.996] |
| d3_yellow | #4E510F | [0.306, 0.319, 0.06] | [0.42, -0.033, 0.079] | [0.42, 0.085, 112.5] |
| d3_chartreuse | #285934 | [0.156, 0.35, 0.206] | [0.42, -0.07, 0.041] | [0.42, 0.081, 150.004] |
| d3_green | #035956 | [0.011, 0.35, 0.337] | [0.42, -0.07, -0.013] | [0.42, 0.072, 190.405] |
| d3_cyan | #2A526A | [0.166, 0.321, 0.416] | [0.42, -0.033, -0.051] | [0.42, 0.06, 237.375] |
| d3_blue | #4E4869 | [0.305, 0.28, 0.411] | [0.42, 0.021, -0.051] | [0.42, 0.055, 292.5] |
| d3_purple | #653F53 | [0.398, 0.248, 0.326] | [0.42, 0.059, -0.013] | [0.42, 0.06, 347.625] |
| v0_black | #EEEDF8 | [0.935, 0.929, 0.972] | [0.95, 0.006, -0.014] | [0.95, 0.015, 292.5] |
| v0_white | #EEF0E4 | [0.934, 0.94, 0.895] | [0.95, -0.006, 0.014] | [0.95, 0.015, 112.5] |
| v1_black | #E1E0EB | [0.883, 0.877, 0.92] | [0.91, 0.006, -0.014] | [0.91, 0.015, 292.5] |
| v1_white | #E1E2D7 | [0.883, 0.888, 0.844] | [0.91, -0.006, 0.014] | [0.91, 0.015, 112.5] |
| v2_black | #D1CFDA | [0.819, 0.813, 0.856] | [0.86, 0.006, -0.014] | [0.86, 0.015, 292.5] |
| v2_white | #D1D2C7 | [0.819, 0.824, 0.781] | [0.86, -0.006, 0.014] | [0.86, 0.015, 112.5] |
| v3_black | #C4C2CD | [0.769, 0.763, 0.805] | [0.82, 0.006, -0.014] | [0.82, 0.015, 292.5] |
| v3_white | #C4C5BA | [0.768, 0.773, 0.731] | [0.82, -0.006, 0.014] | [0.82, 0.015, 112.5] |
| v2_red | #F6C4B5 | [0.966, 0.767, 0.71] | [0.86, 0.05, 0.037] | [0.86, 0.062, 36.536] |
| v2_orange | #ECCB9D | [0.927, 0.797, 0.614] | [0.86, 0.017, 0.069] | [0.86, 0.071, 76.043] |
| v2_yellow | #D1D79E | [0.82, 0.842, 0.619] | [0.86, -0.029, 0.069] | [0.86, 0.075, 112.5] |
| v2_chartreuse | #B1DFB8 | [0.695, 0.873, 0.72] | [0.86, -0.061, 0.037] | [0.86, 0.071, 148.957] |
| v2_green | #A2DFD9 | [0.637, 0.873, 0.85] | [0.86, -0.061, -0.009] | [0.86, 0.062, 188.464] |
| v2_cyan | #B2D7EE | [0.698, 0.843, 0.933] | [0.86, -0.029, -0.042] | [0.86, 0.051, 235.381] |
| v2_blue | #D1CCED | [0.82, 0.801, 0.928] | [0.86, 0.017, -0.042] | [0.86, 0.045, 292.5] |
| v2_purple | #ECC4D6 | [0.925, 0.769, 0.838] | [0.86, 0.05, -0.009] | [0.86, 0.051, 349.619] |


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
| d0_black | #EBEAF5 | [0.922, 0.916, 0.959] | [0.94, 0.006, -0.014] | [0.94, 0.015, 292.5] |
| d0_white | #EBECE1 | [0.921, 0.927, 0.883] | [0.94, -0.006, 0.014] | [0.94, 0.015, 112.5] |
| d1_black | #DEDCE7 | [0.87, 0.864, 0.907] | [0.9, 0.006, -0.014] | [0.9, 0.015, 292.5] |
| d1_white | #DEDFD4 | [0.87, 0.875, 0.831] | [0.9, -0.006, 0.014] | [0.9, 0.015, 112.5] |
| d2_black | #D1CFDA | [0.819, 0.813, 0.856] | [0.86, 0.006, -0.014] | [0.86, 0.015, 292.5] |
| d2_white | #D1D2C7 | [0.819, 0.824, 0.781] | [0.86, -0.006, 0.014] | [0.86, 0.015, 112.5] |
| d3_black | #C4C2CD | [0.769, 0.763, 0.805] | [0.82, 0.006, -0.014] | [0.82, 0.015, 292.5] |
| d3_white | #C4C5BA | [0.768, 0.773, 0.731] | [0.82, -0.006, 0.014] | [0.82, 0.015, 112.5] |
| d1_red | #FED3C5 | [0.996, 0.828, 0.772] | [0.9, 0.04, 0.033] | [0.9, 0.052, 39.199] |
| d1_orange | #F5DAB1 | [0.962, 0.853, 0.693] | [0.9, 0.013, 0.06] | [0.9, 0.062, 77.427] |
| d1_yellow | #DEE3B2 | [0.871, 0.891, 0.697] | [0.9, -0.025, 0.06] | [0.9, 0.065, 112.5] |
| d1_chartreuse | #C4EAC7 | [0.767, 0.917, 0.781] | [0.9, -0.052, 0.033] | [0.9, 0.062, 147.573] |
| d1_green | #B8EAE3 | [0.721, 0.917, 0.89] | [0.9, -0.052, -0.005] | [0.9, 0.052, 185.801] |
| d1_cyan | #C4E3F5 | [0.77, 0.892, 0.96] | [0.9, -0.025, -0.032] | [0.9, 0.041, 232.431] |
| d1_blue | #DEDAF4 | [0.871, 0.856, 0.956] | [0.9, 0.013, -0.032] | [0.9, 0.035, 292.5] |
| d1_purple | #F5D3E0 | [0.96, 0.829, 0.88] | [0.9, 0.04, -0.005] | [0.9, 0.041, 352.569] |
| d3_red | #EFB4A5 | [0.935, 0.706, 0.648] | [0.82, 0.059, 0.041] | [0.82, 0.072, 34.595] |
| d3_orange | #E3BD89 | [0.892, 0.742, 0.535] | [0.82, 0.021, 0.079] | [0.82, 0.081, 74.996] |
| d3_yellow | #C4CA8A | [0.77, 0.793, 0.54] | [0.82, -0.033, 0.079] | [0.82, 0.085, 112.5] |
| d3_chartreuse | #9FD3A8 | [0.622, 0.829, 0.661] | [0.82, -0.07, 0.041] | [0.82, 0.081, 150.004] |
| d3_green | #8CD3CF | [0.55, 0.829, 0.81] | [0.82, -0.07, -0.013] | [0.82, 0.072, 190.405] |
| d3_cyan | #A0CBE7 | [0.627, 0.795, 0.905] | [0.82, -0.033, -0.051] | [0.82, 0.06, 237.375] |
| d3_blue | #C5BEE5 | [0.771, 0.746, 0.9] | [0.82, 0.021, -0.051] | [0.82, 0.055, 292.5] |
| d3_purple | #E3B5CB | [0.889, 0.709, 0.797] | [0.82, 0.059, -0.013] | [0.82, 0.06, 347.625] |
| v0_black | #2B2A32 | [0.17, 0.165, 0.197] | [0.29, 0.006, -0.014] | [0.29, 0.015, 292.5] |
| v0_white | #2B2C24 | [0.17, 0.173, 0.14] | [0.29, -0.006, 0.014] | [0.29, 0.015, 112.5] |
| v1_black | #35343D | [0.209, 0.204, 0.238] | [0.33, 0.006, -0.014] | [0.33, 0.015, 292.5] |
| v1_white | #35362E | [0.209, 0.213, 0.178] | [0.33, -0.006, 0.014] | [0.33, 0.015, 112.5] |
| v2_black | #42414A | [0.26, 0.255, 0.29] | [0.38, 0.006, -0.014] | [0.38, 0.015, 292.5] |
| v2_white | #42433A | [0.26, 0.264, 0.228] | [0.38, -0.006, 0.014] | [0.38, 0.015, 112.5] |
| v3_black | #4D4C55 | [0.302, 0.297, 0.332] | [0.42, 0.006, -0.014] | [0.42, 0.015, 292.5] |
| v3_white | #4D4E45 | [0.302, 0.306, 0.27] | [0.42, -0.006, 0.014] | [0.42, 0.015, 112.5] |
| v2_red | #5F362A | [0.371, 0.212, 0.167] | [0.38, 0.05, 0.037] | [0.38, 0.062, 36.536] |
| v2_orange | #583C0D | [0.345, 0.237, 0.053] | [0.38, 0.017, 0.069] | [0.38, 0.071, 76.043] |
| v2_yellow | #43460E | [0.263, 0.275, 0.057] | [0.38, -0.029, 0.069] | [0.38, 0.075, 112.5] |
| v2_chartreuse | #244D2D | [0.141, 0.301, 0.175] | [0.38, -0.061, 0.037] | [0.38, 0.071, 148.957] |
| v2_green | #0B4D49 | [0.042, 0.301, 0.285] | [0.38, -0.061, -0.009] | [0.38, 0.062, 188.464] |
| v2_cyan | #26475A | [0.148, 0.277, 0.351] | [0.38, -0.029, -0.042] | [0.38, 0.051, 235.381] |
| v2_blue | #433E58 | [0.262, 0.243, 0.347] | [0.38, 0.017, -0.042] | [0.38, 0.045, 292.5] |
| v2_purple | #573746 | [0.341, 0.216, 0.276] | [0.38, 0.05, -0.009] | [0.38, 0.051, 349.619] |


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
| d3_white      | AAA | AAA | AAA | AA  | AA  | AA  |
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
