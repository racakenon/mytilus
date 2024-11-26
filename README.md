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
| d0_black | #3B363D | [0.23, 0.21, 0.24] |  [0.34, 0.01, -0.01] |
| d0_white | #353A32 | [0.21, 0.23, 0.2] |  [0.34, -0.01, 0.01] |
| d1_black | #433D45 | [0.26, 0.24, 0.27] |  [0.37, 0.01, -0.01] |
| d1_white | #3C423A | [0.24, 0.26, 0.23] |  [0.37, -0.01, 0.01] |
| d2_black | #4B454D | [0.29, 0.27, 0.3] |  [0.4, 0.01, -0.01] |
| d2_white | #444A42 | [0.27, 0.29, 0.26] |  [0.4, -0.01, 0.01] |
| d3_black | #534D56 | [0.33, 0.3, 0.34] |  [0.43, 0.01, -0.01] |
| d3_white | #4C524A | [0.3, 0.32, 0.29] |  [0.43, -0.01, 0.01] |
| d1_red | #583244 | [0.35, 0.19, 0.27] |  [0.37, 0.06, -0.01] |
| d1_orange | #583530 | [0.35, 0.21, 0.19] |  [0.37, 0.05, 0.02] |
| d1_yellow | #4D3D27 | [0.3, 0.24, 0.15] |  [0.37, 0.01, 0.04] |
| d1_chartreuse | #384431 | [0.22, 0.27, 0.19] |  [0.37, -0.02, 0.02] |
| d1_green | #234746 | [0.14, 0.28, 0.28] |  [0.37, -0.04, -0.01] |
| d1_cyan | #254359 | [0.15, 0.26, 0.35] |  [0.37, -0.02, -0.05] |
| d1_blue | #393C60 | [0.22, 0.23, 0.38] |  [0.37, 0.01, -0.06] |
| d1_purple | #4D3557 | [0.3, 0.21, 0.34] |  [0.37, 0.05, -0.05] |
| d3_red | #6D3F54 | [0.43, 0.25, 0.33] |  [0.43, 0.07, -0.01] |
| d3_orange | #6E433B | [0.43, 0.26, 0.23] |  [0.43, 0.05, 0.03] |
| d3_yellow | #5F4C2F | [0.37, 0.3, 0.18] |  [0.43, 0.01, 0.05] |
| d3_chartreuse | #45563C | [0.27, 0.34, 0.24] |  [0.43, -0.03, 0.03] |
| d3_green | #2B5957 | [0.17, 0.35, 0.34] |  [0.43, -0.05, -0.01] |
| d3_cyan | #2D546E | [0.18, 0.33, 0.43] |  [0.43, -0.03, -0.05] |
| d3_blue | #474B76 | [0.28, 0.3, 0.46] |  [0.43, 0.01, -0.07] |
| d3_purple | #5F436C | [0.37, 0.26, 0.42] |  [0.43, 0.05, -0.05] |
| v0_black | #F9F2FC | [0.98, 0.95, 0.99] |  [0.97, 0.01, -0.01] |
| v0_white | #F1F8ED | [0.94, 0.97, 0.93] |  [0.97, -0.01, 0.01] |
| v1_black | #F0E2F6 | [0.94, 0.89, 0.96] |  [0.93, 0.02, -0.02] |
| v1_white | #E0EDD9 | [0.88, 0.93, 0.85] |  [0.93, -0.02, 0.02] |
| v2_black | #E2D5E9 | [0.89, 0.84, 0.91] |  [0.89, 0.02, -0.02] |
| v2_white | #D2E0CC | [0.83, 0.88, 0.8] |  [0.89, -0.02, 0.02] |
| v3_black | #D5C8DC | [0.84, 0.79, 0.86] |  [0.85, 0.02, -0.02] |
| v3_white | #C6D2BF | [0.77, 0.83, 0.75] |  [0.85, -0.02, 0.02] |
| v2_red | #E5D8CB | [0.9, 0.85, 0.8] |  [0.89, 0.01, 0.02] |
| v2_orange | #E6DABC | [0.9, 0.86, 0.74] |  [0.89, 0.0, 0.04] |
| v2_yellow | #DBDFB5 | [0.86, 0.88, 0.71] |  [0.89, -0.02, 0.05] |
| v2_chartreuse | #CAE4BD | [0.79, 0.9, 0.74] |  [0.89, -0.04, 0.04] |
| v2_green | #BDE6CD | [0.74, 0.9, 0.8] |  [0.89, -0.05, 0.02] |
| v2_cyan | #BEE4DC | [0.74, 0.9, 0.86] |  [0.89, -0.04, 0.0] |
| v2_blue | #CAE0E1 | [0.79, 0.88, 0.88] |  [0.89, -0.02, -0.01] |
| v2_purple | #DBDBDA | [0.86, 0.86, 0.86] |  [0.89, -0.0, -0.0] |


