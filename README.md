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
| d0_black | #2E2D33 | [45.76, 44.95, 50.52] |  [0.3, 0.0, -0.01] |
| d0_white | #2E2E29 | [45.7, 46.38, 40.71] |  [0.3, -0.0, 0.01] |
| d1_black | #353341 | [53.49, 51.16, 65.37] |  [0.33, 0.01, -0.02] |
| d1_white | #353728 | [53.34, 54.85, 40.04] |  [0.33, -0.01, 0.02] |
| d2_black | #3D3B49 | [61.22, 58.87, 73.4] |  [0.36, 0.01, -0.02] |
| d2_white | #3D3F30 | [61.06, 62.63, 47.56] |  [0.36, -0.01, 0.02] |
| d3_black | #454352 | [69.1, 66.75, 81.57] |  [0.39, 0.01, -0.02] |
| d3_white | #454737 | [68.94, 70.58, 55.24] |  [0.39, -0.01, 0.02] |
| d1_red | #4C2934 | [76.24, 40.79, 52.14] |  [0.33, 0.06, 0.0] |
| d1_orange | #4D2C1D | [76.65, 43.73, 28.63] |  [0.33, 0.04, 0.04] |
| d1_yellow | #403410 | [64.33, 51.9, 15.58] |  [0.33, 0.0, 0.06] |
| d1_chartreuse | #293C1E | [40.79, 59.66, 30.04] |  [0.33, -0.04, 0.04] |
| d1_green | #093E36 | [9.13, 62.46, 54.39] |  [0.33, -0.06, 0.0] |
| d1_cyan | #0D3B4B | [12.78, 59.06, 74.56] |  [0.33, -0.04, -0.04] |
| d1_blue | #2A3452 | [42.3, 51.69, 81.78] |  [0.33, -0.0, -0.06] |
| d1_purple | #402C49 | [64.01, 44.4, 72.79] |  [0.33, 0.04, -0.04] |
| d3_red | #633443 | [99.08, 52.06, 67.39] |  [0.39, 0.07, 0.0] |
| d3_orange | #643824 | [99.67, 55.97, 35.74] |  [0.39, 0.05, 0.05] |
| d3_yellow | #544310 | [83.56, 66.95, 16.36] |  [0.39, 0.0, 0.07] |
| d3_chartreuse | #344D26 | [52.19, 77.28, 37.6] |  [0.39, -0.05, 0.05] |
| d3_green | #025146 | [1.98, 80.98, 70.38] |  [0.39, -0.07, 0.0] |
| d3_cyan | #094C61 | [9.33, 76.43, 97.09] |  [0.39, -0.05, -0.05] |
| d3_blue | #36436B | [54.37, 66.63, 106.62] |  [0.39, -0.0, -0.07] |
| d3_purple | #53395F | [83.09, 56.94, 94.73] |  [0.39, 0.05, -0.05] |
| v0_black | #DEDDE4 | [221.85, 220.85, 228.2] |  [0.9, 0.0, -0.01] |
| v0_white | #DEDFD7 | [221.78, 222.72, 215.32] |  [0.9, -0.0, 0.01] |
| v1_black | #D4D0ED | [212.36, 207.97, 236.99] |  [0.87, 0.02, -0.04] |
| v1_white | #D4D7BA | [212.05, 215.43, 185.71] |  [0.87, -0.02, 0.04] |
| v2_black | #CBC6E3 | [202.67, 198.29, 227.06] |  [0.84, 0.02, -0.04] |
| v2_white | #CACEB0 | [202.36, 205.69, 176.21] |  [0.84, -0.02, 0.04] |
| v3_black | #C1BDD9 | [193.06, 188.7, 217.2] |  [0.81, 0.02, -0.04] |
| v3_white | #C1C4A7 | [192.75, 196.04, 166.8] |  [0.81, -0.02, 0.04] |
| v2_red | #EABCC9 | [234.12, 188.24, 200.9] |  [0.84, 0.06, 0.0] |
| v2_orange | #EAC0AD | [234.3, 192.02, 173.44] |  [0.84, 0.04, 0.04] |
| v2_yellow | #D8CAA2 | [216.35, 201.63, 162.17] |  [0.84, 0.0, 0.06] |
| v2_chartreuse | #BBD3AF | [187.45, 211.13, 175.35] |  [0.84, -0.04, 0.04] |
| v2_green | #A4D7CC | [163.94, 214.85, 203.74] |  [0.84, -0.06, 0.0] |
| v2_cyan | #A5D3E6 | [164.65, 210.82, 229.81] |  [0.84, -0.04, -0.04] |
| v2_blue | #BCCAEF | [188.32, 201.57, 239.42] |  [0.84, -0.0, -0.06] |
| v2_purple | #D8C0E4 | [216.36, 192.32, 227.71] |  [0.84, 0.04, -0.04] |


