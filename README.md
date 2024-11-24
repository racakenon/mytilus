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
| d0_black | #35343A | [53.32, 52.49, 58.2] |  [0.33, 0.0, -0.01] |
| d0_white | #353630 | [53.26, 53.95, 48.16] |  [0.33, -0.0, 0.01] |
| d1_black | #3A3A3F | [58.45, 57.62, 63.41] |  [0.35, 0.0, -0.01] |
| d1_white | #3A3B35 | [58.39, 59.1, 53.22] |  [0.35, -0.0, 0.01] |
| d2_black | #403F45 | [63.66, 62.82, 68.69] |  [0.37, 0.0, -0.01] |
| d2_white | #40403A | [63.6, 64.32, 58.37] |  [0.37, -0.0, 0.01] |
| d3_black | #45444A | [68.94, 68.09, 74.04] |  [0.39, 0.0, -0.01] |
| d3_white | #454640 | [68.88, 69.61, 63.58] |  [0.39, -0.0, 0.01] |
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
| v0_black | #EEEDF5 | [238.34, 237.32, 244.78] |  [0.95, 0.0, -0.01] |
| v0_white | #EEEFE8 | [238.26, 239.23, 231.73] |  [0.95, -0.0, 0.01] |
| v1_black | #E1E0E8 | [225.13, 224.12, 231.5] |  [0.91, 0.0, -0.01] |
| v1_white | #E1E2DB | [225.06, 226.01, 218.58] |  [0.91, -0.0, 0.01] |
| v2_black | #D4D3DA | [212.07, 211.07, 218.36] |  [0.87, 0.0, -0.01] |
| v2_white | #D4D5CE | [211.99, 212.93, 205.59] |  [0.87, -0.0, 0.01] |
| v3_black | #BEBDC4 | [189.57, 188.58, 195.73] |  [0.8, 0.0, -0.01] |
| v3_white | #BDBEB7 | [189.49, 190.41, 183.22] |  [0.8, -0.0, 0.01] |
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
| d0_black | 10.56 | 10.6 | 9.36 | 9.39 | 8.25 | 8.28 |
| d0_white | 10.52 | 10.55 | 9.31 | 9.35 | 8.21 | 8.24 |
| d1_black | 9.78 | 9.81 | 8.66 | 8.69 | 7.63 | 7.66 |
| d1_white | 9.73 | 9.76 | 8.62 | 8.65 | 7.6 | 7.63 |
| d2_black | 9.02 | 9.05 | 7.99 | 8.02 | 7.04 | 7.07 |
| d2_white | 8.98 | 9.01 | 7.95 | 7.98 | 7.01 | 7.04 |
| d3_black | 8.31 | 8.34 | 7.36 | 7.38 | 6.49 | 6.51 |
| d3_white | 8.26 | 8.29 | 7.32 | 7.35 | 6.45 | 6.48 |
| d1_red | 10.0 | 10.04 | 8.86 | 8.89 | 7.81 | 7.84 |
| d1_orange | 9.93 | 9.96 | 8.79 | 8.82 | 7.75 | 7.78 |
| d1_yellow | 9.76 | 9.79 | 8.64 | 8.67 | 7.62 | 7.65 |
| d1_chartreuse | 9.58 | 9.61 | 8.48 | 8.51 | 7.48 | 7.51 |
| d1_green | 9.51 | 9.55 | 8.42 | 8.45 | 7.43 | 7.45 |
| d1_cyan | 9.62 | 9.65 | 8.51 | 8.55 | 7.51 | 7.54 |
| d1_blue | 9.81 | 9.85 | 8.69 | 8.72 | 7.66 | 7.69 |
| d1_purple | 9.96 | 10.0 | 8.82 | 8.85 | 7.78 | 7.81 |
| d3_red | 8.6 | 8.63 | 7.62 | 7.65 | 6.72 | 6.74 |
| d3_orange | 8.51 | 8.54 | 7.54 | 7.57 | 6.64 | 6.67 |
| d3_yellow | 8.3 | 8.33 | 7.35 | 7.38 | 6.48 | 6.51 |
| d3_chartreuse | 8.07 | 8.1 | 7.15 | 7.18 | 6.3 | 6.33 |
| d3_green | 7.99 | 8.01 | 7.07 | 7.1 | 6.23 | 6.26 |
| d3_cyan | 8.12 | 8.15 | 7.19 | 7.22 | 6.34 | 6.36 |
| d3_blue | 8.37 | 8.4 | 7.41 | 7.44 | 6.54 | 6.56 |
| d3_purple | 8.56 | 8.59 | 7.58 | 7.61 | 6.68 | 6.71 |


