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
| d0_black | #363344 | [53.58, 50.67, 67.71] |  [0.33, 0.01, -0.03] |
| d0_white | #353725 | [53.39, 55.11, 37.16] |  [0.33, -0.01, 0.03] |
| d1_black | #3D3A4C | [61.3, 58.38, 75.8] |  [0.36, 0.01, -0.03] |
| d1_white | #3D3F2D | [61.1, 62.91, 44.66] |  [0.36, -0.01, 0.03] |
| d2_black | #454254 | [69.18, 66.25, 84.03] |  [0.39, 0.01, -0.03] |
| d2_white | #454734 | [68.98, 70.87, 52.33] |  [0.39, -0.01, 0.03] |
| d3_black | #4D4A5C | [77.22, 74.28, 92.39] |  [0.42, 0.01, -0.03] |
| d3_white | #4D4F3C | [77.02, 78.97, 60.15] |  [0.42, -0.01, 0.03] |
| d1_red | #5E293B | [93.8, 40.99, 59.32] |  [0.36, 0.08, 0.0] |
| d1_orange | #5F2D15 | [94.58, 45.42, 21.43] |  [0.36, 0.06, 0.06] |
| d1_yellow | #4D3A00 | [77.38, 58.32, 0.0] |  [0.36, 0.0, 0.08] |
| d1_chartreuse | #2A4618 | [41.69, 70.08, 23.54] |  [0.36, -0.06, 0.06] |
| d1_green | #004A3F | [0.0, 74.15, 62.66] |  [0.36, -0.08, 0.0] |
| d1_cyan | #00455C | [0.0, 68.91, 92.38] |  [0.36, -0.06, -0.06] |
| d1_blue | #2D3A67 | [44.88, 57.78, 102.93] |  [0.36, -0.0, -0.08] |
| d1_purple | #4D2F5A | [76.71, 46.85, 89.68] |  [0.36, 0.06, -0.06] |
| d3_red | #70394B | [111.8, 57.06, 75.2] |  [0.42, 0.08, 0.0] |
| d3_orange | #713E26 | [112.52, 61.61, 37.81] |  [0.42, 0.06, 0.06] |
| d3_yellow | #5E4B0C | [94.0, 74.54, 11.91] |  [0.42, 0.0, 0.08] |
| d3_chartreuse | #395728 | [57.35, 86.62, 39.97] |  [0.42, -0.06, 0.06] |
| d3_green | #005B4F | [0.0, 90.9, 78.67] |  [0.42, -0.08, 0.0] |
| d3_cyan | #00566E | [0.0, 85.57, 109.71] |  [0.42, -0.06, -0.06] |
| d3_blue | #3C4A79 | [60.07, 74.13, 120.77] |  [0.42, -0.0, -0.08] |
| d3_purple | #5D3F6B | [93.42, 62.83, 106.95] |  [0.42, 0.06, -0.06] |
| v0_black | #E8E5FB | [231.89, 228.66, 250.83] |  [0.93, 0.01, -0.03] |
| v0_white | #E8EAD4 | [231.65, 234.34, 211.8] |  [0.93, -0.01, 0.03] |
| v1_black | #DEDBF1 | [222.02, 218.81, 240.8] |  [0.9, 0.01, -0.03] |
| v1_white | #DEE0CA | [221.79, 224.45, 202.08] |  [0.9, -0.01, 0.03] |
| v2_black | #D4D1E7 | [212.24, 209.04, 230.85] |  [0.87, 0.01, -0.03] |
| v2_white | #D4D7C0 | [212.01, 214.64, 192.45] |  [0.87, -0.01, 0.03] |
| v3_black | #CBC7DD | [202.54, 199.36, 220.97] |  [0.84, 0.01, -0.03] |
| v3_white | #CACDB7 | [202.31, 204.91, 182.9] |  [0.84, -0.01, 0.03] |
| v2_red | #FFBFD2 | [255.0, 190.8, 209.93] |  [0.87, 0.08, 0.0] |
| v2_orange | #FFC4A9 | [255.0, 196.29, 169.0] |  [0.87, 0.06, 0.06] |
| v2_yellow | #E9D397 | [232.6, 210.6, 151.46] |  [0.87, 0.0, 0.08] |
| v2_chartreuse | #BEE1AC | [189.91, 224.65, 171.75] |  [0.87, -0.06, 0.06] |
| v2_green | #98E6D6 | [152.29, 230.02, 214.1] |  [0.87, -0.08, 0.0] |
| v2_cyan | #9AE0FC | [153.87, 224.03, 252.09] |  [0.87, -0.06, -0.06] |
| v2_blue | #C0D2FF | [191.51, 210.47, 255.0] |  [0.87, -0.0, -0.08] |
| v2_purple | #E8C5F9 | [232.43, 196.93, 248.96] |  [0.87, 0.06, -0.06] |