### contrast

| | v0_black | v0_white | v1_black | v1_white | v2_black | v2_white |
|---|---|---|---|---|---|---|
| d0_black | 10.8 | 10.89 | 9.54 | 9.71 | 8.42 | 8.58 |
| d0_white | 10.67 | 10.77 | 9.43 | 9.6 | 8.33 | 8.48 |
| d1_black | 9.58 | 9.67 | 8.46 | 8.62 | 7.48 | 7.62 |
| d1_white | 9.47 | 9.55 | 8.36 | 8.51 | 7.39 | 7.52 |
| d2_black | 8.46 | 8.54 | 7.47 | 7.61 | 6.6 | 6.73 |
| d2_white | 8.36 | 8.43 | 7.38 | 7.51 | 6.52 | 6.64 |
| d3_black | 7.45 | 7.51 | 6.58 | 6.7 | 5.81 | 5.92 |
| d3_white | 7.35 | 7.42 | 6.5 | 6.61 | 5.74 | 5.85 |
| d1_red | 9.84 | 9.92 | 8.69 | 8.85 | 7.67 | 7.82 |
| d1_orange | 9.75 | 9.84 | 8.61 | 8.77 | 7.61 | 7.75 |
| d1_yellow | 9.57 | 9.66 | 8.46 | 8.61 | 7.47 | 7.61 |
| d1_chartreuse | 9.4 | 9.48 | 8.3 | 8.45 | 7.33 | 7.47 |
| d1_green | 9.34 | 9.42 | 8.25 | 8.4 | 7.29 | 7.42 |
| d1_cyan | 9.45 | 9.53 | 8.35 | 8.5 | 7.37 | 7.51 |
| d1_blue | 9.65 | 9.74 | 8.53 | 8.68 | 7.53 | 7.67 |
| d1_purple | 9.8 | 9.89 | 8.66 | 8.82 | 7.65 | 7.79 |
| d3_red | 7.7 | 7.77 | 6.8 | 6.92 | 6.01 | 6.12 |
| d3_orange | 7.62 | 7.68 | 6.73 | 6.85 | 5.94 | 6.05 |
| d3_yellow | 7.44 | 7.51 | 6.57 | 6.69 | 5.81 | 5.92 |
| d3_chartreuse | 7.27 | 7.33 | 6.42 | 6.54 | 5.67 | 5.78 |
| d3_green | 7.21 | 7.27 | 6.37 | 6.48 | 5.63 | 5.73 |
| d3_cyan | 7.32 | 7.38 | 6.47 | 6.58 | 5.71 | 5.82 |
| d3_blue | 7.52 | 7.58 | 6.64 | 6.76 | 5.87 | 5.98 |
| d3_purple | 7.67 | 7.73 | 6.77 | 6.9 | 5.98 | 6.1 |