| | v3_black | v3_white | v2_red | v2_orange | v2_yellow | v2_chartreuse | v2_green | v2_cyan | v2_blue | v2_purple |
|---|---|---|---|---|---|---|---|---|---|---|
| d0_black | 6.54 | 6.57 | 8.06 | 8.13 | 8.27 | 8.42 | 8.47 | 8.39 | 8.23 | 8.1 |
| d0_white | 6.51 | 6.54 | 8.03 | 8.09 | 8.23 | 8.38 | 8.43 | 8.35 | 8.19 | 8.06 |
| d1_black | 6.05 | 6.08 | 7.46 | 7.52 | 7.66 | 7.79 | 7.84 | 7.76 | 7.62 | 7.5 |
| d1_white | 6.02 | 6.05 | 7.43 | 7.49 | 7.62 | 7.75 | 7.8 | 7.72 | 7.58 | 7.46 |
| d2_black | 5.59 | 5.61 | 6.89 | 6.94 | 7.06 | 7.19 | 7.23 | 7.16 | 7.03 | 6.92 |
| d2_white | 5.56 | 5.58 | 6.85 | 6.91 | 7.03 | 7.15 | 7.19 | 7.13 | 6.99 | 6.88 |
| d3_black | 5.14 | 5.16 | 6.34 | 6.39 | 6.5 | 6.62 | 6.66 | 6.59 | 6.47 | 6.37 |
| d3_white | 5.12 | 5.14 | 6.31 | 6.36 | 6.47 | 6.58 | 6.62 | 6.56 | 6.44 | 6.34 |
| d1_red | 6.19 | 6.22 | 7.63 | 7.7 | 7.83 | 7.97 | 8.02 | 7.94 | 7.79 | 7.67 |
| d1_orange | 6.15 | 6.17 | 7.58 | 7.64 | 7.77 | 7.91 | 7.96 | 7.88 | 7.73 | 7.61 |
| d1_yellow | 6.04 | 6.07 | 7.45 | 7.51 | 7.64 | 7.77 | 7.82 | 7.75 | 7.6 | 7.48 |
| d1_chartreuse | 5.93 | 5.96 | 7.31 | 7.37 | 7.5 | 7.63 | 7.68 | 7.6 | 7.46 | 7.34 |
| d1_green | 5.89 | 5.91 | 7.26 | 7.32 | 7.45 | 7.58 | 7.62 | 7.55 | 7.41 | 7.29 |
| d1_cyan | 5.95 | 5.98 | 7.34 | 7.4 | 7.53 | 7.66 | 7.71 | 7.63 | 7.49 | 7.37 |
| d1_blue | 6.08 | 6.1 | 7.49 | 7.55 | 7.68 | 7.82 | 7.86 | 7.79 | 7.64 | 7.52 |
| d1_purple | 6.17 | 6.19 | 7.6 | 7.67 | 7.8 | 7.94 | 7.98 | 7.91 | 7.76 | 7.64 |
| d3_red | 5.33 | 5.35 | 6.57 | 6.62 | 6.74 | 6.85 | 6.89 | 6.83 | 6.7 | 6.6 |
| d3_orange | 5.27 | 5.29 | 6.5 | 6.55 | 6.66 | 6.78 | 6.82 | 6.76 | 6.63 | 6.53 |
| d3_yellow | 5.14 | 5.16 | 6.34 | 6.39 | 6.5 | 6.61 | 6.65 | 6.59 | 6.47 | 6.37 |
| d3_chartreuse | 5.0 | 5.02 | 6.16 | 6.21 | 6.32 | 6.43 | 6.47 | 6.41 | 6.29 | 6.19 |
| d3_green | 4.94 | 4.97 | 6.09 | 6.15 | 6.25 | 6.36 | 6.4 | 6.34 | 6.22 | 6.12 |
| d3_cyan | 5.03 | 5.05 | 6.2 | 6.25 | 6.36 | 6.47 | 6.51 | 6.45 | 6.33 | 6.23 |
| d3_blue | 5.18 | 5.21 | 6.39 | 6.44 | 6.56 | 6.67 | 6.71 | 6.65 | 6.52 | 6.42 |
| d3_purple | 5.3 | 5.32 | 6.53 | 6.58 | 6.7 | 6.82 | 6.86 | 6.79 | 6.67 | 6.56 |