### contrast

| | v0_black | v0_white | v1_black | v1_white | v2_black | v2_white |
|---|---|---|---|---|---|---|
| d0_black | 10.12 | 10.16 | 9.15 | 9.29 | 8.29 | 8.43 |
| d0_white | 10.08 | 10.12 | 9.11 | 9.25 | 8.26 | 8.39 |
| d1_black | 9.11 | 9.14 | 8.23 | 8.36 | 7.46 | 7.58 |
| d1_white | 9.0 | 9.04 | 8.13 | 8.26 | 7.38 | 7.5 |
| d2_black | 8.1 | 8.13 | 7.32 | 7.43 | 6.64 | 6.74 |
| d2_white | 8.0 | 8.03 | 7.23 | 7.34 | 6.56 | 6.66 |
| d3_black | 7.16 | 7.19 | 6.47 | 6.57 | 5.87 | 5.96 |
| d3_white | 7.07 | 7.1 | 6.39 | 6.49 | 5.8 | 5.89 |
| d1_red | 9.29 | 9.33 | 8.4 | 8.53 | 7.62 | 7.74 |
| d1_orange | 9.22 | 9.26 | 8.33 | 8.46 | 7.56 | 7.68 |
| d1_yellow | 9.06 | 9.09 | 8.18 | 8.31 | 7.42 | 7.54 |
| d1_chartreuse | 8.88 | 8.91 | 8.02 | 8.15 | 7.28 | 7.39 |
| d1_green | 8.81 | 8.84 | 7.96 | 8.09 | 7.22 | 7.34 |
| d1_cyan | 8.92 | 8.95 | 8.06 | 8.18 | 7.31 | 7.42 |
| d1_blue | 9.11 | 9.15 | 8.23 | 8.36 | 7.47 | 7.59 |
| d1_purple | 9.26 | 9.29 | 8.36 | 8.5 | 7.59 | 7.71 |
| d3_red | 7.38 | 7.41 | 6.67 | 6.78 | 6.05 | 6.15 |
| d3_orange | 7.31 | 7.33 | 6.6 | 6.71 | 5.99 | 6.08 |
| d3_yellow | 7.13 | 7.15 | 6.44 | 6.54 | 5.84 | 5.93 |
| d3_chartreuse | 6.93 | 6.96 | 6.26 | 6.36 | 5.68 | 5.77 |
| d3_green | 6.86 | 6.88 | 6.2 | 6.29 | 5.62 | 5.71 |
| d3_cyan | 6.97 | 7.0 | 6.3 | 6.4 | 5.71 | 5.8 |
| d3_blue | 7.19 | 7.21 | 6.49 | 6.6 | 5.89 | 5.98 |
| d3_purple | 7.35 | 7.37 | 6.64 | 6.74 | 6.02 | 6.12 |