| | v3_black | v3_white | v2_red | v2_orange | v2_yellow | v2_chartreuse | v2_green | v2_cyan | v2_blue | v2_purple |
|---|---|---|---|---|---|---|---|---|---|---|
| d0_black | 7.41 | 7.55 | 8.48 | 8.51 | 8.59 | 8.66 | 8.68 | 8.65 | 8.57 | 8.5 |
| d0_white | 7.32 | 7.47 | 8.38 | 8.41 | 8.49 | 8.56 | 8.59 | 8.55 | 8.47 | 8.41 |
| d1_black | 6.57 | 6.7 | 7.53 | 7.55 | 7.62 | 7.68 | 7.71 | 7.68 | 7.61 | 7.55 |
| d1_white | 6.49 | 6.62 | 7.44 | 7.46 | 7.53 | 7.59 | 7.62 | 7.58 | 7.52 | 7.46 |
| d2_black | 5.81 | 5.92 | 6.65 | 6.67 | 6.73 | 6.79 | 6.81 | 6.78 | 6.72 | 6.67 |
| d2_white | 5.73 | 5.85 | 6.56 | 6.59 | 6.64 | 6.7 | 6.72 | 6.69 | 6.64 | 6.58 |
| d3_black | 5.11 | 5.21 | 5.85 | 5.87 | 5.92 | 5.97 | 5.99 | 5.97 | 5.92 | 5.87 |
| d3_white | 5.05 | 5.14 | 5.78 | 5.8 | 5.85 | 5.9 | 5.92 | 5.89 | 5.84 | 5.79 |
| d1_red | 6.75 | 6.88 | 7.73 | 7.76 | 7.82 | 7.89 | 7.91 | 7.88 | 7.81 | 7.75 |
| d1_orange | 6.69 | 6.82 | 7.66 | 7.69 | 7.75 | 7.82 | 7.84 | 7.81 | 7.74 | 7.68 |
| d1_yellow | 6.57 | 6.7 | 7.52 | 7.55 | 7.61 | 7.68 | 7.7 | 7.67 | 7.6 | 7.54 |
| d1_chartreuse | 6.45 | 6.57 | 7.38 | 7.41 | 7.47 | 7.53 | 7.56 | 7.53 | 7.46 | 7.4 |
| d1_green | 6.41 | 6.53 | 7.33 | 7.36 | 7.43 | 7.49 | 7.51 | 7.48 | 7.41 | 7.35 |
| d1_cyan | 6.48 | 6.61 | 7.42 | 7.45 | 7.52 | 7.58 | 7.6 | 7.57 | 7.51 | 7.44 |
| d1_blue | 6.62 | 6.75 | 7.58 | 7.61 | 7.68 | 7.74 | 7.77 | 7.73 | 7.67 | 7.6 |
| d1_purple | 6.73 | 6.86 | 7.7 | 7.73 | 7.8 | 7.86 | 7.89 | 7.85 | 7.79 | 7.72 |
| d3_red | 5.28 | 5.39 | 6.05 | 6.07 | 6.12 | 6.17 | 6.19 | 6.17 | 6.11 | 6.07 |
| d3_orange | 5.23 | 5.33 | 5.98 | 6.01 | 6.06 | 6.11 | 6.13 | 6.1 | 6.05 | 6.0 |
| d3_yellow | 5.11 | 5.21 | 5.85 | 5.87 | 5.92 | 5.97 | 5.99 | 5.96 | 5.91 | 5.86 |
| d3_chartreuse | 4.99 | 5.09 | 5.71 | 5.73 | 5.78 | 5.83 | 5.85 | 5.82 | 5.77 | 5.73 |
| d3_green | 4.95 | 5.04 | 5.66 | 5.69 | 5.73 | 5.78 | 5.8 | 5.78 | 5.73 | 5.68 |
| d3_cyan | 5.02 | 5.12 | 5.75 | 5.77 | 5.82 | 5.87 | 5.89 | 5.86 | 5.81 | 5.77 |
| d3_blue | 5.16 | 5.26 | 5.91 | 5.93 | 5.98 | 6.03 | 6.05 | 6.02 | 5.97 | 5.92 |
| d3_purple | 5.26 | 5.36 | 6.02 | 6.05 | 6.1 | 6.15 | 6.17 | 6.14 | 6.09 | 6.04 |


## dark colors