## dark colors

| | hex | rgb | OKlab |
|---|---|---|
| d0_black | #E1E2DB | [225.06, 226.01, 218.58] |  [0.91, -0.0, 0.01] |
| d0_white | #E1E0E8 | [225.13, 224.12, 231.5] |  [0.91, 0.0, -0.01] |
| d1_black | #DBDBD4 | [218.51, 219.45, 212.07] |  [0.89, -0.0, 0.01] |
| d1_white | #DBDAE1 | [218.58, 217.58, 224.92] |  [0.89, 0.0, -0.01] |
| d2_black | #D4D5CE | [211.99, 212.93, 205.59] |  [0.87, -0.0, 0.01] |
| d2_white | #D4D3DA | [212.07, 211.07, 218.36] |  [0.87, 0.0, -0.01] |
| d3_black | #CECEC7 | [205.52, 206.45, 199.15] |  [0.85, -0.0, 0.01] |
| d3_white | #CECDD4 | [205.59, 204.6, 211.85] |  [0.85, 0.0, -0.01] |
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
| v0_black | #2B2C26 | [43.22, 43.89, 38.27] |  [0.29, -0.0, 0.01] |
| v0_white | #2B2A30 | [43.28, 42.47, 48.0] |  [0.29, 0.0, -0.01] |
| v1_black | #353630 | [53.26, 53.95, 48.16] |  [0.33, -0.0, 0.01] |
| v1_white | #35343A | [53.32, 52.49, 58.2] |  [0.33, 0.0, -0.01] |
| v2_black | #40403A | [63.6, 64.32, 58.37] |  [0.37, -0.0, 0.01] |
| v2_white | #403F45 | [63.66, 62.82, 68.69] |  [0.37, 0.0, -0.01] |
| v3_black | #52534D | [82.37, 83.13, 76.92] |  [0.44, -0.0, 0.01] |
| v3_white | #525258 | [82.43, 81.56, 87.7] |  [0.44, 0.0, -0.01] |
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
| d0_black | 10.8 | 10.85 | 9.35 | 9.39 | 7.98 | 8.02 |
| d0_white | 10.76 | 10.81 | 9.31 | 9.36 | 7.95 | 7.99 |
| d1_black | 10.15 | 10.19 | 8.78 | 8.82 | 7.5 | 7.53 |
| d1_white | 10.11 | 10.15 | 8.75 | 8.79 | 7.47 | 7.51 |
| d2_black | 9.52 | 9.56 | 8.24 | 8.28 | 7.04 | 7.07 |
| d2_white | 9.49 | 9.53 | 8.21 | 8.25 | 7.01 | 7.04 |
| d3_black | 8.93 | 8.96 | 7.73 | 7.76 | 6.6 | 6.63 |
| d3_white | 8.89 | 8.93 | 7.7 | 7.73 | 6.57 | 6.6 |
| d1_red | 9.93 | 9.97 | 8.59 | 8.63 | 7.33 | 7.37 |
| d1_orange | 10.0 | 10.04 | 8.65 | 8.69 | 7.38 | 7.42 |
| d1_yellow | 10.14 | 10.18 | 8.77 | 8.82 | 7.49 | 7.53 |
| d1_chartreuse | 10.28 | 10.32 | 8.9 | 8.94 | 7.6 | 7.63 |
| d1_green | 10.33 | 10.38 | 8.94 | 8.98 | 7.63 | 7.67 |
| d1_cyan | 10.25 | 10.29 | 8.87 | 8.91 | 7.57 | 7.61 |
| d1_blue | 10.1 | 10.14 | 8.74 | 8.78 | 7.46 | 7.5 |
| d1_purple | 9.97 | 10.01 | 8.63 | 8.67 | 7.36 | 7.4 |
| d3_red | 8.65 | 8.69 | 7.49 | 7.52 | 6.39 | 6.42 |
| d3_orange | 8.74 | 8.77 | 7.56 | 7.6 | 6.45 | 6.49 |
| d3_yellow | 8.92 | 8.95 | 7.72 | 7.75 | 6.59 | 6.62 |
| d3_chartreuse | 9.1 | 9.14 | 7.88 | 7.91 | 6.73 | 6.76 |
| d3_green | 9.17 | 9.21 | 7.94 | 7.97 | 6.77 | 6.81 |
| d3_cyan | 9.06 | 9.1 | 7.84 | 7.88 | 6.7 | 6.73 |
| d3_blue | 8.86 | 8.9 | 7.67 | 7.71 | 6.55 | 6.58 |
| d3_purple | 8.7 | 8.74 | 7.53 | 7.56 | 6.43 | 6.46 |


