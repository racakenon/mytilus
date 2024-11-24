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
| d0_black | #35343D | [53.36, 52.07, 60.61] |  [0.33, 0.01, -0.01] |
| d0_white | #35362E | [53.27, 54.27, 45.52] |  [0.33, -0.01, 0.01] |
| d1_black | #3D3C45 | [61.09, 59.78, 68.52] |  [0.36, 0.01, -0.01] |
| d1_white | #3D3E35 | [61.0, 62.03, 53.11] |  [0.36, -0.01, 0.01] |
| d2_black | #45444D | [68.98, 67.66, 76.58] |  [0.39, 0.01, -0.01] |
| d2_white | #45463D | [68.89, 69.95, 60.86] |  [0.39, -0.01, 0.01] |
| d3_black | #4D4C55 | [77.03, 75.69, 84.78] |  [0.42, 0.01, -0.01] |
| d3_white | #4D4E45 | [76.93, 78.02, 68.77] |  [0.42, -0.01, 0.01] |
| d1_red | #572F3C | [86.61, 47.09, 59.74] |  [0.36, 0.06, 0.0] |
| d1_orange | #573222 | [87.07, 50.36, 33.53] |  [0.36, 0.04, 0.04] |
| d1_yellow | #493B13 | [73.33, 59.47, 18.98] |  [0.36, 0.0, 0.06] |
| d1_chartreuse | #2F4423 | [47.09, 68.12, 35.11] |  [0.36, -0.04, 0.04] |
| d1_green | #0C473E | [11.77, 71.24, 62.25] |  [0.36, -0.06, 0.0] |
| d1_cyan | #104355 | [15.86, 67.46, 84.74] |  [0.36, -0.04, -0.04] |
| d1_blue | #313B5D | [48.77, 59.25, 92.78] |  [0.36, -0.0, -0.06] |
| d1_purple | #493353 | [72.97, 51.11, 82.77] |  [0.36, 0.04, -0.04] |
| d3_red | #6E3B4B | [109.91, 58.59, 75.31] |  [0.42, 0.08, 0.0] |
| d3_orange | #6F3F29 | [110.55, 62.85, 40.79] |  [0.42, 0.05, 0.05] |
| d3_yellow | #5D4B14 | [92.95, 74.83, 19.84] |  [0.42, 0.0, 0.08] |
| d3_chartreuse | #3B562B | [58.72, 86.11, 42.82] |  [0.42, -0.05, 0.05] |
| d3_green | #045A4F | [3.63, 90.14, 78.56] |  [0.42, -0.08, 0.0] |
| d3_cyan | #0D556C | [12.54, 85.18, 107.72] |  [0.42, -0.05, -0.05] |
| d3_blue | #3D4A76 | [61.09, 74.49, 118.13] |  [0.42, -0.0, -0.08] |
| d3_purple | #5C4069 | [92.44, 63.91, 105.14] |  [0.42, 0.05, -0.05] |
| v0_black | #EEEDF8 | [238.38, 236.82, 248.0] |  [0.95, 0.01, -0.01] |
| v0_white | #EEF0E4 | [238.26, 239.68, 228.41] |  [0.95, -0.01, 0.01] |
| v1_black | #E1DEF4 | [225.3, 222.08, 244.14] |  [0.91, 0.01, -0.03] |
| v1_white | #E1E4CD | [225.07, 227.74, 205.31] |  [0.91, -0.01, 0.03] |
| v2_black | #D4D1E7 | [212.24, 209.04, 230.85] |  [0.87, 0.01, -0.03] |
| v2_white | #D4D7C0 | [212.01, 214.64, 192.45] |  [0.87, -0.01, 0.03] |
| v3_black | #C4C1D6 | [196.12, 192.95, 214.43] |  [0.82, 0.01, -0.03] |
| v3_white | #C4C6B1 | [195.9, 198.47, 176.59] |  [0.82, -0.01, 0.03] |
| v2_red | #F7C4D2 | [246.89, 196.47, 210.45] |  [0.87, 0.06, 0.0] |
| v2_orange | #F7C9B4 | [247.1, 200.62, 180.18] |  [0.87, 0.04, 0.04] |
| v2_yellow | #E3D3A8 | [227.46, 211.22, 167.69] |  [0.87, 0.0, 0.06] |
| v2_chartreuse | #C4DEB6 | [195.63, 221.69, 182.28] |  [0.87, -0.04, 0.04] |
| v2_green | #A9E2D6 | [169.48, 225.77, 213.58] |  [0.87, -0.06, 0.0] |
| v2_cyan | #AADDF2 | [170.31, 221.33, 242.25] |  [0.87, -0.04, -0.04] |
| v2_blue | #C5D3FD | [196.61, 211.16, 252.8] |  [0.87, -0.0, -0.06] |
| v2_purple | #E3C9F0 | [227.46, 200.97, 239.93] |  [0.87, 0.04, -0.04] |