| | v3_black | v3_white | v2_red | v2_orange | v2_yellow | v2_chartreuse | v2_green | v2_cyan | v2_blue | v2_purple |
|---|---|---|---|---|---|---|---|---|---|---|
| d0_black | 7.5 | 7.63 | 8.17 | 8.24 | 8.37 | 8.51 | 8.56 | 8.48 | 8.33 | 8.21 |
| d0_white | 7.47 | 7.59 | 8.14 | 8.2 | 8.34 | 8.47 | 8.52 | 8.45 | 8.3 | 8.18 |
| d1_black | 6.75 | 6.86 | 7.35 | 7.41 | 7.53 | 7.66 | 7.7 | 7.63 | 7.5 | 7.39 |
| d1_white | 6.67 | 6.78 | 7.27 | 7.33 | 7.45 | 7.57 | 7.61 | 7.54 | 7.41 | 7.3 |
| d2_black | 6.0 | 6.1 | 6.54 | 6.59 | 6.7 | 6.81 | 6.85 | 6.79 | 6.67 | 6.57 |
| d2_white | 5.93 | 6.03 | 6.46 | 6.51 | 6.62 | 6.73 | 6.77 | 6.71 | 6.59 | 6.49 |
| d3_black | 5.31 | 5.4 | 5.78 | 5.83 | 5.93 | 6.02 | 6.06 | 6.0 | 5.9 | 5.81 |
| d3_white | 5.24 | 5.33 | 5.71 | 5.76 | 5.85 | 5.95 | 5.98 | 5.93 | 5.82 | 5.74 |
| d1_red | 6.89 | 7.0 | 7.51 | 7.56 | 7.69 | 7.81 | 7.86 | 7.79 | 7.65 | 7.54 |
| d1_orange | 6.84 | 6.95 | 7.45 | 7.51 | 7.63 | 7.75 | 7.8 | 7.73 | 7.59 | 7.48 |
| d1_yellow | 6.71 | 6.82 | 7.32 | 7.37 | 7.49 | 7.62 | 7.66 | 7.59 | 7.46 | 7.35 |
| d1_chartreuse | 6.58 | 6.69 | 7.17 | 7.23 | 7.35 | 7.47 | 7.51 | 7.44 | 7.31 | 7.2 |
| d1_green | 6.53 | 6.64 | 7.12 | 7.17 | 7.29 | 7.41 | 7.45 | 7.39 | 7.26 | 7.15 |
| d1_cyan | 6.61 | 6.72 | 7.2 | 7.26 | 7.38 | 7.5 | 7.54 | 7.47 | 7.34 | 7.23 |
| d1_blue | 6.75 | 6.87 | 7.36 | 7.42 | 7.54 | 7.66 | 7.71 | 7.64 | 7.5 | 7.39 |
| d1_purple | 6.86 | 6.97 | 7.48 | 7.53 | 7.66 | 7.78 | 7.83 | 7.76 | 7.62 | 7.51 |
| d3_red | 5.47 | 5.56 | 5.96 | 6.01 | 6.11 | 6.21 | 6.25 | 6.19 | 6.08 | 5.99 |
| d3_orange | 5.42 | 5.51 | 5.9 | 5.95 | 6.05 | 6.14 | 6.18 | 6.12 | 6.02 | 5.93 |
| d3_yellow | 5.28 | 5.37 | 5.76 | 5.8 | 5.9 | 5.99 | 6.03 | 5.97 | 5.87 | 5.78 |
| d3_chartreuse | 5.14 | 5.22 | 5.6 | 5.64 | 5.73 | 5.83 | 5.86 | 5.81 | 5.71 | 5.62 |
| d3_green | 5.08 | 5.17 | 5.54 | 5.58 | 5.67 | 5.77 | 5.8 | 5.75 | 5.65 | 5.56 |
| d3_cyan | 5.17 | 5.25 | 5.63 | 5.67 | 5.77 | 5.86 | 5.9 | 5.84 | 5.74 | 5.66 |
| d3_blue | 5.33 | 5.42 | 5.8 | 5.85 | 5.95 | 6.04 | 6.08 | 6.02 | 5.92 | 5.83 |
| d3_purple | 5.44 | 5.53 | 5.93 | 5.98 | 6.08 | 6.18 | 6.21 | 6.16 | 6.05 | 5.96 |


## dark colors