### contrast

| | v0_black | v0_white | v1_black | v1_white | v2_black | v2_white |
|---|---|---|---|---|---|---|
| d0_black | 9.96 | 10.07 | 9.08 | 9.19 | 8.26 | 8.36 |
| d0_white | 9.83 | 9.93 | 8.96 | 9.06 | 8.15 | 8.24 |
| d1_black | 8.86 | 8.96 | 8.08 | 8.17 | 7.35 | 7.43 |
| d1_white | 8.73 | 8.83 | 7.96 | 8.05 | 7.24 | 7.32 |
| d2_black | 7.84 | 7.92 | 7.14 | 7.23 | 6.5 | 6.57 |
| d2_white | 7.72 | 7.8 | 7.04 | 7.12 | 6.4 | 6.47 |
| d3_black | 6.9 | 6.98 | 6.29 | 6.37 | 5.72 | 5.79 |
| d3_white | 6.8 | 6.87 | 6.2 | 6.27 | 5.64 | 5.7 |
| d1_red | 9.16 | 9.26 | 8.35 | 8.45 | 7.59 | 7.68 |
| d1_orange | 9.06 | 9.16 | 8.26 | 8.35 | 7.51 | 7.6 |
| d1_yellow | 8.8 | 8.9 | 8.02 | 8.11 | 7.3 | 7.38 |
| d1_chartreuse | 8.55 | 8.64 | 7.79 | 7.88 | 7.08 | 7.17 |
| d1_green | 8.27 | 8.36 | 7.54 | 7.62 | 6.85 | 6.93 |
| d1_cyan | 8.47 | 8.57 | 7.72 | 7.81 | 7.02 | 7.11 |
| d1_blue | 8.91 | 9.01 | 8.12 | 8.21 | 7.38 | 7.47 |
| d1_purple | 9.11 | 9.21 | 8.31 | 8.4 | 7.56 | 7.64 |
| d3_red | 7.15 | 7.23 | 6.52 | 6.6 | 5.93 | 6.0 |
| d3_orange | 7.07 | 7.14 | 6.44 | 6.52 | 5.86 | 5.93 |
| d3_yellow | 6.86 | 6.94 | 6.26 | 6.33 | 5.69 | 5.76 |
| d3_chartreuse | 6.64 | 6.72 | 6.06 | 6.12 | 5.51 | 5.57 |
| d3_green | 6.52 | 6.59 | 5.94 | 6.01 | 5.41 | 5.47 |
| d3_cyan | 6.68 | 6.76 | 6.09 | 6.16 | 5.54 | 5.61 |
| d3_blue | 6.93 | 7.01 | 6.32 | 6.39 | 5.75 | 5.81 |
| d3_purple | 7.11 | 7.19 | 6.48 | 6.56 | 5.89 | 5.96 |