| | v3_black | v3_white | v2_red | v2_orange | v2_yellow | v2_chartreuse | v2_green | v2_cyan | v2_blue | v2_purple |
|---|---|---|---|---|---|---|---|---|---|---|
| d0_black | 5.94 | 5.97 | 8.25 | 8.18 | 8.01 | 7.82 | 7.76 | 7.86 | 8.06 | 8.21 |
| d0_white | 5.92 | 5.95 | 8.22 | 8.15 | 7.98 | 7.79 | 7.73 | 7.83 | 8.03 | 8.18 |
| d1_black | 5.58 | 5.61 | 7.75 | 7.68 | 7.52 | 7.35 | 7.29 | 7.39 | 7.58 | 7.72 |
| d1_white | 5.56 | 5.59 | 7.73 | 7.66 | 7.5 | 7.32 | 7.26 | 7.36 | 7.55 | 7.69 |
| d2_black | 5.24 | 5.27 | 7.28 | 7.21 | 7.06 | 6.9 | 6.84 | 6.93 | 7.11 | 7.24 |
| d2_white | 5.22 | 5.24 | 7.25 | 7.18 | 7.03 | 6.87 | 6.81 | 6.91 | 7.08 | 7.22 |
| d3_black | 4.91 | 4.94 | 6.82 | 6.76 | 6.62 | 6.47 | 6.41 | 6.5 | 6.66 | 6.79 |
| d3_white | 4.89 | 4.92 | 6.8 | 6.73 | 6.59 | 6.44 | 6.38 | 6.47 | 6.64 | 6.76 |
| d1_red | 5.46 | 5.49 | 7.59 | 7.52 | 7.36 | 7.19 | 7.13 | 7.23 | 7.41 | 7.55 |
| d1_orange | 5.5 | 5.53 | 7.64 | 7.57 | 7.41 | 7.24 | 7.18 | 7.28 | 7.46 | 7.6 |
| d1_yellow | 5.58 | 5.61 | 7.75 | 7.68 | 7.52 | 7.34 | 7.28 | 7.38 | 7.57 | 7.71 |
| d1_chartreuse | 5.66 | 5.68 | 7.86 | 7.79 | 7.62 | 7.45 | 7.38 | 7.48 | 7.68 | 7.82 |
| d1_green | 5.68 | 5.71 | 7.9 | 7.82 | 7.66 | 7.48 | 7.42 | 7.52 | 7.71 | 7.86 |
| d1_cyan | 5.64 | 5.67 | 7.83 | 7.76 | 7.6 | 7.43 | 7.36 | 7.46 | 7.65 | 7.8 |
| d1_blue | 5.55 | 5.58 | 7.72 | 7.65 | 7.49 | 7.31 | 7.25 | 7.35 | 7.54 | 7.68 |
| d1_purple | 5.48 | 5.51 | 7.62 | 7.55 | 7.39 | 7.22 | 7.16 | 7.25 | 7.44 | 7.58 |
| d3_red | 4.76 | 4.78 | 6.61 | 6.55 | 6.41 | 6.27 | 6.21 | 6.3 | 6.46 | 6.58 |
| d3_orange | 4.8 | 4.83 | 6.68 | 6.61 | 6.48 | 6.33 | 6.27 | 6.36 | 6.52 | 6.64 |
| d3_yellow | 4.9 | 4.93 | 6.81 | 6.75 | 6.61 | 6.46 | 6.4 | 6.49 | 6.66 | 6.78 |
| d3_chartreuse | 5.01 | 5.03 | 6.96 | 6.89 | 6.75 | 6.59 | 6.54 | 6.63 | 6.8 | 6.92 |
| d3_green | 5.04 | 5.07 | 7.01 | 6.94 | 6.8 | 6.64 | 6.58 | 6.68 | 6.85 | 6.97 |
| d3_cyan | 4.99 | 5.01 | 6.93 | 6.86 | 6.72 | 6.57 | 6.51 | 6.6 | 6.77 | 6.89 |
| d3_blue | 4.87 | 4.9 | 6.77 | 6.71 | 6.57 | 6.42 | 6.36 | 6.45 | 6.62 | 6.74 |
| d3_purple | 4.78 | 4.81 | 6.65 | 6.59 | 6.45 | 6.3 | 6.25 | 6.33 | 6.5 | 6.62 |



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