| | hex | rgb | OKlab |
|---|---|---|
| d0_black | #DFD8E2 | [0.87, 0.85, 0.88] |  [0.89, 0.01, -0.01] |
| d0_white | #D7DDD3 | [0.84, 0.87, 0.83] |  [0.89, -0.01, 0.01] |
| d1_black | #D5CED8 | [0.83, 0.81, 0.85] |  [0.86, 0.01, -0.01] |
| d1_white | #CDD3CA | [0.8, 0.83, 0.79] |  [0.86, -0.01, 0.01] |
| d2_black | #CBC5CE | [0.8, 0.77, 0.81] |  [0.83, 0.01, -0.01] |
| d2_white | #C3CAC0 | [0.77, 0.79, 0.75] |  [0.83, -0.01, 0.01] |
| d3_black | #C1BBC4 | [0.76, 0.73, 0.77] |  [0.8, 0.01, -0.01] |
| d3_white | #BAC0B6 | [0.73, 0.75, 0.72] |  [0.8, -0.01, 0.01] |
| d1_red | #F2C1D7 | [0.95, 0.76, 0.84] |  [0.86, 0.06, -0.01] |
| d1_orange | #F2C5BE | [0.95, 0.77, 0.74] |  [0.86, 0.05, 0.02] |
| d1_yellow | #E1CEB4 | [0.88, 0.81, 0.71] |  [0.86, 0.01, 0.04] |
| d1_chartreuse | #C7D7C0 | [0.78, 0.84, 0.75] |  [0.86, -0.02, 0.02] |
| d1_green | #B3DAD9 | [0.7, 0.85, 0.85] |  [0.86, -0.04, -0.01] |
| d1_cyan | #B4D6F1 | [0.7, 0.84, 0.94] |  [0.86, -0.02, -0.05] |
| d1_blue | #C8CDF9 | [0.79, 0.81, 0.98] |  [0.86, 0.01, -0.06] |
| d1_purple | #E1C5EF | [0.88, 0.77, 0.94] |  [0.86, 0.05, -0.05] |
| d3_red | #E3ABC3 | [0.89, 0.67, 0.76] |  [0.8, 0.07, -0.01] |
| d3_orange | #E3B0A6 | [0.89, 0.69, 0.65] |  [0.8, 0.05, 0.03] |
| d3_yellow | #D0BA9A | [0.82, 0.73, 0.6] |  [0.8, 0.01, 0.05] |
| d3_chartreuse | #B2C5A8 | [0.7, 0.77, 0.66] |  [0.8, -0.03, 0.03] |
| d3_green | #98C9C6 | [0.6, 0.79, 0.78] |  [0.8, -0.05, -0.01] |
| d3_cyan | #99C4E2 | [0.6, 0.77, 0.88] |  [0.8, -0.03, -0.05] |
| d3_blue | #B3BAEC | [0.7, 0.73, 0.92] |  [0.8, 0.01, -0.07] |
| d3_purple | #D0B0DF | [0.82, 0.69, 0.88] |  [0.8, 0.05, -0.05] |
| v0_black | #242027 | [0.14, 0.12, 0.15] |  [0.25, 0.01, -0.01] |
| v0_white | #1F231C | [0.12, 0.14, 0.11] |  [0.25, -0.01, 0.01] |
| v1_black | #312736 | [0.19, 0.15, 0.21] |  [0.29, 0.02, -0.02] |
| v1_white | #252F20 | [0.14, 0.18, 0.12] |  [0.29, -0.02, 0.02] |
| v2_black | #3B3140 | [0.23, 0.19, 0.25] |  [0.33, 0.02, -0.02] |
| v2_white | #2F3929 | [0.18, 0.22, 0.16] |  [0.33, -0.02, 0.02] |
| v3_black | #463B4B | [0.27, 0.23, 0.29] |  [0.37, 0.02, -0.02] |
| v3_white | #394333 | [0.22, 0.26, 0.2] |  [0.37, -0.02, 0.02] |
| v2_red | #3E3329 | [0.24, 0.2, 0.16] |  [0.33, 0.01, 0.02] |
| v2_orange | #3E341B | [0.24, 0.21, 0.1] |  [0.33, 0.0, 0.04] |
| v2_yellow | #363814 | [0.21, 0.22, 0.08] |  [0.33, -0.02, 0.05] |
| v2_chartreuse | #283C1B | [0.16, 0.24, 0.11] |  [0.33, -0.04, 0.04] |
| v2_green | #193E2A | [0.1, 0.24, 0.16] |  [0.33, -0.05, 0.02] |
| v2_cyan | #1A3D36 | [0.1, 0.24, 0.21] |  [0.33, -0.04, 0.0] |
| v2_blue | #27393A | [0.15, 0.22, 0.23] |  [0.33, -0.02, -0.01] |
| v2_purple | #353535 | [0.21, 0.21, 0.21] |  [0.33, -0.0, -0.0] |