| | v3_black | v3_white | v2_red | v2_orange | v2_yellow | v2_chartreuse | v2_green | v2_cyan | v2_blue | v2_purple |
|---|---|---|---|---|---|---|---|---|---|---|
| d0_black | 7.49 | 7.58 | 7.99 | 8.06 | 8.32 | 8.51 | 8.58 | 8.47 | 8.17 | 8.09 |
| d0_white | 7.39 | 7.48 | 7.88 | 7.95 | 8.2 | 8.39 | 8.46 | 8.35 | 8.06 | 7.98 |
| d1_black | 6.66 | 6.74 | 7.1 | 7.17 | 7.4 | 7.57 | 7.63 | 7.53 | 7.27 | 7.19 |
| d1_white | 6.57 | 6.64 | 7.0 | 7.07 | 7.29 | 7.46 | 7.52 | 7.42 | 7.16 | 7.09 |
| d2_black | 5.89 | 5.96 | 6.28 | 6.34 | 6.54 | 6.69 | 6.75 | 6.66 | 6.43 | 6.36 |
| d2_white | 5.8 | 5.87 | 6.19 | 6.25 | 6.44 | 6.59 | 6.65 | 6.56 | 6.33 | 6.27 |
| d3_black | 5.19 | 5.25 | 5.53 | 5.59 | 5.76 | 5.9 | 5.95 | 5.87 | 5.67 | 5.61 |
| d3_white | 5.11 | 5.17 | 5.45 | 5.5 | 5.67 | 5.81 | 5.86 | 5.78 | 5.58 | 5.52 |
| d1_red | 6.89 | 6.97 | 7.34 | 7.41 | 7.64 | 7.82 | 7.89 | 7.79 | 7.51 | 7.44 |
| d1_orange | 6.81 | 6.89 | 7.26 | 7.33 | 7.56 | 7.74 | 7.8 | 7.7 | 7.43 | 7.36 |
| d1_yellow | 6.62 | 6.7 | 7.05 | 7.12 | 7.34 | 7.52 | 7.58 | 7.48 | 7.22 | 7.14 |
| d1_chartreuse | 6.42 | 6.5 | 6.85 | 6.92 | 7.13 | 7.3 | 7.36 | 7.27 | 7.01 | 6.94 |
| d1_green | 6.22 | 6.29 | 6.63 | 6.69 | 6.9 | 7.06 | 7.12 | 7.03 | 6.78 | 6.71 |
| d1_cyan | 6.37 | 6.45 | 6.79 | 6.86 | 7.07 | 7.24 | 7.3 | 7.2 | 6.95 | 6.88 |
| d1_blue | 6.7 | 6.78 | 7.14 | 7.21 | 7.43 | 7.61 | 7.67 | 7.57 | 7.31 | 7.23 |
| d1_purple | 6.85 | 6.93 | 7.31 | 7.38 | 7.61 | 7.79 | 7.85 | 7.75 | 7.48 | 7.4 |
| d3_red | 5.38 | 5.44 | 5.73 | 5.79 | 5.97 | 6.11 | 6.16 | 6.08 | 5.87 | 5.81 |
| d3_orange | 5.31 | 5.38 | 5.66 | 5.72 | 5.9 | 6.04 | 6.09 | 6.01 | 5.8 | 5.74 |
| d3_yellow | 5.16 | 5.22 | 5.5 | 5.55 | 5.73 | 5.86 | 5.91 | 5.83 | 5.63 | 5.57 |
| d3_chartreuse | 4.99 | 5.05 | 5.32 | 5.37 | 5.54 | 5.67 | 5.72 | 5.65 | 5.45 | 5.39 |
| d3_green | 4.9 | 4.96 | 5.23 | 5.28 | 5.44 | 5.57 | 5.62 | 5.54 | 5.35 | 5.29 |
| d3_cyan | 5.03 | 5.09 | 5.36 | 5.41 | 5.58 | 5.71 | 5.76 | 5.68 | 5.48 | 5.43 |
| d3_blue | 5.21 | 5.28 | 5.56 | 5.61 | 5.79 | 5.92 | 5.97 | 5.89 | 5.69 | 5.63 |
| d3_purple | 5.35 | 5.41 | 5.7 | 5.75 | 5.93 | 6.07 | 6.13 | 6.05 | 5.83 | 5.77 |


## dark colors

