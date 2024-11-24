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
| d0_black | #35343F | [53.42, 51.63, 63.0] |  [0.33, 0.01, -0.02] |
| d0_white | #35372B | [53.3, 54.57, 42.82] |  [0.33, -0.01, 0.02] |
| d1_black | #3B3944 | [58.55, 56.75, 68.3] |  [0.35, 0.01, -0.02] |
| d1_white | #3A3C30 | [58.43, 59.73, 47.83] |  [0.35, -0.01, 0.02] |
| d2_black | #403E4A | [63.76, 61.95, 73.66] |  [0.37, 0.01, -0.02] |
| d2_white | #404135 | [63.63, 64.97, 52.92] |  [0.37, -0.01, 0.02] |
| d3_black | #45434F | [69.04, 67.21, 79.08] |  [0.39, 0.01, -0.02] |
| d3_white | #45463A | [68.91, 70.27, 58.08] |  [0.39, -0.01, 0.02] |
| d1_red | #502F39 | [80.0, 47.22, 57.36] |  [0.35, 0.05, 0.0] |
| d1_orange | #503224 | [80.34, 49.93, 36.18] |  [0.35, 0.04, 0.04] |
| d1_yellow | #45391A | [68.62, 57.31, 25.74] |  [0.35, 0.0, 0.05] |
| d1_chartreuse | #2F4026 | [47.06, 64.41, 37.5] |  [0.35, -0.04, 0.04] |
| d1_green | #17433B | [23.25, 67.02, 59.43] |  [0.35, -0.05, 0.0] |
| d1_cyan | #19404E | [25.06, 63.94, 78.13] |  [0.35, -0.04, -0.04] |
| d1_blue | #303955 | [48.25, 57.17, 84.85] |  [0.35, -0.0, -0.05] |
| d1_purple | #44324D | [68.39, 50.45, 76.52] |  [0.35, 0.04, -0.04] |
| d3_red | #633443 | [99.08, 52.06, 67.39] |  [0.39, 0.07, 0.0] |
| d3_orange | #643824 | [99.67, 55.97, 35.74] |  [0.39, 0.05, 0.05] |
| d3_yellow | #544310 | [83.56, 66.95, 16.36] |  [0.39, 0.0, 0.07] |
| d3_chartreuse | #344D26 | [52.19, 77.28, 37.6] |  [0.39, -0.05, 0.05] |
| d3_green | #025146 | [1.98, 80.98, 70.38] |  [0.39, -0.07, 0.0] |
| d3_cyan | #094C61 | [9.33, 76.43, 97.09] |  [0.39, -0.05, -0.05] |
| d3_blue | #36436B | [54.37, 66.63, 106.62] |  [0.39, -0.0, -0.07] |
| d3_purple | #53395F | [83.09, 56.94, 94.73] |  [0.39, 0.05, -0.05] |
| v0_black | #EEECFB | [238.41, 236.31, 251.2] |  [0.95, 0.01, -0.02] |
| v0_white | #EEF0E1 | [238.26, 240.12, 225.07] |  [0.95, -0.01, 0.02] |
| v1_black | #E1DEF7 | [225.36, 221.55, 247.26] |  [0.91, 0.01, -0.03] |
| v1_white | #E1E4CA | [225.09, 228.15, 201.93] |  [0.91, -0.01, 0.03] |
| v2_black | #D4D1EA | [212.3, 208.51, 233.93] |  [0.87, 0.01, -0.03] |
| v2_white | #D4D7BD | [212.03, 215.04, 189.1] |  [0.87, -0.01, 0.03] |
| v3_black | #BEBAD3 | [189.8, 186.06, 210.94] |  [0.8, 0.01, -0.03] |
| v3_white | #BEC0A7 | [189.54, 192.46, 167.01] |  [0.8, -0.01, 0.03] |
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
| d0_black | 10.57 | 10.65 | 9.33 | 9.46 | 8.23 | 8.34 |
| d0_white | 10.48 | 10.55 | 9.25 | 9.37 | 8.15 | 8.26 |
| d1_black | 9.78 | 9.86 | 8.64 | 8.75 | 7.61 | 7.72 |
| d1_white | 9.69 | 9.76 | 8.55 | 8.67 | 7.54 | 7.64 |
| d2_black | 9.03 | 9.1 | 7.97 | 8.08 | 7.03 | 7.12 |
| d2_white | 8.94 | 9.01 | 7.89 | 8.0 | 6.96 | 7.05 |
| d3_black | 8.31 | 8.38 | 7.34 | 7.44 | 6.47 | 6.56 |
| d3_white | 8.23 | 8.29 | 7.27 | 7.36 | 6.4 | 6.49 |
| d1_red | 9.98 | 10.06 | 8.81 | 8.93 | 7.77 | 7.87 |
| d1_orange | 9.91 | 9.98 | 8.75 | 8.86 | 7.71 | 7.81 |
| d1_yellow | 9.74 | 9.81 | 8.6 | 8.71 | 7.58 | 7.68 |
| d1_chartreuse | 9.56 | 9.63 | 8.44 | 8.55 | 7.44 | 7.54 |
| d1_green | 9.49 | 9.56 | 8.38 | 8.49 | 7.39 | 7.49 |
| d1_cyan | 9.6 | 9.67 | 8.47 | 8.58 | 7.47 | 7.57 |
| d1_blue | 9.79 | 9.86 | 8.64 | 8.76 | 7.62 | 7.72 |
| d1_purple | 9.94 | 10.02 | 8.78 | 8.89 | 7.74 | 7.84 |
| d3_red | 8.59 | 8.65 | 7.58 | 7.68 | 6.68 | 6.77 |
| d3_orange | 8.5 | 8.56 | 7.5 | 7.6 | 6.61 | 6.7 |
| d3_yellow | 8.29 | 8.35 | 7.31 | 7.41 | 6.45 | 6.53 |
| d3_chartreuse | 8.06 | 8.12 | 7.11 | 7.21 | 6.27 | 6.35 |
| d3_green | 7.97 | 8.03 | 7.04 | 7.13 | 6.2 | 6.29 |
| d3_cyan | 8.1 | 8.16 | 7.15 | 7.25 | 6.31 | 6.39 |
| d3_blue | 8.36 | 8.42 | 7.38 | 7.47 | 6.5 | 6.59 |
| d3_purple | 8.54 | 8.6 | 7.54 | 7.64 | 6.65 | 6.74 |


