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
| d0_black | #36343C | [0.212, 0.203, 0.236] | [0.33, 0.007, -0.013] | [0.33, 0.015, 297.5] |
| d0_white | #35362E | [0.209, 0.213, 0.178] | [0.33, -0.006, 0.014] | [0.33, 0.015, 112.5] |
| d1_black | #3E3C44 | [0.242, 0.234, 0.267] | [0.36, 0.007, -0.013] | [0.36, 0.015, 297.5] |
| d1_white | #3D3E35 | [0.239, 0.243, 0.208] | [0.36, -0.006, 0.014] | [0.36, 0.015, 112.5] |
| d2_black | #46434C | [0.273, 0.264, 0.299] | [0.39, 0.007, -0.013] | [0.39, 0.015, 297.5] |
| d2_white | #45463D | [0.27, 0.274, 0.239] | [0.39, -0.006, 0.014] | [0.39, 0.015, 112.5] |
| d3_black | #4E4B54 | [0.305, 0.296, 0.331] | [0.42, 0.007, -0.013] | [0.42, 0.015, 297.5] |
| d3_white | #4D4E45 | [0.302, 0.306, 0.27] | [0.42, -0.006, 0.014] | [0.42, 0.015, 112.5] |
| d1_red | #553234 | [0.333, 0.195, 0.204] | [0.36, 0.049, 0.014] | [0.36, 0.051, 15.713] |
| d1_orange | #553419 | [0.335, 0.205, 0.1] | [0.36, 0.033, 0.053] | [0.36, 0.062, 57.852] |
| d1_yellow | #493C07 | [0.285, 0.236, 0.028] | [0.36, -0.006, 0.069] | [0.36, 0.069, 94.765] |
| d1_chartreuse | #31441B | [0.191, 0.267, 0.105] | [0.36, -0.045, 0.053] | [0.36, 0.069, 130.235] |
| d1_green | #144736 | [0.077, 0.28, 0.213] | [0.36, -0.061, 0.014] | [0.36, 0.062, 167.148] |
| d1_cyan | #15444C | [0.084, 0.268, 0.297] | [0.36, -0.045, -0.025] | [0.36, 0.051, 209.287] |
| d1_blue | #313D53 | [0.193, 0.24, 0.326] | [0.36, -0.006, -0.041] | [0.36, 0.042, 262.057] |
| d1_purple | #48364A | [0.282, 0.211, 0.29] | [0.36, 0.033, -0.025] | [0.36, 0.042, 322.943] |
| d3_red | #6C3D43 | [0.424, 0.241, 0.264] | [0.42, 0.064, 0.014] | [0.42, 0.066, 12.17] |
| d3_orange | #6D4120 | [0.427, 0.254, 0.125] | [0.42, 0.044, 0.063] | [0.42, 0.077, 55.369] |
| d3_yellow | #5C4C04 | [0.362, 0.296, 0.016] | [0.42, -0.006, 0.084] | [0.42, 0.084, 93.916] |
| d3_chartreuse | #3C5622 | [0.237, 0.338, 0.133] | [0.42, -0.055, 0.063] | [0.42, 0.084, 131.084] |
| d3_green | #115A46 | [0.066, 0.354, 0.275] | [0.42, -0.076, 0.014] | [0.42, 0.077, 169.631] |
| d3_cyan | #145662 | [0.08, 0.338, 0.385] | [0.42, -0.055, -0.036] | [0.42, 0.066, 212.83] |
| d3_blue | #3D4D6C | [0.241, 0.301, 0.424] | [0.42, -0.006, -0.056] | [0.42, 0.056, 264.162] |
| d3_purple | #5B4360 | [0.358, 0.262, 0.376] | [0.42, 0.044, -0.036] | [0.42, 0.056, 320.838] |
| v0_black | #F3F0FB | [0.952, 0.941, 0.984] | [0.96, 0.007, -0.013] | [0.96, 0.015, 297.5] |
| v0_white | #F2F3E8 | [0.947, 0.953, 0.908] | [0.96, -0.006, 0.014] | [0.96, 0.015, 112.5] |
| v1_black | #E5E3EE | [0.9, 0.889, 0.931] | [0.92, 0.007, -0.013] | [0.92, 0.015, 297.5] |
| v1_white | #E4E6DB | [0.896, 0.901, 0.857] | [0.92, -0.006, 0.014] | [0.92, 0.015, 112.5] |
| v2_black | #D8D6E0 | [0.848, 0.837, 0.88] | [0.88, 0.007, -0.013] | [0.88, 0.015, 297.5] |
| v2_white | #D7D9CE | [0.844, 0.85, 0.806] | [0.88, -0.006, 0.014] | [0.88, 0.015, 112.5] |
| v3_black | #CBC9D3 | [0.797, 0.787, 0.828] | [0.84, 0.007, -0.013] | [0.84, 0.015, 297.5] |
| v3_white | #CACCC1 | [0.793, 0.799, 0.756] | [0.84, -0.006, 0.014] | [0.84, 0.015, 112.5] |
| v2_red | #F8CBCC | [0.971, 0.794, 0.8] | [0.88, 0.049, 0.014] | [0.88, 0.051, 15.713] |
| v2_orange | #F8CEB0 | [0.972, 0.808, 0.689] | [0.88, 0.033, 0.053] | [0.88, 0.062, 57.852] |
| v2_yellow | #E6D8A4 | [0.901, 0.846, 0.643] | [0.88, -0.006, 0.069] | [0.88, 0.069, 94.765] |
| v2_chartreuse | #C8E1B2 | [0.786, 0.884, 0.696] | [0.88, -0.045, 0.053] | [0.88, 0.069, 130.235] |
| v2_green | #B1E5CF | [0.693, 0.899, 0.811] | [0.88, -0.061, 0.014] | [0.88, 0.062, 167.148] |
| v2_cyan | #B1E1EA | [0.694, 0.884, 0.917] | [0.88, -0.045, -0.025] | [0.88, 0.051, 209.287] |
| v2_blue | #C9D8F4 | [0.788, 0.848, 0.956] | [0.88, -0.006, -0.041] | [0.88, 0.042, 262.057] |
| v2_purple | #E5CFE8 | [0.899, 0.811, 0.909] | [0.88, 0.033, -0.025] | [0.88, 0.042, 322.943] |


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
| d0_black | #DFDCE7 | [0.874, 0.863, 0.906] | [0.9, 0.007, -0.013] | [0.9, 0.015, 297.5] |
| d0_white | #DEDFD4 | [0.87, 0.875, 0.831] | [0.9, -0.006, 0.014] | [0.9, 0.015, 112.5] |
| d1_black | #D5D2DD | [0.835, 0.825, 0.867] | [0.87, 0.007, -0.013] | [0.87, 0.015, 297.5] |
| d1_white | #D4D5CA | [0.831, 0.837, 0.793] | [0.87, -0.006, 0.014] | [0.87, 0.015, 112.5] |
| d2_black | #C8C5D0 | [0.785, 0.774, 0.816] | [0.83, 0.007, -0.013] | [0.83, 0.015, 297.5] |
| d2_white | #C7C8BD | [0.781, 0.786, 0.743] | [0.83, -0.006, 0.014] | [0.83, 0.015, 112.5] |
| d3_black | #BEBCC6 | [0.747, 0.737, 0.778] | [0.8, 0.007, -0.013] | [0.8, 0.015, 297.5] |
| d3_white | #BEBFB4 | [0.743, 0.748, 0.706] | [0.8, -0.006, 0.014] | [0.8, 0.015, 112.5] |
| d1_red | #F4C7C9 | [0.958, 0.782, 0.788] | [0.87, 0.049, 0.014] | [0.87, 0.051, 15.713] |
| d1_orange | #F5CBAC | [0.959, 0.795, 0.676] | [0.87, 0.033, 0.053] | [0.87, 0.062, 57.852] |
| d1_yellow | #E2D4A1 | [0.888, 0.833, 0.63] | [0.87, -0.006, 0.069] | [0.87, 0.069, 94.765] |
| d1_chartreuse | #C5DEAE | [0.773, 0.871, 0.684] | [0.87, -0.045, 0.053] | [0.87, 0.069, 130.235] |
| d1_green | #ADE2CC | [0.68, 0.886, 0.799] | [0.87, -0.061, 0.014] | [0.87, 0.062, 167.148] |
| d1_cyan | #AEDEE6 | [0.682, 0.871, 0.904] | [0.87, -0.045, -0.025] | [0.87, 0.051, 209.287] |
| d1_blue | #C6D5F0 | [0.775, 0.835, 0.942] | [0.87, -0.006, -0.041] | [0.87, 0.042, 262.057] |
| d1_purple | #E2CCE4 | [0.887, 0.798, 0.896] | [0.87, 0.033, -0.025] | [0.87, 0.042, 322.943] |
| d3_red | #E5ADB2 | [0.897, 0.678, 0.699] | [0.8, 0.064, 0.014] | [0.8, 0.066, 12.17] |
| d3_orange | #E5B18E | [0.899, 0.695, 0.557] | [0.8, 0.044, 0.063] | [0.8, 0.077, 55.369] |
| d3_yellow | #CFBD7E | [0.813, 0.742, 0.496] | [0.8, -0.006, 0.084] | [0.8, 0.084, 93.916] |
| d3_chartreuse | #ABC990 | [0.67, 0.79, 0.566] | [0.8, -0.055, 0.063] | [0.8, 0.084, 131.084] |
| d3_green | #8BCEB6 | [0.544, 0.809, 0.713] | [0.8, -0.076, 0.014] | [0.8, 0.077, 169.631] |
| d3_cyan | #8CC9D7 | [0.548, 0.79, 0.843] | [0.8, -0.055, -0.036] | [0.8, 0.066, 212.83] |
| d3_blue | #ACBEE3 | [0.673, 0.745, 0.89] | [0.8, -0.006, -0.056] | [0.8, 0.056, 264.162] |
| d3_purple | #CFB2D4 | [0.811, 0.7, 0.832] | [0.8, 0.044, -0.036] | [0.8, 0.056, 320.838] |
| v0_black | #25232B | [0.144, 0.136, 0.167] | [0.26, 0.007, -0.013] | [0.26, 0.015, 297.5] |
| v0_white | #24251D | [0.141, 0.144, 0.112] | [0.26, -0.006, 0.014] | [0.26, 0.015, 112.5] |
| v1_black | #2E2C35 | [0.182, 0.174, 0.206] | [0.3, 0.007, -0.013] | [0.3, 0.015, 297.5] |
| v1_white | #2E2F26 | [0.179, 0.183, 0.149] | [0.3, -0.006, 0.014] | [0.3, 0.015, 112.5] |
| v2_black | #39363F | [0.222, 0.213, 0.247] | [0.34, 0.007, -0.013] | [0.34, 0.015, 297.5] |
| v2_white | #383930 | [0.219, 0.223, 0.188] | [0.34, -0.006, 0.014] | [0.34, 0.015, 112.5] |
| v3_black | #43414A | [0.263, 0.254, 0.288] | [0.38, 0.007, -0.013] | [0.38, 0.015, 297.5] |
| v3_white | #42433A | [0.26, 0.264, 0.228] | [0.38, -0.006, 0.014] | [0.38, 0.015, 112.5] |
| v2_red | #4F2D2F | [0.31, 0.175, 0.184] | [0.34, 0.049, 0.014] | [0.34, 0.051, 15.713] |
| v2_orange | #502F14 | [0.313, 0.184, 0.078] | [0.34, 0.033, 0.053] | [0.34, 0.062, 57.852] |
| v2_yellow | #433701 | [0.264, 0.216, 0.003] | [0.34, -0.006, 0.069] | [0.34, 0.069, 94.765] |
| v2_chartreuse | #2C3F15 | [0.171, 0.247, 0.084] | [0.34, -0.045, 0.053] | [0.34, 0.069, 130.235] |
| v2_green | #0D4231 | [0.05, 0.259, 0.193] | [0.34, -0.061, 0.014] | [0.34, 0.062, 167.148] |
| v2_cyan | #0F3F46 | [0.058, 0.247, 0.275] | [0.34, -0.045, -0.025] | [0.34, 0.051, 209.287] |
| v2_blue | #2C384E | [0.173, 0.22, 0.305] | [0.34, -0.006, -0.041] | [0.34, 0.042, 262.057] |
| v2_purple | #423145 | [0.261, 0.191, 0.269] | [0.34, 0.033, -0.025] | [0.34, 0.042, 322.943] |


### contrast

| | v0_black | v0_white | v1_black | v1_white | v2_black | v2_white |
|---|---|---|---|---|---|---|
| d0_black      | AAA | AAA | AAA | AAA | AAA | AAA |
| d0_white      | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_black      | AAA | AAA | AAA | AAA | AAA | AAA |
| d1_white      | AAA | AAA | AAA | AAA | AAA | AAA |
| d2_black      | AAA | AAA | AAA | AAA | AA  | AA  |
| d2_white      | AAA | AAA | AAA | AAA | AAA | AA  |
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
| d2_black      | AA  | AA  | AAA | AAA | AA  | AA  | AA  | AA  | AA  | AAA |
| d2_white      | AA  | AA  | AAA | AAA | AA  | AA  | AA  | AA  | AA  | AAA |
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