### contrast

| | v0_black | v0_white | v1_black | v1_white | v2_black | v2_white |
|---|---|---|---|---|---|---|
| d0_black | 11.5 | 11.4 | 10.21 | 10.01 | 8.85 | 8.65 |
| d0_white | 11.61 | 11.51 | 10.31 | 10.1 | 8.93 | 8.73 |
| d1_black | 10.45 | 10.36 | 9.28 | 9.09 | 8.04 | 7.86 |
| d1_white | 10.55 | 10.46 | 9.37 | 9.18 | 8.12 | 7.94 |
| d2_black | 9.47 | 9.39 | 8.41 | 8.24 | 7.29 | 7.12 |
| d2_white | 9.56 | 9.48 | 8.49 | 8.32 | 7.36 | 7.19 |
| d3_black | 8.56 | 8.49 | 7.6 | 7.45 | 6.58 | 6.44 |
| d3_white | 8.64 | 8.57 | 7.67 | 7.52 | 6.65 | 6.5 |
| d1_red | 10.23 | 10.15 | 9.09 | 8.9 | 7.87 | 7.7 |
| d1_orange | 10.31 | 10.22 | 9.15 | 8.97 | 7.93 | 7.75 |
| d1_yellow | 10.46 | 10.38 | 9.29 | 9.1 | 8.05 | 7.87 |
| d1_chartreuse | 10.62 | 10.53 | 9.42 | 9.24 | 8.17 | 7.98 |
| d1_green | 10.67 | 10.58 | 9.47 | 9.28 | 8.21 | 8.02 |
| d1_cyan | 10.58 | 10.49 | 9.39 | 9.2 | 8.14 | 7.96 |
| d1_blue | 10.41 | 10.32 | 9.24 | 9.06 | 8.01 | 7.83 |
| d1_purple | 10.27 | 10.19 | 9.12 | 8.94 | 7.9 | 7.73 |
| d3_red | 8.33 | 8.26 | 7.4 | 7.25 | 6.41 | 6.27 |
| d3_orange | 8.41 | 8.34 | 7.47 | 7.32 | 6.47 | 6.33 |
| d3_yellow | 8.57 | 8.5 | 7.61 | 7.46 | 6.59 | 6.45 |
| d3_chartreuse | 8.73 | 8.65 | 7.75 | 7.59 | 6.72 | 6.57 |
| d3_green | 8.78 | 8.71 | 7.8 | 7.64 | 6.76 | 6.61 |
| d3_cyan | 8.69 | 8.61 | 7.71 | 7.56 | 6.68 | 6.54 |
| d3_blue | 8.51 | 8.44 | 7.56 | 7.41 | 6.55 | 6.4 |
| d3_purple | 8.37 | 8.3 | 7.43 | 7.28 | 6.44 | 6.3 |