### contrast

| | v0_black | v0_white | v1_black | v1_white | v2_black | v2_white |
|---|---|---|---|---|---|---|
| d0_black | 10.57 | 10.63 | 9.33 | 9.44 | 8.22 | 8.32 |
| d0_white | 10.5 | 10.55 | 9.27 | 9.37 | 8.17 | 8.26 |
| d1_black | 9.4 | 9.45 | 8.3 | 8.39 | 7.31 | 7.4 |
| d1_white | 9.33 | 9.38 | 8.24 | 8.33 | 7.26 | 7.35 |
| d2_black | 8.31 | 8.36 | 7.34 | 7.42 | 6.47 | 6.54 |
| d2_white | 8.25 | 8.29 | 7.28 | 7.36 | 6.42 | 6.49 |
| d3_black | 7.32 | 7.36 | 6.46 | 6.54 | 5.7 | 5.76 |
| d3_white | 7.27 | 7.3 | 6.41 | 6.49 | 5.65 | 5.72 |
| d1_red | 9.66 | 9.71 | 8.52 | 8.62 | 7.51 | 7.6 |
| d1_orange | 9.57 | 9.62 | 8.45 | 8.54 | 7.45 | 7.53 |
| d1_yellow | 9.37 | 9.42 | 8.28 | 8.37 | 7.29 | 7.38 |
| d1_chartreuse | 9.16 | 9.21 | 8.09 | 8.18 | 7.13 | 7.21 |
| d1_green | 9.08 | 9.13 | 8.02 | 8.11 | 7.07 | 7.15 |
| d1_cyan | 9.21 | 9.26 | 8.13 | 8.22 | 7.16 | 7.25 |
| d1_blue | 9.44 | 9.49 | 8.33 | 8.43 | 7.34 | 7.43 |
| d1_purple | 9.61 | 9.66 | 8.49 | 8.58 | 7.48 | 7.57 |
| d3_red | 7.6 | 7.64 | 6.71 | 6.78 | 5.91 | 5.98 |
| d3_orange | 7.51 | 7.55 | 6.63 | 6.71 | 5.84 | 5.91 |
| d3_yellow | 7.31 | 7.35 | 6.45 | 6.52 | 5.69 | 5.75 |
| d3_chartreuse | 7.09 | 7.13 | 6.26 | 6.33 | 5.52 | 5.58 |
| d3_green | 7.0 | 7.04 | 6.18 | 6.25 | 5.45 | 5.51 |
| d3_cyan | 7.13 | 7.17 | 6.3 | 6.37 | 5.55 | 5.62 |
| d3_blue | 7.38 | 7.42 | 6.51 | 6.58 | 5.74 | 5.81 |
| d3_purple | 7.55 | 7.6 | 6.67 | 6.74 | 5.88 | 5.95 |