| | v3_black | v3_white | v2_red | v2_orange | v2_yellow | v2_chartreuse | v2_green | v2_cyan | v2_blue | v2_purple |
|---|---|---|---|---|---|---|---|---|---|---|
| d0_black | 6.52 | 6.62 | 8.08 | 8.15 | 8.29 | 8.44 | 8.49 | 8.41 | 8.25 | 8.12 |
| d0_white | 6.46 | 6.56 | 8.01 | 8.08 | 8.22 | 8.36 | 8.41 | 8.33 | 8.18 | 8.05 |
| d1_black | 6.04 | 6.12 | 7.48 | 7.54 | 7.68 | 7.81 | 7.86 | 7.78 | 7.64 | 7.52 |
| d1_white | 5.98 | 6.07 | 7.41 | 7.47 | 7.6 | 7.73 | 7.78 | 7.71 | 7.56 | 7.45 |
| d2_black | 5.57 | 5.65 | 6.9 | 6.96 | 7.08 | 7.21 | 7.25 | 7.18 | 7.05 | 6.94 |
| d2_white | 5.52 | 5.6 | 6.84 | 6.89 | 7.01 | 7.14 | 7.18 | 7.11 | 6.98 | 6.87 |
| d3_black | 5.13 | 5.2 | 6.36 | 6.41 | 6.52 | 6.64 | 6.68 | 6.61 | 6.49 | 6.39 |
| d3_white | 5.08 | 5.15 | 6.29 | 6.35 | 6.46 | 6.57 | 6.61 | 6.55 | 6.42 | 6.32 |
| d1_red | 6.16 | 6.25 | 7.63 | 7.7 | 7.83 | 7.97 | 8.02 | 7.94 | 7.79 | 7.67 |
| d1_orange | 6.11 | 6.2 | 7.58 | 7.64 | 7.77 | 7.91 | 7.96 | 7.88 | 7.73 | 7.61 |
| d1_yellow | 6.01 | 6.1 | 7.45 | 7.51 | 7.64 | 7.77 | 7.82 | 7.75 | 7.6 | 7.48 |
| d1_chartreuse | 5.9 | 5.98 | 7.31 | 7.37 | 7.5 | 7.63 | 7.68 | 7.6 | 7.46 | 7.34 |
| d1_green | 5.86 | 5.94 | 7.26 | 7.32 | 7.45 | 7.58 | 7.62 | 7.55 | 7.41 | 7.29 |
| d1_cyan | 5.92 | 6.01 | 7.34 | 7.4 | 7.53 | 7.66 | 7.71 | 7.63 | 7.49 | 7.37 |
| d1_blue | 6.04 | 6.13 | 7.49 | 7.55 | 7.68 | 7.82 | 7.86 | 7.79 | 7.64 | 7.52 |
| d1_purple | 6.13 | 6.22 | 7.6 | 7.67 | 7.8 | 7.94 | 7.98 | 7.91 | 7.76 | 7.64 |
| d3_red | 5.3 | 5.37 | 6.57 | 6.62 | 6.74 | 6.85 | 6.89 | 6.83 | 6.7 | 6.6 |
| d3_orange | 5.24 | 5.32 | 6.5 | 6.55 | 6.66 | 6.78 | 6.82 | 6.76 | 6.63 | 6.53 |
| d3_yellow | 5.11 | 5.19 | 6.34 | 6.39 | 6.5 | 6.61 | 6.65 | 6.59 | 6.47 | 6.37 |
| d3_chartreuse | 4.97 | 5.04 | 6.16 | 6.21 | 6.32 | 6.43 | 6.47 | 6.41 | 6.29 | 6.19 |
| d3_green | 4.92 | 4.99 | 6.09 | 6.15 | 6.25 | 6.36 | 6.4 | 6.34 | 6.22 | 6.12 |
| d3_cyan | 5.0 | 5.07 | 6.2 | 6.25 | 6.36 | 6.47 | 6.51 | 6.45 | 6.33 | 6.23 |
| d3_blue | 5.15 | 5.23 | 6.39 | 6.44 | 6.56 | 6.67 | 6.71 | 6.65 | 6.52 | 6.42 |
| d3_purple | 5.27 | 5.35 | 6.53 | 6.58 | 6.7 | 6.82 | 6.86 | 6.79 | 6.67 | 6.56 |