| | v3_black | v3_white | v2_red | v2_orange | v2_yellow | v2_chartreuse | v2_green | v2_cyan | v2_blue | v2_purple |
|---|---|---|---|---|---|---|---|---|---|---|
| d0_black | 7.56 | 7.38 | 8.78 | 8.75 | 8.66 | 8.57 | 8.53 | 8.57 | 8.66 | 8.74 |
| d0_white | 7.63 | 7.45 | 8.86 | 8.83 | 8.74 | 8.65 | 8.61 | 8.65 | 8.74 | 8.83 |
| d1_black | 6.87 | 6.71 | 7.98 | 7.95 | 7.87 | 7.78 | 7.75 | 7.78 | 7.87 | 7.94 |
| d1_white | 6.94 | 6.77 | 8.05 | 8.02 | 7.95 | 7.86 | 7.82 | 7.86 | 7.94 | 8.02 |
| d2_black | 6.23 | 6.08 | 7.23 | 7.2 | 7.13 | 7.05 | 7.02 | 7.05 | 7.13 | 7.2 |
| d2_white | 6.29 | 6.14 | 7.3 | 7.27 | 7.2 | 7.12 | 7.09 | 7.12 | 7.2 | 7.27 |
| d3_black | 5.63 | 5.49 | 6.53 | 6.51 | 6.44 | 6.38 | 6.34 | 6.37 | 6.44 | 6.51 |
| d3_white | 5.68 | 5.55 | 6.6 | 6.57 | 6.51 | 6.44 | 6.41 | 6.44 | 6.51 | 6.57 |
| d1_red | 6.73 | 6.57 | 7.81 | 7.78 | 7.71 | 7.62 | 7.59 | 7.62 | 7.71 | 7.78 |
| d1_orange | 6.78 | 6.62 | 7.87 | 7.84 | 7.76 | 7.68 | 7.64 | 7.68 | 7.76 | 7.84 |
| d1_yellow | 6.88 | 6.71 | 7.99 | 7.96 | 7.88 | 7.8 | 7.76 | 7.79 | 7.88 | 7.96 |
| d1_chartreuse | 6.98 | 6.81 | 8.1 | 8.07 | 7.99 | 7.91 | 7.87 | 7.91 | 7.99 | 8.07 |
| d1_green | 7.01 | 6.84 | 8.14 | 8.11 | 8.03 | 7.95 | 7.91 | 7.94 | 8.03 | 8.11 |
| d1_cyan | 6.95 | 6.79 | 8.07 | 8.04 | 7.97 | 7.88 | 7.84 | 7.88 | 7.96 | 8.04 |
| d1_blue | 6.84 | 6.68 | 7.95 | 7.92 | 7.84 | 7.76 | 7.72 | 7.76 | 7.84 | 7.92 |
| d1_purple | 6.75 | 6.59 | 7.84 | 7.81 | 7.74 | 7.65 | 7.62 | 7.65 | 7.74 | 7.81 |
| d3_red | 5.48 | 5.35 | 6.36 | 6.34 | 6.28 | 6.21 | 6.18 | 6.21 | 6.28 | 6.34 |
| d3_orange | 5.53 | 5.4 | 6.42 | 6.4 | 6.33 | 6.27 | 6.24 | 6.27 | 6.33 | 6.39 |
| d3_yellow | 5.63 | 5.5 | 6.54 | 6.52 | 6.45 | 6.38 | 6.35 | 6.38 | 6.45 | 6.52 |
| d3_chartreuse | 5.74 | 5.6 | 6.66 | 6.64 | 6.57 | 6.5 | 6.47 | 6.5 | 6.57 | 6.64 |
| d3_green | 5.77 | 5.64 | 6.7 | 6.68 | 6.61 | 6.54 | 6.51 | 6.54 | 6.61 | 6.68 |
| d3_cyan | 5.71 | 5.57 | 6.63 | 6.61 | 6.54 | 6.47 | 6.44 | 6.47 | 6.54 | 6.61 |
| d3_blue | 5.6 | 5.46 | 6.5 | 6.47 | 6.41 | 6.34 | 6.31 | 6.34 | 6.41 | 6.47 |
| d3_purple | 5.5 | 5.37 | 6.39 | 6.37 | 6.31 | 6.24 | 6.21 | 6.24 | 6.3 | 6.37 |



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