| | v3_black | v3_white | v2_red | v2_orange | v2_yellow | v2_chartreuse | v2_green | v2_cyan | v2_blue | v2_purple |
|---|---|---|---|---|---|---|---|---|---|---|
| d0_black | 6.98 | 7.06 | 8.07 | 8.14 | 8.28 | 8.43 | 8.48 | 8.4 | 8.24 | 8.11 |
| d0_white | 6.93 | 7.02 | 8.02 | 8.08 | 8.23 | 8.37 | 8.42 | 8.34 | 8.18 | 8.06 |
| d1_black | 6.21 | 6.28 | 7.18 | 7.24 | 7.37 | 7.49 | 7.54 | 7.47 | 7.33 | 7.21 |
| d1_white | 6.16 | 6.24 | 7.13 | 7.19 | 7.31 | 7.44 | 7.48 | 7.41 | 7.28 | 7.16 |
| d2_black | 5.49 | 5.55 | 6.35 | 6.4 | 6.51 | 6.63 | 6.67 | 6.6 | 6.48 | 6.38 |
| d2_white | 5.45 | 5.51 | 6.3 | 6.35 | 6.46 | 6.58 | 6.62 | 6.55 | 6.43 | 6.33 |
| d3_black | 4.83 | 4.89 | 5.59 | 5.64 | 5.74 | 5.84 | 5.87 | 5.82 | 5.71 | 5.62 |
| d3_white | 4.8 | 4.86 | 5.55 | 5.6 | 5.69 | 5.79 | 5.83 | 5.77 | 5.67 | 5.58 |
| d1_red | 6.38 | 6.45 | 7.38 | 7.44 | 7.57 | 7.7 | 7.75 | 7.67 | 7.53 | 7.41 |
| d1_orange | 6.32 | 6.4 | 7.31 | 7.37 | 7.5 | 7.63 | 7.68 | 7.6 | 7.46 | 7.35 |
| d1_yellow | 6.19 | 6.27 | 7.16 | 7.22 | 7.35 | 7.47 | 7.52 | 7.45 | 7.31 | 7.19 |
| d1_chartreuse | 6.05 | 6.12 | 7.0 | 7.06 | 7.18 | 7.3 | 7.35 | 7.28 | 7.14 | 7.03 |
| d1_green | 6.0 | 6.07 | 6.94 | 6.99 | 7.12 | 7.24 | 7.28 | 7.22 | 7.08 | 6.97 |
| d1_cyan | 6.08 | 6.15 | 7.03 | 7.09 | 7.21 | 7.34 | 7.38 | 7.31 | 7.18 | 7.07 |
| d1_blue | 6.23 | 6.31 | 7.21 | 7.27 | 7.4 | 7.53 | 7.57 | 7.5 | 7.36 | 7.24 |
| d1_purple | 6.35 | 6.42 | 7.34 | 7.4 | 7.53 | 7.66 | 7.71 | 7.64 | 7.5 | 7.38 |
| d3_red | 5.02 | 5.08 | 5.8 | 5.85 | 5.96 | 6.06 | 6.1 | 6.04 | 5.93 | 5.83 |
| d3_orange | 4.96 | 5.02 | 5.74 | 5.78 | 5.89 | 5.99 | 6.03 | 5.97 | 5.86 | 5.76 |
| d3_yellow | 4.83 | 4.88 | 5.58 | 5.63 | 5.73 | 5.83 | 5.86 | 5.81 | 5.7 | 5.61 |
| d3_chartreuse | 4.68 | 4.74 | 5.41 | 5.46 | 5.55 | 5.65 | 5.69 | 5.63 | 5.53 | 5.44 |
| d3_green | 4.63 | 4.68 | 5.35 | 5.4 | 5.49 | 5.59 | 5.62 | 5.57 | 5.46 | 5.38 |
| d3_cyan | 4.71 | 4.77 | 5.45 | 5.49 | 5.59 | 5.69 | 5.72 | 5.67 | 5.56 | 5.48 |
| d3_blue | 4.87 | 4.93 | 5.63 | 5.68 | 5.78 | 5.88 | 5.92 | 5.86 | 5.75 | 5.66 |
| d3_purple | 4.99 | 5.05 | 5.77 | 5.82 | 5.92 | 6.02 | 6.06 | 6.0 | 5.89 | 5.8 |


## dark colors