| | hex | rgb | OKlab |
|---|---|---|
| d0_black | #DEDFD7 | [221.78, 222.72, 215.32] |  [0.9, -0.0, 0.01] |
| d0_white | #DEDDE4 | [221.85, 220.85, 228.2] |  [0.9, 0.0, -0.01] |
| d1_black | #D4D6C4 | [212.0, 214.22, 195.77] |  [0.87, -0.01, 0.02] |
| d1_white | #D4D2E4 | [212.19, 209.56, 227.75] |  [0.87, 0.01, -0.02] |
| d2_black | #CACCBA | [202.3, 204.5, 186.2] |  [0.84, -0.01, 0.02] |
| d2_white | #CAC8DA | [202.49, 199.88, 217.9] |  [0.84, 0.01, -0.02] |
| d3_black | #C1C3B1 | [192.69, 194.86, 176.72] |  [0.81, -0.01, 0.02] |
| d3_white | #C1BED0 | [192.88, 190.28, 208.14] |  [0.81, 0.01, -0.02] |
| d1_red | #F4C6D3 | [244.18, 197.85, 210.58] |  [0.87, 0.06, 0.0] |
| d1_orange | #F4CAB7 | [244.35, 201.66, 182.92] |  [0.87, 0.04, 0.04] |
| d1_yellow | #E2D3AC | [226.18, 211.34, 171.6] |  [0.87, 0.0, 0.06] |
| d1_chartreuse | #C5DDB9 | [197.04, 220.93, 184.85] |  [0.87, -0.04, 0.04] |
| d1_green | #ADE1D5 | [173.47, 224.68, 213.45] |  [0.87, -0.06, 0.0] |
| d1_cyan | #AEDDF0 | [174.17, 220.63, 239.77] |  [0.87, -0.04, -0.04] |
| d1_blue | #C6D3F9 | [197.89, 211.29, 249.49] |  [0.87, -0.0, -0.06] |
| d1_purple | #E2CAEE | [226.2, 201.95, 237.66] |  [0.87, 0.04, -0.04] |
| d3_red | #E8AFBF | [231.96, 174.57, 190.91] |  [0.81, 0.07, 0.0] |
| d3_orange | #E8B39C | [232.3, 179.3, 155.85] |  [0.81, 0.05, 0.05] |
| d3_yellow | #D2C08D | [210.39, 191.56, 140.98] |  [0.81, 0.0, 0.07] |
| d3_chartreuse | #AECC9E | [173.75, 203.61, 158.23] |  [0.81, -0.05, 0.05] |
| d3_green | #8ED0C2 | [142.04, 208.24, 194.49] |  [0.81, -0.07, 0.0] |
| d3_cyan | #8FCBE3 | [143.29, 203.11, 227.19] |  [0.81, -0.05, -0.05] |
| d3_blue | #AFBFEF | [175.07, 191.46, 239.15] |  [0.81, -0.0, -0.07] |
| d3_purple | #D2B4E1 | [210.28, 179.81, 224.51] |  [0.81, 0.05, -0.05] |
| v0_black | #2E2E29 | [45.7, 46.38, 40.71] |  [0.3, -0.0, 0.01] |
| v0_white | #2E2D33 | [45.76, 44.95, 50.52] |  [0.3, 0.0, -0.01] |
| v1_black | #36381F | [53.52, 55.58, 31.01] |  [0.33, -0.02, 0.04] |
| v1_white | #363248 | [53.79, 49.61, 72.35] |  [0.33, 0.02, -0.04] |
| v2_black | #3D3F27 | [61.22, 63.41, 38.54] |  [0.36, -0.02, 0.04] |
| v2_white | #3D3951 | [61.5, 57.33, 80.56] |  [0.36, 0.02, -0.04] |
| v3_black | #45472E | [69.1, 71.4, 46.21] |  [0.39, -0.02, 0.04] |
| v3_white | #454159 | [69.37, 65.21, 88.9] |  [0.39, 0.02, -0.04] |
| v2_red | #55303C | [84.73, 48.46, 59.84] |  [0.36, 0.06, 0.0] |
| v2_orange | #553324 | [85.13, 51.46, 36.16] |  [0.36, 0.04, 0.04] |
| v2_yellow | #483C18 | [72.31, 59.71, 23.98] |  [0.36, 0.0, 0.06] |
| v2_chartreuse | #304426 | [48.36, 67.6, 37.62] |  [0.36, -0.04, 0.04] |
| v2_green | #14463E | [20.04, 70.48, 62.14] |  [0.36, -0.06, 0.0] |
| v2_cyan | #174353 | [22.53, 67.04, 82.81] |  [0.36, -0.04, -0.04] |
| v2_blue | #323C5A | [49.76, 59.54, 90.23] |  [0.36, -0.0, -0.06] |
| v2_purple | #483451 | [72.02, 52.08, 81.02] |  [0.36, 0.04, -0.04] |


