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

## light colors

| | hex | rgb | OKlab |
|---|---|---|---|
| d0_black | #39363F | [0.222, 0.213, 0.247] | [0.34, 0.007, -0.013] | [0.34, 0.015, 297.5] |
| d0_white | #383930 | [0.219, 0.223, 0.188] | [0.34, -0.006, 0.014] | [0.34, 0.015, 112.5] |
| d1_black | #403E47 | [0.253, 0.244, 0.278] | [0.37, 0.007, -0.013] | [0.37, 0.015, 297.5] |
| d1_white | #404138 | [0.249, 0.254, 0.218] | [0.37, -0.006, 0.014] | [0.37, 0.015, 112.5] |
| d2_black | #48464F | [0.284, 0.275, 0.31] | [0.4, 0.007, -0.013] | [0.4, 0.015, 297.5] |
| d2_white | #48493F | [0.281, 0.285, 0.249] | [0.4, -0.006, 0.014] | [0.4, 0.015, 112.5] |
| d3_black | #504E57 | [0.316, 0.307, 0.342] | [0.43, 0.007, -0.013] | [0.43, 0.015, 297.5] |
| d3_white | #505147 | [0.312, 0.317, 0.28] | [0.43, -0.006, 0.014] | [0.43, 0.015, 112.5] |
| d1_red | #5A3336 | [0.351, 0.2, 0.213] | [0.37, 0.054, 0.014] | [0.37, 0.056, 14.327] |
| d1_orange | #5A3619 | [0.354, 0.211, 0.097] | [0.37, 0.037, 0.056] | [0.37, 0.067, 56.904] |
| d1_yellow | #4C3F03 | [0.3, 0.245, 0.011] | [0.37, -0.006, 0.074] | [0.37, 0.074, 94.444] |
| d1_chartreuse | #32471A | [0.196, 0.28, 0.103] | [0.37, -0.048, 0.056] | [0.37, 0.074, 130.556] |
| d1_green | #0F4B39 | [0.06, 0.294, 0.223] | [0.37, -0.066, 0.014] | [0.37, 0.067, 168.096] |
| d1_cyan | #124850 | [0.07, 0.281, 0.315] | [0.37, -0.048, -0.029] | [0.37, 0.056, 210.673] |
| d1_blue | #334059 | [0.199, 0.25, 0.347] | [0.37, -0.006, -0.046] | [0.37, 0.046, 262.909] |
| d1_purple | #4B374E | [0.296, 0.218, 0.307] | [0.37, 0.037, -0.029] | [0.37, 0.046, 322.091] |
| d3_red | #6F4046 | [0.436, 0.251, 0.274] | [0.43, 0.064, 0.014] | [0.43, 0.066, 12.17] |
| d3_orange | #704423 | [0.439, 0.265, 0.136] | [0.43, 0.044, 0.063] | [0.43, 0.077, 55.369] |
| d3_yellow | #5F4E09 | [0.373, 0.307, 0.034] | [0.43, -0.006, 0.084] | [0.43, 0.084, 93.916] |
| d3_chartreuse | #3F5925 | [0.247, 0.349, 0.144] | [0.43, -0.055, 0.063] | [0.43, 0.084, 131.084] |
| d3_green | #155D49 | [0.083, 0.365, 0.286] | [0.43, -0.076, 0.014] | [0.43, 0.077, 169.631] |
| d3_cyan | #185965 | [0.095, 0.349, 0.397] | [0.43, -0.055, -0.036] | [0.43, 0.066, 212.83] |
| d3_blue | #404F6F | [0.251, 0.312, 0.436] | [0.43, -0.006, -0.056] | [0.43, 0.056, 264.162] |
| d3_purple | #5E4663 | [0.369, 0.273, 0.387] | [0.43, 0.044, -0.036] | [0.43, 0.056, 320.838] |
| v0_black | #F6F3FE | [0.965, 0.954, 0.997] | [0.97, 0.007, -0.013] | [0.97, 0.015, 297.5] |
| v0_white | #F5F6EB | [0.961, 0.966, 0.921] | [0.97, -0.006, 0.014] | [0.97, 0.015, 112.5] |
| v1_black | #E9E6F1 | [0.912, 0.902, 0.945] | [0.93, 0.007, -0.013] | [0.93, 0.015, 297.5] |
| v1_white | #E8E9DE | [0.908, 0.914, 0.87] | [0.93, -0.006, 0.014] | [0.93, 0.015, 112.5] |
| v2_black | #DCD9E4 | [0.861, 0.85, 0.893] | [0.89, 0.007, -0.013] | [0.89, 0.015, 297.5] |
| v2_white | #DBDCD1 | [0.857, 0.862, 0.819] | [0.89, -0.006, 0.014] | [0.89, 0.015, 112.5] |
| v3_black | #CFCCD7 | [0.81, 0.799, 0.841] | [0.85, 0.007, -0.013] | [0.85, 0.015, 297.5] |
| v3_white | #CECFC4 | [0.806, 0.811, 0.768] | [0.85, -0.006, 0.014] | [0.85, 0.015, 112.5] |
| v2_red | #FECCCF | [0.995, 0.801, 0.813] | [0.89, 0.054, 0.014] | [0.89, 0.056, 14.327] |
| v2_orange | #FED0B0 | [0.996, 0.817, 0.69] | [0.89, 0.037, 0.056] | [0.89, 0.067, 56.904] |
| v2_yellow | #EADBA3 | [0.919, 0.858, 0.639] | [0.89, -0.006, 0.074] | [0.89, 0.074, 94.444] |
| v2_chartreuse | #CAE5B2 | [0.793, 0.899, 0.698] | [0.89, -0.048, 0.056] | [0.89, 0.074, 130.556] |
| v2_green | #B0EAD2 | [0.689, 0.916, 0.825] | [0.89, -0.066, 0.014] | [0.89, 0.067, 168.096] |
| v2_cyan | #B0E5F0 | [0.692, 0.9, 0.94] | [0.89, -0.048, -0.029] | [0.89, 0.056, 210.673] |
| v2_blue | #CBDBFA | [0.795, 0.86, 0.982] | [0.89, -0.006, -0.046] | [0.89, 0.046, 262.909] |
| v2_purple | #EAD1ED | [0.917, 0.82, 0.931] | [0.89, 0.037, -0.029] | [0.89, 0.046, 322.091] |


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
|---|---|---|---|
| d0_black | #E5E3EE | [0.9, 0.889, 0.931] | [0.92, 0.007, -0.013] | [0.92, 0.015, 297.5] |
| d0_white | #E4E6DB | [0.896, 0.901, 0.857] | [0.92, -0.006, 0.014] | [0.92, 0.015, 112.5] |
| d1_black | #DCD9E4 | [0.861, 0.85, 0.893] | [0.89, 0.007, -0.013] | [0.89, 0.015, 297.5] |
| d1_white | #DBDCD1 | [0.857, 0.862, 0.819] | [0.89, -0.006, 0.014] | [0.89, 0.015, 112.5] |
| d2_black | #D2CFDA | [0.823, 0.812, 0.854] | [0.86, 0.007, -0.013] | [0.86, 0.015, 297.5] |
| d2_white | #D1D2C7 | [0.819, 0.824, 0.781] | [0.86, -0.006, 0.014] | [0.86, 0.015, 112.5] |
| d3_black | #C8C5D0 | [0.785, 0.774, 0.816] | [0.83, 0.007, -0.013] | [0.83, 0.015, 297.5] |
| d3_white | #C7C8BD | [0.781, 0.786, 0.743] | [0.83, -0.006, 0.014] | [0.83, 0.015, 112.5] |
| d1_red | #FECCCF | [0.995, 0.801, 0.813] | [0.89, 0.054, 0.014] | [0.89, 0.056, 14.327] |
| d1_orange | #FED0B0 | [0.996, 0.817, 0.69] | [0.89, 0.037, 0.056] | [0.89, 0.067, 56.904] |
| d1_yellow | #EADBA3 | [0.919, 0.858, 0.639] | [0.89, -0.006, 0.074] | [0.89, 0.074, 94.444] |
| d1_chartreuse | #CAE5B2 | [0.793, 0.899, 0.698] | [0.89, -0.048, 0.056] | [0.89, 0.074, 130.556] |
| d1_green | #B0EAD2 | [0.689, 0.916, 0.825] | [0.89, -0.066, 0.014] | [0.89, 0.067, 168.096] |
| d1_cyan | #B0E5F0 | [0.692, 0.9, 0.94] | [0.89, -0.048, -0.029] | [0.89, 0.056, 210.673] |
| d1_blue | #CBDBFA | [0.795, 0.86, 0.982] | [0.89, -0.006, -0.046] | [0.89, 0.046, 262.909] |
| d1_purple | #EAD1ED | [0.917, 0.82, 0.931] | [0.89, 0.037, -0.029] | [0.89, 0.046, 322.091] |
| d3_red | #EFB6BC | [0.936, 0.715, 0.736] | [0.83, 0.064, 0.014] | [0.83, 0.066, 12.17] |
| d3_orange | #EFBB97 | [0.938, 0.732, 0.594] | [0.83, 0.044, 0.063] | [0.83, 0.077, 55.369] |
| d3_yellow | #D9C788 | [0.852, 0.78, 0.532] | [0.83, -0.006, 0.084] | [0.83, 0.084, 93.916] |
| d3_chartreuse | #B4D39A | [0.707, 0.828, 0.603] | [0.83, -0.055, 0.063] | [0.83, 0.084, 131.084] |
| d3_green | #94D8BF | [0.581, 0.847, 0.75] | [0.83, -0.076, 0.014] | [0.83, 0.077, 169.631] |
| d3_cyan | #95D3E1 | [0.585, 0.828, 0.881] | [0.83, -0.055, -0.036] | [0.83, 0.066, 212.83] |
| d3_blue | #B5C8ED | [0.71, 0.783, 0.929] | [0.83, -0.006, -0.056] | [0.83, 0.056, 264.162] |
| d3_purple | #D9BCDE | [0.85, 0.737, 0.871] | [0.83, 0.044, -0.036] | [0.83, 0.056, 320.838] |
| v0_black | #2C2A32 | [0.173, 0.164, 0.196] | [0.29, 0.007, -0.013] | [0.29, 0.015, 297.5] |
| v0_white | #2B2C24 | [0.17, 0.173, 0.14] | [0.29, -0.006, 0.014] | [0.29, 0.015, 112.5] |
| v1_black | #36343C | [0.212, 0.203, 0.236] | [0.33, 0.007, -0.013] | [0.33, 0.015, 297.5] |
| v1_white | #35362E | [0.209, 0.213, 0.178] | [0.33, -0.006, 0.014] | [0.33, 0.015, 112.5] |
| v2_black | #403E47 | [0.253, 0.244, 0.278] | [0.37, 0.007, -0.013] | [0.37, 0.015, 297.5] |
| v2_white | #404138 | [0.249, 0.254, 0.218] | [0.37, -0.006, 0.014] | [0.37, 0.015, 112.5] |
| v3_black | #4B4952 | [0.294, 0.285, 0.32] | [0.41, 0.007, -0.013] | [0.41, 0.015, 297.5] |
| v3_white | #4A4B42 | [0.291, 0.295, 0.259] | [0.41, -0.006, 0.014] | [0.41, 0.015, 112.5] |
| v2_red | #5A3336 | [0.351, 0.2, 0.213] | [0.37, 0.054, 0.014] | [0.37, 0.056, 14.327] |
| v2_orange | #5A3619 | [0.354, 0.211, 0.097] | [0.37, 0.037, 0.056] | [0.37, 0.067, 56.904] |
| v2_yellow | #4C3F03 | [0.3, 0.245, 0.011] | [0.37, -0.006, 0.074] | [0.37, 0.074, 94.444] |
| v2_chartreuse | #32471A | [0.196, 0.28, 0.103] | [0.37, -0.048, 0.056] | [0.37, 0.074, 130.556] |
| v2_green | #0F4B39 | [0.06, 0.294, 0.223] | [0.37, -0.066, 0.014] | [0.37, 0.067, 168.096] |
| v2_cyan | #124850 | [0.07, 0.281, 0.315] | [0.37, -0.048, -0.029] | [0.37, 0.056, 210.673] |
| v2_blue | #334059 | [0.199, 0.25, 0.347] | [0.37, -0.006, -0.046] | [0.37, 0.046, 262.909] |
| v2_purple | #4B374E | [0.296, 0.218, 0.307] | [0.37, 0.037, -0.029] | [0.37, 0.046, 322.091] |


### contrast

| | v0_black | v0_white | v1_black | v1_white | v2_black | v2_white |
|---|---|---|---|---|---|---|
| d0_black | AAA | AAA | AAA | AAA | AAA | AAA |
| d0_white | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_black | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_white | AAA | AAA | AAA | AAA | AAA | AAA |
| d2_black | AAA | AAA | AAA | AAA | AA | AA |
| d2_white | AAA | AAA | AAA | AAA | AA | AA |
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
| d0_black | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d0_white | AAA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_black | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_white | AA | AA | AAA | AAA | AAA | AAA | AAA | AAA | AAA | AAA |
| d2_black | AA | AA | AA | AA | AA | AA | AA | AA | AA | AA |
| d2_white | AA | AA | AAA | AA | AA | AA | AA | AA | AA | AA |
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