| | hex | rgb | OKlab |
|---|---|---|
| d0_black | #E1E2D7 | [225.05, 226.45, 215.3] |  [0.91, -0.01, 0.01] |
| d0_white | #E1E0EB | [225.17, 223.63, 234.69] |  [0.91, 0.01, -0.01] |
| d1_black | #D4D5CA | [211.99, 213.37, 202.34] |  [0.87, -0.01, 0.01] |
| d1_white | #D4D3DE | [212.1, 210.58, 221.51] |  [0.87, 0.01, -0.01] |
| d2_black | #CECFC4 | [205.51, 206.88, 195.92] |  [0.85, -0.01, 0.01] |
| d2_white | #CECCD7 | [205.63, 204.11, 214.98] |  [0.85, 0.01, -0.01] |
| d3_black | #CACCC1 | [202.29, 203.66, 192.72] |  [0.84, -0.01, 0.01] |
| d3_white | #CAC9D4 | [202.4, 200.89, 211.72] |  [0.84, 0.01, -0.01] |
| d1_red | #F7C4D2 | [246.89, 196.47, 210.45] |  [0.87, 0.06, 0.0] |
| d1_orange | #F7C9B4 | [247.1, 200.62, 180.18] |  [0.87, 0.04, 0.04] |
| d1_yellow | #E3D3A8 | [227.46, 211.22, 167.69] |  [0.87, 0.0, 0.06] |
| d1_chartreuse | #C4DEB6 | [195.63, 221.69, 182.28] |  [0.87, -0.04, 0.04] |
| d1_green | #A9E2D6 | [169.48, 225.77, 213.58] |  [0.87, -0.06, 0.0] |
| d1_cyan | #AADDF2 | [170.31, 221.33, 242.25] |  [0.87, -0.04, -0.04] |
| d1_blue | #C5D3FD | [196.61, 211.16, 252.8] |  [0.87, -0.0, -0.06] |
| d1_purple | #E3C9F0 | [227.46, 200.97, 239.93] |  [0.87, 0.04, -0.04] |
| d3_red | #F5B7C8 | [244.64, 182.65, 200.38] |  [0.84, 0.08, 0.0] |
| d3_orange | #F5BCA2 | [245.02, 187.76, 162.41] |  [0.84, 0.05, 0.05] |
| d3_yellow | #DDC992 | [221.44, 201.04, 146.21] |  [0.84, 0.0, 0.08] |
| d3_chartreuse | #B6D6A5 | [181.8, 214.08, 164.97] |  [0.84, -0.05, 0.05] |
| d3_green | #93DBCC | [147.17, 219.08, 204.25] |  [0.84, -0.08, 0.0] |
| d3_cyan | #95D6F0 | [148.58, 213.52, 239.58] |  [0.84, -0.05, -0.05] |
| d3_blue | #B7C9FC | [183.26, 200.92, 252.49] |  [0.84, -0.0, -0.08] |
| d3_purple | #DDBCED | [221.31, 188.33, 236.68] |  [0.84, 0.05, -0.05] |
| v0_black | #2E2F26 | [45.72, 46.68, 38.12] |  [0.3, -0.01, 0.01] |
| v0_white | #2E2D35 | [45.81, 44.53, 52.87] |  [0.3, 0.01, -0.01] |
| v1_black | #353725 | [53.39, 55.11, 37.16] |  [0.33, -0.01, 0.03] |
| v1_white | #363344 | [53.58, 50.67, 67.71] |  [0.33, 0.01, -0.03] |
| v2_black | #3D3F2D | [61.1, 62.91, 44.66] |  [0.36, -0.01, 0.03] |
| v2_white | #3D3A4C | [61.3, 58.38, 75.8] |  [0.36, 0.01, -0.03] |
| v3_black | #525441 | [82.46, 84.45, 65.45] |  [0.44, -0.01, 0.03] |
| v3_white | #535062 | [82.66, 79.71, 98.04] |  [0.44, 0.01, -0.03] |
| v2_red | #572F3C | [86.61, 47.09, 59.74] |  [0.36, 0.06, 0.0] |
| v2_orange | #573222 | [87.07, 50.36, 33.53] |  [0.36, 0.04, 0.04] |
| v2_yellow | #493B13 | [73.33, 59.47, 18.98] |  [0.36, 0.0, 0.06] |
| v2_chartreuse | #2F4423 | [47.09, 68.12, 35.11] |  [0.36, -0.04, 0.04] |
| v2_green | #0C473E | [11.77, 71.24, 62.25] |  [0.36, -0.06, 0.0] |
| v2_cyan | #104355 | [15.86, 67.46, 84.74] |  [0.36, -0.04, -0.04] |
| v2_blue | #313B5D | [48.77, 59.25, 92.78] |  [0.36, -0.0, -0.06] |
| v2_purple | #493353 | [72.97, 51.11, 82.77] |  [0.36, 0.04, -0.04] |