| | hex | rgb | OKlab |
|---|---|---|
| d0_black | #E8EAD4 | [231.65, 234.34, 211.8] |  [0.93, -0.01, 0.03] |
| d0_white | #E8E5FB | [231.89, 228.66, 250.83] |  [0.93, 0.01, -0.03] |
| d1_black | #DEE0CA | [221.79, 224.45, 202.08] |  [0.9, -0.01, 0.03] |
| d1_white | #DEDBF1 | [222.02, 218.81, 240.8] |  [0.9, 0.01, -0.03] |
| d2_black | #D4D7C0 | [212.01, 214.64, 192.45] |  [0.87, -0.01, 0.03] |
| d2_white | #D4D1E7 | [212.24, 209.04, 230.85] |  [0.87, 0.01, -0.03] |
| d3_black | #CACDB7 | [202.31, 204.91, 182.9] |  [0.84, -0.01, 0.03] |
| d3_white | #CBC7DD | [202.54, 199.36, 220.97] |  [0.84, 0.01, -0.03] |
| d1_red | #FFC8DC | [255.0, 200.47, 219.7] |  [0.9, 0.08, 0.0] |
| d1_orange | #FFCEB3 | [255.0, 206.01, 178.5] |  [0.9, 0.06, 0.06] |
| d1_yellow | #F3DCA1 | [242.56, 220.42, 160.94] |  [0.9, 0.0, 0.08] |
| d1_chartreuse | #C8EBB5 | [199.54, 234.57, 181.28] |  [0.9, -0.06, 0.06] |
| d1_green | #A2F0E0 | [162.01, 240.0, 223.9] |  [0.9, -0.08, 0.0] |
| d1_cyan | #A4EAFF | [163.53, 233.97, 255.0] |  [0.9, -0.06, -0.06] |
| d1_blue | #C9DCFF | [201.12, 220.3, 255.0] |  [0.9, -0.0, -0.08] |
| d1_purple | #F2CFFF | [242.41, 206.63, 255.0] |  [0.9, 0.06, -0.06] |
| d3_red | #F7B5C8 | [247.2, 181.21, 200.25] |  [0.84, 0.08, 0.0] |
| d3_orange | #F8BBA0 | [247.64, 186.65, 159.59] |  [0.84, 0.06, 0.06] |
| d3_yellow | #DFC98E | [222.71, 200.86, 142.05] |  [0.84, 0.0, 0.08] |
| d3_chartreuse | #B4D7A2 | [180.36, 214.8, 162.31] |  [0.84, -0.06, 0.06] |
| d3_green | #8FDCCC | [142.62, 220.12, 204.38] |  [0.84, -0.08, 0.0] |
| d3_cyan | #90D6F2 | [144.26, 214.16, 242.01] |  [0.84, -0.06, -0.06] |
| d3_blue | #B6C9FF | [182.0, 200.73, 255.0] |  [0.84, -0.0, -0.08] |
| d3_purple | #DFBBEF | [222.53, 187.3, 238.9] |  [0.84, 0.06, -0.06] |
| v0_black | #353725 | [53.39, 55.11, 37.16] |  [0.33, -0.01, 0.03] |
| v0_white | #363344 | [53.58, 50.67, 67.71] |  [0.33, 0.01, -0.03] |
| v1_black | #3D3F2D | [61.1, 62.91, 44.66] |  [0.36, -0.01, 0.03] |
| v1_white | #3D3A4C | [61.3, 58.38, 75.8] |  [0.36, 0.01, -0.03] |
| v2_black | #454734 | [68.98, 70.87, 52.33] |  [0.39, -0.01, 0.03] |
| v2_white | #454254 | [69.18, 66.25, 84.03] |  [0.39, 0.01, -0.03] |
| v3_black | #4D4F3C | [77.02, 78.97, 60.15] |  [0.42, -0.01, 0.03] |
| v3_white | #4D4A5C | [77.22, 74.28, 92.39] |  [0.42, 0.01, -0.03] |
| v2_red | #673143 | [102.76, 48.98, 67.18] |  [0.39, 0.08, 0.0] |
| v2_orange | #68351E | [103.5, 53.47, 29.68] |  [0.39, 0.06, 0.06] |
| v2_yellow | #564200 | [85.63, 66.37, 0.0] |  [0.39, 0.0, 0.08] |
| v2_chartreuse | #314E20 | [49.45, 78.29, 31.8] |  [0.39, -0.06, 0.06] |
| v2_green | #005247 | [0.0, 82.46, 70.59] |  [0.39, -0.08, 0.0] |
| v2_cyan | #004D65 | [0.0, 77.18, 100.99] |  [0.39, -0.06, -0.06] |
| v2_blue | #344270 | [52.38, 65.89, 111.8] |  [0.39, -0.0, -0.08] |
| v2_purple | #553762 | [85.0, 54.78, 98.25] |  [0.39, 0.06, -0.06] |