## dark colors

| | hex | rgb | OKlab |
|---|---|---|
| d0_black | #E1E3D4 | [225.05, 226.89, 212.0] |  [0.91, -0.01, 0.02] |
| d0_white | #E1DFEE | [225.21, 223.12, 237.85] |  [0.91, 0.01, -0.02] |
| d1_black | #DBDCCE | [218.5, 220.33, 205.52] |  [0.89, -0.01, 0.02] |
| d1_white | #DBD9E7 | [218.66, 216.58, 231.23] |  [0.89, 0.01, -0.02] |
| d2_black | #D4D6C7 | [211.99, 213.8, 199.07] |  [0.87, -0.01, 0.02] |
| d2_white | #D4D2E1 | [212.14, 210.08, 224.64] |  [0.87, 0.01, -0.02] |
| d3_black | #CECFC1 | [205.51, 207.31, 192.67] |  [0.85, -0.01, 0.02] |
| d3_white | #CECCDA | [205.67, 203.61, 218.08] |  [0.85, 0.01, -0.02] |
| d1_red | #F8CED9 | [248.16, 205.67, 217.22] |  [0.89, 0.05, 0.0] |
| d1_orange | #F8D1C0 | [248.29, 209.16, 192.02] |  [0.89, 0.04, 0.04] |
| d1_yellow | #E7DAB6 | [231.48, 217.98, 181.81] |  [0.89, 0.0, 0.05] |
| d1_chartreuse | #CDE3C2 | [204.89, 226.73, 193.8] |  [0.89, -0.04, 0.04] |
| d1_green | #B8E6DC | [183.77, 230.17, 219.84] |  [0.89, -0.05, 0.0] |
| d1_cyan | #B8E2F4 | [184.33, 226.48, 243.96] |  [0.89, -0.04, -0.04] |
| d1_blue | #CEDAFD | [205.61, 217.95, 252.88] |  [0.89, -0.0, -0.05] |
| d1_purple | #E8D1F2 | [231.53, 209.4, 242.03] |  [0.89, 0.04, -0.04] |
| d3_red | #F5BBCC | [245.43, 187.26, 203.73] |  [0.85, 0.07, 0.0] |
| d3_orange | #F6C0A8 | [245.76, 192.06, 168.33] |  [0.85, 0.05, 0.05] |
| d3_yellow | #DFCC99 | [223.45, 204.43, 153.42] |  [0.85, 0.0, 0.07] |
| d3_chartreuse | #BAD9AB | [186.4, 216.62, 170.74] |  [0.85, -0.05, 0.05] |
| d3_green | #9BDDCF | [154.75, 221.32, 207.35] |  [0.85, -0.07, 0.0] |
| d3_cyan | #9CD8F0 | [155.94, 216.14, 240.49] |  [0.85, -0.05, -0.05] |
| d3_blue | #BCCCFD | [187.69, 204.34, 252.62] |  [0.85, -0.0, -0.07] |
| d3_purple | #DFC1EE | [223.36, 192.55, 237.78] |  [0.85, 0.05, -0.05] |
| v0_black | #2B2C21 | [43.27, 44.47, 33.05] |  [0.29, -0.01, 0.02] |
| v0_white | #2B2A35 | [43.4, 41.62, 52.63] |  [0.29, 0.01, -0.02] |
| v1_black | #353722 | [53.45, 55.35, 34.16] |  [0.33, -0.01, 0.03] |
| v1_white | #363246 | [53.68, 50.15, 70.04] |  [0.33, 0.01, -0.03] |
| v2_black | #40422C | [63.77, 65.81, 44.2] |  [0.37, -0.01, 0.03] |
| v2_white | #403C51 | [64.0, 60.48, 80.93] |  [0.37, 0.01, -0.03] |
| v3_black | #53553E | [82.51, 84.75, 62.42] |  [0.44, -0.01, 0.03] |
| v3_white | #534F65 | [82.74, 79.2, 100.57] |  [0.44, 0.01, -0.03] |
| v2_red | #59323E | [89.49, 49.68, 62.34] |  [0.37, 0.06, 0.0] |
| v2_orange | #5A3524 | [89.94, 52.98, 36.09] |  [0.37, 0.04, 0.04] |
| v2_yellow | #4C3E16 | [76.03, 62.12, 21.9] |  [0.37, 0.0, 0.06] |
| v2_chartreuse | #324726 | [49.65, 70.81, 37.67] |  [0.37, -0.04, 0.04] |
| v2_green | #104A41 | [15.82, 73.96, 64.87] |  [0.37, -0.06, 0.0] |
| v2_cyan | #134658 | [19.35, 70.16, 87.53] |  [0.37, -0.04, -0.04] |
| v2_blue | #333E60 | [51.29, 61.9, 95.65] |  [0.37, -0.0, -0.06] |
| v2_purple | #4C3656 | [75.69, 53.71, 85.56] |  [0.37, 0.04, -0.04] |