### contrast

| | v0_black | v0_white | v1_black | v1_white | v2_black | v2_white |
|---|---|---|---|---|---|---|
| d0_black | 10.43 | 10.5 | 9.32 | 9.45 | 8.28 | 8.41 |
| d0_white | 10.38 | 10.44 | 9.27 | 9.4 | 8.24 | 8.36 |
| d1_black | 9.2 | 9.26 | 8.22 | 8.33 | 7.3 | 7.41 |
| d1_white | 9.15 | 9.21 | 8.17 | 8.29 | 7.26 | 7.37 |
| d2_black | 8.62 | 8.68 | 7.7 | 7.81 | 6.85 | 6.95 |
| d2_white | 8.57 | 8.63 | 7.66 | 7.77 | 6.81 | 6.91 |
| d3_black | 8.35 | 8.4 | 7.46 | 7.56 | 6.63 | 6.72 |
| d3_white | 8.3 | 8.35 | 7.41 | 7.52 | 6.59 | 6.68 |
| d1_red | 8.95 | 9.01 | 8.0 | 8.11 | 7.11 | 7.21 |
| d1_orange | 9.02 | 9.08 | 8.06 | 8.17 | 7.16 | 7.27 |
| d1_yellow | 9.18 | 9.24 | 8.2 | 8.32 | 7.29 | 7.4 |
| d1_chartreuse | 9.34 | 9.4 | 8.35 | 8.46 | 7.42 | 7.53 |
| d1_green | 9.4 | 9.46 | 8.4 | 8.51 | 7.46 | 7.57 |
| d1_cyan | 9.31 | 9.37 | 8.32 | 8.43 | 7.39 | 7.5 |
| d1_blue | 9.14 | 9.2 | 8.16 | 8.28 | 7.25 | 7.36 |
| d1_purple | 8.99 | 9.05 | 8.03 | 8.15 | 7.14 | 7.25 |
| d3_red | 8.06 | 8.11 | 7.2 | 7.3 | 6.4 | 6.5 |
| d3_orange | 8.15 | 8.2 | 7.28 | 7.38 | 6.47 | 6.56 |
| d3_yellow | 8.33 | 8.38 | 7.44 | 7.54 | 6.61 | 6.71 |
| d3_chartreuse | 8.52 | 8.57 | 7.61 | 7.71 | 6.76 | 6.86 |
| d3_green | 8.58 | 8.64 | 7.67 | 7.78 | 6.82 | 6.92 |
| d3_cyan | 8.48 | 8.53 | 7.57 | 7.68 | 6.73 | 6.83 |
| d3_blue | 8.27 | 8.33 | 7.39 | 7.49 | 6.57 | 6.67 |
| d3_purple | 8.11 | 8.16 | 7.24 | 7.35 | 6.44 | 6.53 |