### contrast

| | v0_black | v0_white | v1_black | v1_white | v2_black | v2_white |
|---|---|---|---|---|---|---|
| d0_black | 10.12 | 10.16 | 9.01 | 9.18 | 8.01 | 8.17 |
| d0_white | 10.08 | 10.12 | 8.98 | 9.15 | 7.98 | 8.14 |
| d1_black | 9.23 | 9.26 | 8.22 | 8.38 | 7.3 | 7.45 |
| d1_white | 9.14 | 9.18 | 8.14 | 8.29 | 7.23 | 7.38 |
| d2_black | 8.37 | 8.41 | 7.46 | 7.6 | 6.63 | 6.76 |
| d2_white | 8.29 | 8.32 | 7.38 | 7.52 | 6.56 | 6.69 |
| d3_black | 7.57 | 7.6 | 6.75 | 6.87 | 6.0 | 6.12 |
| d3_white | 7.5 | 7.53 | 6.68 | 6.8 | 5.94 | 6.05 |
| d1_red | 8.98 | 9.02 | 8.0 | 8.15 | 7.11 | 7.25 |
| d1_orange | 9.05 | 9.08 | 8.06 | 8.21 | 7.16 | 7.31 |
| d1_yellow | 9.19 | 9.23 | 8.19 | 8.34 | 7.28 | 7.42 |
| d1_chartreuse | 9.34 | 9.38 | 8.32 | 8.48 | 7.39 | 7.54 |
| d1_green | 9.39 | 9.43 | 8.37 | 8.52 | 7.43 | 7.58 |
| d1_cyan | 9.31 | 9.35 | 8.29 | 8.45 | 7.37 | 7.52 |
| d1_blue | 9.15 | 9.19 | 8.15 | 8.31 | 7.25 | 7.39 |
| d1_purple | 9.02 | 9.06 | 8.04 | 8.19 | 7.14 | 7.28 |
| d3_red | 7.31 | 7.34 | 6.51 | 6.64 | 5.79 | 5.9 |
| d3_orange | 7.38 | 7.41 | 6.58 | 6.7 | 5.85 | 5.96 |
| d3_yellow | 7.54 | 7.57 | 6.72 | 6.85 | 5.97 | 6.09 |
| d3_chartreuse | 7.71 | 7.74 | 6.87 | 6.99 | 6.1 | 6.22 |
| d3_green | 7.76 | 7.8 | 6.92 | 7.05 | 6.15 | 6.27 |
| d3_cyan | 7.67 | 7.7 | 6.84 | 6.96 | 6.07 | 6.19 |
| d3_blue | 7.49 | 7.53 | 6.68 | 6.8 | 5.93 | 6.05 |
| d3_purple | 7.35 | 7.38 | 6.55 | 6.67 | 5.82 | 5.94 |