### contrast

| | v0_black | v0_white | v1_black | v1_white | v2_black | v2_white |
|---|---|---|---|---|---|---|
| d0_black | 10.8 | 10.89 | 9.32 | 9.47 | 7.95 | 8.09 |
| d0_white | 10.72 | 10.81 | 9.25 | 9.4 | 7.89 | 8.03 |
| d1_black | 10.15 | 10.23 | 8.76 | 8.9 | 7.47 | 7.6 |
| d1_white | 10.07 | 10.16 | 8.69 | 8.83 | 7.42 | 7.55 |
| d2_black | 9.52 | 9.6 | 8.22 | 8.35 | 7.01 | 7.14 |
| d2_white | 9.45 | 9.53 | 8.16 | 8.29 | 6.96 | 7.08 |
| d3_black | 8.93 | 9.0 | 7.71 | 7.83 | 6.57 | 6.69 |
| d3_white | 8.86 | 8.93 | 7.64 | 7.77 | 6.52 | 6.64 |
| d1_red | 9.91 | 9.99 | 8.55 | 8.69 | 7.3 | 7.43 |
| d1_orange | 9.98 | 10.06 | 8.61 | 8.75 | 7.35 | 7.48 |
| d1_yellow | 10.12 | 10.21 | 8.74 | 8.88 | 7.45 | 7.58 |
| d1_chartreuse | 10.26 | 10.35 | 8.86 | 9.0 | 7.56 | 7.69 |
| d1_green | 10.31 | 10.4 | 8.9 | 9.05 | 7.6 | 7.73 |
| d1_cyan | 10.24 | 10.32 | 8.83 | 8.98 | 7.54 | 7.67 |
| d1_blue | 10.08 | 10.16 | 8.7 | 8.84 | 7.42 | 7.55 |
| d1_purple | 9.95 | 10.03 | 8.59 | 8.73 | 7.33 | 7.45 |
| d3_red | 8.64 | 8.71 | 7.45 | 7.58 | 6.36 | 6.47 |
| d3_orange | 8.72 | 8.79 | 7.53 | 7.65 | 6.42 | 6.53 |
| d3_yellow | 8.9 | 8.98 | 7.68 | 7.81 | 6.56 | 6.67 |
| d3_chartreuse | 9.09 | 9.16 | 7.84 | 7.97 | 6.69 | 6.81 |
| d3_green | 9.15 | 9.23 | 7.9 | 8.03 | 6.74 | 6.86 |
| d3_cyan | 9.05 | 9.12 | 7.81 | 7.94 | 6.66 | 6.78 |
| d3_blue | 8.85 | 8.92 | 7.64 | 7.76 | 6.52 | 6.63 |
| d3_purple | 8.69 | 8.76 | 7.5 | 7.62 | 6.4 | 6.51 |