### contrast

| | v0_black | v0_white | v1_black | v1_white | v2_black | v2_white |
|---|---|---|---|---|---|---|
| d0_black | 9.93 | 10.07 | 8.83 | 8.96 | 7.8 | 7.92 |
| d0_white | 9.83 | 9.96 | 8.73 | 8.86 | 7.72 | 7.84 |
| d1_black | 9.06 | 9.19 | 8.05 | 8.17 | 7.12 | 7.23 |
| d1_white | 8.96 | 9.08 | 7.96 | 8.08 | 7.04 | 7.14 |
| d2_black | 8.24 | 8.36 | 7.32 | 7.43 | 6.47 | 6.57 |
| d2_white | 8.15 | 8.26 | 7.24 | 7.35 | 6.4 | 6.5 |
| d3_black | 7.48 | 7.58 | 6.64 | 6.74 | 5.87 | 5.96 |
| d3_white | 7.39 | 7.49 | 6.57 | 6.66 | 5.8 | 5.89 |
| d1_red | 8.44 | 8.56 | 7.5 | 7.61 | 6.63 | 6.73 |
| d1_orange | 8.52 | 8.64 | 7.57 | 7.68 | 6.69 | 6.79 |
| d1_yellow | 9.02 | 9.14 | 8.01 | 8.13 | 7.08 | 7.19 |
| d1_chartreuse | 9.22 | 9.35 | 8.2 | 8.32 | 7.25 | 7.36 |
| d1_green | 9.3 | 9.43 | 8.26 | 8.39 | 7.3 | 7.42 |
| d1_cyan | 9.13 | 9.25 | 8.11 | 8.23 | 7.17 | 7.28 |
| d1_blue | 8.79 | 8.91 | 7.81 | 7.93 | 6.91 | 7.01 |
| d1_purple | 8.75 | 8.87 | 7.77 | 7.89 | 6.87 | 6.98 |
| d3_red | 7.19 | 7.29 | 6.39 | 6.48 | 5.65 | 5.73 |
| d3_orange | 7.27 | 7.37 | 6.46 | 6.55 | 5.71 | 5.79 |
| d3_yellow | 7.44 | 7.54 | 6.61 | 6.71 | 5.84 | 5.93 |
| d3_chartreuse | 7.62 | 7.73 | 6.77 | 6.87 | 5.99 | 6.08 |
| d3_green | 7.68 | 7.79 | 6.83 | 6.93 | 6.04 | 6.13 |
| d3_cyan | 7.58 | 7.69 | 6.74 | 6.84 | 5.96 | 6.05 |
| d3_blue | 7.38 | 7.48 | 6.56 | 6.66 | 5.8 | 5.89 |
| d3_purple | 7.23 | 7.33 | 6.43 | 6.52 | 5.68 | 5.77 |