| | v3_black | v3_white | v2_red | v2_orange | v2_yellow | v2_chartreuse | v2_green | v2_cyan | v2_blue | v2_purple |
|---|---|---|---|---|---|---|---|---|---|---|
| d0_black | 7.08 | 7.22 | 8.31 | 8.24 | 8.08 | 7.91 | 7.85 | 7.95 | 8.13 | 8.27 |
| d0_white | 7.05 | 7.2 | 8.28 | 8.21 | 8.05 | 7.88 | 7.82 | 7.92 | 8.1 | 8.24 |
| d1_black | 6.46 | 6.59 | 7.58 | 7.51 | 7.37 | 7.22 | 7.16 | 7.25 | 7.42 | 7.54 |
| d1_white | 6.39 | 6.53 | 7.5 | 7.44 | 7.3 | 7.15 | 7.09 | 7.18 | 7.34 | 7.47 |
| d2_black | 5.86 | 5.98 | 6.87 | 6.82 | 6.69 | 6.55 | 6.5 | 6.58 | 6.73 | 6.84 |
| d2_white | 5.8 | 5.92 | 6.8 | 6.75 | 6.62 | 6.48 | 6.43 | 6.51 | 6.66 | 6.78 |
| d3_black | 5.3 | 5.41 | 6.22 | 6.17 | 6.05 | 5.93 | 5.88 | 5.95 | 6.09 | 6.19 |
| d3_white | 5.25 | 5.35 | 6.16 | 6.1 | 5.99 | 5.86 | 5.82 | 5.89 | 6.03 | 6.13 |
| d1_red | 6.28 | 6.41 | 7.37 | 7.31 | 7.17 | 7.02 | 6.97 | 7.06 | 7.22 | 7.34 |
| d1_orange | 6.33 | 6.46 | 7.43 | 7.37 | 7.23 | 7.08 | 7.02 | 7.11 | 7.27 | 7.4 |
| d1_yellow | 6.43 | 6.56 | 7.55 | 7.49 | 7.34 | 7.19 | 7.14 | 7.22 | 7.39 | 7.52 |
| d1_chartreuse | 6.53 | 6.67 | 7.67 | 7.6 | 7.46 | 7.31 | 7.25 | 7.34 | 7.51 | 7.63 |
| d1_green | 6.57 | 6.71 | 7.71 | 7.65 | 7.5 | 7.35 | 7.29 | 7.38 | 7.55 | 7.68 |
| d1_cyan | 6.51 | 6.65 | 7.64 | 7.58 | 7.44 | 7.28 | 7.22 | 7.31 | 7.48 | 7.61 |
| d1_blue | 6.4 | 6.53 | 7.51 | 7.45 | 7.31 | 7.16 | 7.1 | 7.19 | 7.36 | 7.48 |
| d1_purple | 6.31 | 6.44 | 7.41 | 7.34 | 7.2 | 7.06 | 7.0 | 7.09 | 7.25 | 7.37 |
| d3_red | 5.12 | 5.22 | 6.0 | 5.95 | 5.84 | 5.72 | 5.67 | 5.74 | 5.88 | 5.98 |
| d3_orange | 5.17 | 5.27 | 6.06 | 6.01 | 5.9 | 5.78 | 5.73 | 5.8 | 5.93 | 6.04 |
| d3_yellow | 5.28 | 5.39 | 6.19 | 6.14 | 6.03 | 5.9 | 5.85 | 5.93 | 6.06 | 6.17 |
| d3_chartreuse | 5.39 | 5.5 | 6.33 | 6.27 | 6.16 | 6.03 | 5.98 | 6.06 | 6.19 | 6.3 |
| d3_green | 5.43 | 5.55 | 6.38 | 6.32 | 6.2 | 6.07 | 6.03 | 6.1 | 6.24 | 6.35 |
| d3_cyan | 5.37 | 5.48 | 6.3 | 6.25 | 6.13 | 6.0 | 5.95 | 6.03 | 6.17 | 6.27 |
| d3_blue | 5.24 | 5.35 | 6.15 | 6.1 | 5.99 | 5.86 | 5.82 | 5.89 | 6.02 | 6.13 |
| d3_purple | 5.14 | 5.25 | 6.04 | 5.99 | 5.87 | 5.75 | 5.71 | 5.78 | 5.91 | 6.01 |



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