| | v3_black | v3_white | v2_red | v2_orange | v2_yellow | v2_chartreuse | v2_green | v2_cyan | v2_blue | v2_purple |
|---|---|---|---|---|---|---|---|---|---|---|
| d0_black | 5.92 | 6.03 | 8.27 | 8.19 | 8.02 | 7.84 | 7.77 | 7.88 | 8.08 | 8.23 |
| d0_white | 5.87 | 5.98 | 8.21 | 8.13 | 7.96 | 7.78 | 7.71 | 7.82 | 8.02 | 8.17 |
| d1_black | 5.56 | 5.66 | 7.77 | 7.7 | 7.54 | 7.36 | 7.3 | 7.4 | 7.59 | 7.73 |
| d1_white | 5.52 | 5.62 | 7.71 | 7.64 | 7.48 | 7.31 | 7.24 | 7.34 | 7.53 | 7.67 |
| d2_black | 5.22 | 5.32 | 7.29 | 7.22 | 7.07 | 6.91 | 6.85 | 6.95 | 7.12 | 7.26 |
| d2_white | 5.18 | 5.27 | 7.23 | 7.17 | 7.02 | 6.86 | 6.8 | 6.89 | 7.07 | 7.2 |
| d3_black | 4.89 | 4.98 | 6.83 | 6.77 | 6.63 | 6.48 | 6.42 | 6.51 | 6.68 | 6.8 |
| d3_white | 4.85 | 4.94 | 6.78 | 6.72 | 6.58 | 6.43 | 6.37 | 6.46 | 6.62 | 6.75 |
| d1_red | 5.43 | 5.53 | 7.59 | 7.52 | 7.36 | 7.19 | 7.13 | 7.23 | 7.41 | 7.55 |
| d1_orange | 5.47 | 5.57 | 7.64 | 7.57 | 7.41 | 7.24 | 7.18 | 7.28 | 7.46 | 7.6 |
| d1_yellow | 5.55 | 5.65 | 7.75 | 7.68 | 7.52 | 7.34 | 7.28 | 7.38 | 7.57 | 7.71 |
| d1_chartreuse | 5.62 | 5.73 | 7.86 | 7.79 | 7.62 | 7.45 | 7.38 | 7.48 | 7.68 | 7.82 |
| d1_green | 5.65 | 5.76 | 7.9 | 7.82 | 7.66 | 7.48 | 7.42 | 7.52 | 7.71 | 7.86 |
| d1_cyan | 5.61 | 5.71 | 7.83 | 7.76 | 7.6 | 7.43 | 7.36 | 7.46 | 7.65 | 7.8 |
| d1_blue | 5.52 | 5.63 | 7.72 | 7.65 | 7.49 | 7.31 | 7.25 | 7.35 | 7.54 | 7.68 |
| d1_purple | 5.45 | 5.55 | 7.62 | 7.55 | 7.39 | 7.22 | 7.16 | 7.25 | 7.44 | 7.58 |
| d3_red | 4.73 | 4.82 | 6.61 | 6.55 | 6.41 | 6.27 | 6.21 | 6.3 | 6.46 | 6.58 |
| d3_orange | 4.78 | 4.87 | 6.68 | 6.61 | 6.48 | 6.33 | 6.27 | 6.36 | 6.52 | 6.64 |
| d3_yellow | 4.88 | 4.97 | 6.81 | 6.75 | 6.61 | 6.46 | 6.4 | 6.49 | 6.66 | 6.78 |
| d3_chartreuse | 4.98 | 5.07 | 6.96 | 6.89 | 6.75 | 6.59 | 6.54 | 6.63 | 6.8 | 6.92 |
| d3_green | 5.02 | 5.11 | 7.01 | 6.94 | 6.8 | 6.64 | 6.58 | 6.68 | 6.85 | 6.97 |
| d3_cyan | 4.96 | 5.05 | 6.93 | 6.86 | 6.72 | 6.57 | 6.51 | 6.6 | 6.77 | 6.89 |
| d3_blue | 4.85 | 4.94 | 6.77 | 6.71 | 6.57 | 6.42 | 6.36 | 6.45 | 6.62 | 6.74 |
| d3_purple | 4.76 | 4.85 | 6.65 | 6.59 | 6.45 | 6.3 | 6.25 | 6.33 | 6.5 | 6.62 |



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