| | v3_black | v3_white | v2_red | v2_orange | v2_yellow | v2_chartreuse | v2_green | v2_cyan | v2_blue | v2_purple |
|---|---|---|---|---|---|---|---|---|---|---|
| d0_black | 6.87 | 6.98 | 8.2 | 8.11 | 7.88 | 7.63 | 7.43 | 7.62 | 7.96 | 8.16 |
| d0_white | 6.8 | 6.9 | 8.11 | 8.02 | 7.79 | 7.55 | 7.35 | 7.54 | 7.87 | 8.07 |
| d1_black | 6.27 | 6.37 | 7.48 | 7.39 | 7.19 | 6.96 | 6.78 | 6.95 | 7.26 | 7.44 |
| d1_white | 6.2 | 6.29 | 7.39 | 7.31 | 7.1 | 6.88 | 6.7 | 6.87 | 7.18 | 7.35 |
| d2_black | 5.7 | 5.79 | 6.8 | 6.72 | 6.54 | 6.33 | 6.17 | 6.32 | 6.6 | 6.77 |
| d2_white | 5.64 | 5.72 | 6.72 | 6.65 | 6.46 | 6.26 | 6.09 | 6.25 | 6.53 | 6.69 |
| d3_black | 5.17 | 5.25 | 6.17 | 6.1 | 5.93 | 5.74 | 5.59 | 5.73 | 5.99 | 6.14 |
| d3_white | 5.11 | 5.19 | 6.1 | 6.03 | 5.86 | 5.67 | 5.53 | 5.67 | 5.92 | 6.07 |
| d1_red | 5.84 | 5.93 | 6.97 | 6.88 | 6.69 | 6.48 | 6.31 | 6.47 | 6.76 | 6.93 |
| d1_orange | 5.89 | 5.99 | 7.03 | 6.95 | 6.76 | 6.54 | 6.37 | 6.53 | 6.83 | 6.99 |
| d1_yellow | 6.24 | 6.34 | 7.44 | 7.36 | 7.15 | 6.93 | 6.75 | 6.92 | 7.22 | 7.4 |
| d1_chartreuse | 6.38 | 6.48 | 7.61 | 7.53 | 7.32 | 7.08 | 6.9 | 7.07 | 7.39 | 7.57 |
| d1_green | 6.43 | 6.53 | 7.68 | 7.59 | 7.37 | 7.14 | 6.96 | 7.13 | 7.45 | 7.63 |
| d1_cyan | 6.31 | 6.41 | 7.53 | 7.45 | 7.24 | 7.01 | 6.83 | 7.0 | 7.31 | 7.49 |
| d1_blue | 6.08 | 6.18 | 7.26 | 7.17 | 6.97 | 6.75 | 6.58 | 6.74 | 7.04 | 7.22 |
| d1_purple | 6.05 | 6.15 | 7.22 | 7.14 | 6.94 | 6.72 | 6.54 | 6.71 | 7.01 | 7.18 |
| d3_red | 4.97 | 5.05 | 5.93 | 5.86 | 5.7 | 5.52 | 5.38 | 5.51 | 5.76 | 5.9 |
| d3_orange | 5.03 | 5.11 | 6.0 | 5.93 | 5.76 | 5.58 | 5.44 | 5.57 | 5.82 | 5.96 |
| d3_yellow | 5.15 | 5.23 | 6.14 | 6.07 | 5.9 | 5.71 | 5.57 | 5.7 | 5.96 | 6.11 |
| d3_chartreuse | 5.27 | 5.35 | 6.29 | 6.22 | 6.04 | 5.85 | 5.7 | 5.84 | 6.1 | 6.26 |
| d3_green | 5.32 | 5.4 | 6.34 | 6.27 | 6.09 | 5.9 | 5.75 | 5.89 | 6.16 | 6.31 |
| d3_cyan | 5.25 | 5.33 | 6.26 | 6.19 | 6.01 | 5.82 | 5.67 | 5.81 | 6.07 | 6.22 |
| d3_blue | 5.11 | 5.19 | 6.09 | 6.02 | 5.85 | 5.67 | 5.52 | 5.66 | 5.91 | 6.06 |
| d3_purple | 5.0 | 5.08 | 5.97 | 5.9 | 5.73 | 5.55 | 5.41 | 5.55 | 5.79 | 5.94 |



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