| | v3_black | v3_white | v2_red | v2_orange | v2_yellow | v2_chartreuse | v2_green | v2_cyan | v2_blue | v2_purple |
|---|---|---|---|---|---|---|---|---|---|---|
| d0_black | 5.92 | 6.01 | 8.6 | 8.52 | 8.35 | 8.16 | 8.09 | 8.2 | 8.4 | 8.56 |
| d0_white | 5.89 | 5.98 | 8.55 | 8.47 | 8.3 | 8.11 | 8.04 | 8.15 | 8.36 | 8.51 |
| d1_black | 5.22 | 5.3 | 7.58 | 7.51 | 7.36 | 7.19 | 7.13 | 7.23 | 7.41 | 7.55 |
| d1_white | 5.19 | 5.27 | 7.54 | 7.47 | 7.32 | 7.15 | 7.09 | 7.19 | 7.37 | 7.5 |
| d2_black | 4.89 | 4.97 | 7.11 | 7.04 | 6.9 | 6.74 | 6.68 | 6.78 | 6.95 | 7.08 |
| d2_white | 4.86 | 4.94 | 7.07 | 7.0 | 6.86 | 6.7 | 6.64 | 6.74 | 6.91 | 7.03 |
| d3_black | 4.74 | 4.81 | 6.88 | 6.82 | 6.68 | 6.53 | 6.47 | 6.56 | 6.72 | 6.85 |
| d3_white | 4.71 | 4.78 | 6.84 | 6.78 | 6.64 | 6.49 | 6.43 | 6.52 | 6.68 | 6.81 |
| d1_red | 5.08 | 5.16 | 7.38 | 7.31 | 7.16 | 7.0 | 6.94 | 7.03 | 7.21 | 7.34 |
| d1_orange | 5.12 | 5.2 | 7.44 | 7.37 | 7.22 | 7.06 | 6.99 | 7.09 | 7.27 | 7.4 |
| d1_yellow | 5.21 | 5.29 | 7.57 | 7.5 | 7.35 | 7.18 | 7.12 | 7.21 | 7.4 | 7.53 |
| d1_chartreuse | 5.3 | 5.38 | 7.7 | 7.63 | 7.47 | 7.3 | 7.24 | 7.34 | 7.53 | 7.66 |
| d1_green | 5.33 | 5.42 | 7.75 | 7.68 | 7.52 | 7.35 | 7.28 | 7.38 | 7.57 | 7.71 |
| d1_cyan | 5.28 | 5.36 | 7.67 | 7.6 | 7.45 | 7.28 | 7.22 | 7.31 | 7.5 | 7.64 |
| d1_blue | 5.18 | 5.27 | 7.53 | 7.46 | 7.31 | 7.14 | 7.08 | 7.18 | 7.36 | 7.5 |
| d1_purple | 5.1 | 5.18 | 7.41 | 7.35 | 7.19 | 7.03 | 6.97 | 7.07 | 7.24 | 7.38 |
| d3_red | 4.57 | 4.65 | 6.64 | 6.58 | 6.45 | 6.3 | 6.25 | 6.33 | 6.49 | 6.61 |
| d3_orange | 4.62 | 4.69 | 6.71 | 6.65 | 6.52 | 6.37 | 6.31 | 6.4 | 6.56 | 6.68 |
| d3_yellow | 4.72 | 4.8 | 6.86 | 6.8 | 6.66 | 6.51 | 6.45 | 6.54 | 6.71 | 6.83 |
| d3_chartreuse | 4.83 | 4.91 | 7.02 | 6.96 | 6.81 | 6.66 | 6.6 | 6.69 | 6.86 | 6.99 |
| d3_green | 4.87 | 4.95 | 7.07 | 7.01 | 6.87 | 6.71 | 6.65 | 6.74 | 6.92 | 7.04 |
| d3_cyan | 4.81 | 4.89 | 6.99 | 6.92 | 6.78 | 6.63 | 6.57 | 6.66 | 6.83 | 6.95 |
| d3_blue | 4.69 | 4.77 | 6.82 | 6.76 | 6.62 | 6.47 | 6.41 | 6.5 | 6.66 | 6.79 |
| d3_purple | 4.6 | 4.67 | 6.68 | 6.62 | 6.49 | 6.34 | 6.28 | 6.37 | 6.53 | 6.65 |



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
