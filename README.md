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
| d0_black | #38373F | [55.92, 54.62, 63.23] |  [0.34, 0.01, -0.01] |
| d0_white | #383930 | [55.83, 56.84, 48.03] |  [0.34, -0.01, 0.01] |
| d1_black | #403E47 | [63.71, 62.39, 71.19] |  [0.37, 0.01, -0.01] |
| d1_white | #404138 | [63.61, 64.65, 55.67] |  [0.37, -0.01, 0.01] |
| d2_black | #48464F | [71.65, 70.32, 79.3] |  [0.4, 0.01, -0.01] |
| d2_white | #48493F | [71.55, 72.63, 63.48] |  [0.4, -0.01, 0.01] |
| d3_black | #504E58 | [79.74, 78.4, 87.54] |  [0.43, 0.01, -0.01] |
| d3_white | #505147 | [79.65, 80.75, 71.45] |  [0.43, -0.01, 0.01] |
| d1_red | #5B303E | [91.35, 48.26, 62.24] |  [0.37, 0.06, 0.0] |
| d1_orange | #5C3421 | [91.88, 51.84, 33.36] |  [0.37, 0.05, 0.05] |
| d1_yellow | #4D3E10 | [77.06, 61.86, 16.25] |  [0.37, 0.0, 0.06] |
| d1_chartreuse | #304723 | [48.35, 71.33, 35.07] |  [0.37, -0.05, 0.05] |
| d1_green | #054B41 | [5.0, 74.72, 64.97] |  [0.37, -0.06, 0.0] |
| d1_cyan | #0B4759 | [11.0, 70.56, 89.47] |  [0.37, -0.05, -0.05] |
| d1_blue | #323E62 | [50.3, 61.59, 98.22] |  [0.37, -0.0, -0.06] |
| d1_purple | #4D3557 | [76.64, 52.71, 87.31] |  [0.37, 0.05, -0.05] |
| d3_red | #713D4E | [112.92, 61.3, 78.01] |  [0.43, 0.08, 0.0] |
| d3_orange | #72422B | [113.55, 65.58, 43.46] |  [0.43, 0.05, 0.05] |
| d3_yellow | #604E17 | [95.76, 77.58, 23.21] |  [0.43, 0.0, 0.08] |
| d3_chartreuse | #3D592E | [61.38, 88.91, 45.51] |  [0.43, -0.05, 0.05] |
| d3_green | #0A5D51 | [9.57, 92.97, 81.29] |  [0.43, -0.08, 0.0] |
| d3_cyan | #11586F | [17.3, 88.0, 110.64] |  [0.43, -0.05, -0.05] |
| d3_blue | #404D79 | [63.7, 77.25, 121.12] |  [0.43, -0.0, -0.08] |
| d3_purple | #5F436C | [95.27, 66.61, 108.05] |  [0.43, 0.05, -0.05] |
| v0_black | #F5F3FF | [245.03, 243.47, 254.71] |  [0.97, 0.01, -0.01] |
| v0_white | #F5F6EB | [244.92, 246.34, 235.02] |  [0.97, -0.01, 0.01] |
| v1_black | #E8E5FB | [231.89, 228.66, 250.83] |  [0.93, 0.01, -0.03] |
| v1_white | #E8EAD4 | [231.65, 234.34, 211.8] |  [0.93, -0.01, 0.03] |
| v2_black | #DBD8ED | [218.75, 215.54, 237.47] |  [0.89, 0.01, -0.03] |
| v2_white | #DBDDC7 | [218.52, 221.17, 198.86] |  [0.89, -0.01, 0.03] |
| v3_black | #CECBE0 | [205.76, 202.58, 224.25] |  [0.85, 0.01, -0.03] |
| v3_white | #CED0BA | [205.54, 208.14, 186.08] |  [0.85, -0.01, 0.03] |
| v2_red | #F8CED9 | [248.16, 205.67, 217.22] |  [0.89, 0.05, 0.0] |
| v2_orange | #F8D1C0 | [248.29, 209.16, 192.02] |  [0.89, 0.04, 0.04] |
| v2_yellow | #E7DAB6 | [231.48, 217.98, 181.81] |  [0.89, 0.0, 0.05] |
| v2_chartreuse | #CDE3C2 | [204.89, 226.73, 193.8] |  [0.89, -0.04, 0.04] |
| v2_green | #B8E6DC | [183.77, 230.17, 219.84] |  [0.89, -0.05, 0.0] |
| v2_cyan | #B8E2F4 | [184.33, 226.48, 243.96] |  [0.89, -0.04, -0.04] |
| v2_blue | #CEDAFD | [205.61, 217.95, 252.88] |  [0.89, -0.0, -0.05] |
| v2_purple | #E8D1F2 | [231.53, 209.4, 242.03] |  [0.89, 0.04, -0.04] |


### contrast

| | v0_black | v0_white | v1_black | v1_white | v2_black | v2_white |
|---|---|---|---|---|---|---|
| d0_black | 10.79 | 10.85 | 9.55 | 9.65 | 8.43 | 8.53 |
| d0_white | 10.72 | 10.77 | 9.48 | 9.59 | 8.38 | 8.47 |
| d1_black | 9.58 | 9.63 | 8.47 | 8.57 | 7.49 | 7.57 |
| d1_white | 9.51 | 9.56 | 8.41 | 8.5 | 7.43 | 7.52 |
| d2_black | 8.46 | 8.5 | 7.48 | 7.56 | 6.61 | 6.69 |
| d2_white | 8.39 | 8.44 | 7.42 | 7.51 | 6.56 | 6.63 |
| d3_black | 7.44 | 7.48 | 6.59 | 6.66 | 5.82 | 5.89 |
| d3_white | 7.39 | 7.43 | 6.53 | 6.61 | 5.77 | 5.84 |
| d1_red | 9.87 | 9.92 | 8.73 | 8.83 | 7.71 | 7.8 |
| d1_orange | 9.77 | 9.83 | 8.65 | 8.74 | 7.64 | 7.73 |
| d1_yellow | 9.55 | 9.6 | 8.45 | 8.55 | 7.47 | 7.55 |
| d1_chartreuse | 9.31 | 9.36 | 8.24 | 8.33 | 7.28 | 7.36 |
| d1_green | 9.22 | 9.27 | 8.16 | 8.25 | 7.21 | 7.29 |
| d1_cyan | 9.37 | 9.42 | 8.29 | 8.38 | 7.32 | 7.4 |
| d1_blue | 9.63 | 9.68 | 8.52 | 8.61 | 7.53 | 7.61 |
| d1_purple | 9.82 | 9.87 | 8.69 | 8.79 | 7.68 | 7.76 |
| d3_red | 7.73 | 7.77 | 6.84 | 6.91 | 6.04 | 6.11 |
| d3_orange | 7.64 | 7.68 | 6.76 | 6.83 | 5.97 | 6.04 |
| d3_yellow | 7.43 | 7.47 | 6.57 | 6.64 | 5.81 | 5.87 |
| d3_chartreuse | 7.2 | 7.24 | 6.37 | 6.44 | 5.63 | 5.7 |
| d3_green | 7.12 | 7.16 | 6.3 | 6.37 | 5.57 | 5.63 |
| d3_cyan | 7.25 | 7.29 | 6.41 | 6.49 | 5.67 | 5.73 |
| d3_blue | 7.5 | 7.54 | 6.63 | 6.71 | 5.86 | 5.93 |
| d3_purple | 7.68 | 7.72 | 6.8 | 6.87 | 6.0 | 6.07 |


| | v3_black | v3_white | v2_red | v2_orange | v2_yellow | v2_chartreuse | v2_green | v2_cyan | v2_blue | v2_purple |
|---|---|---|---|---|---|---|---|---|---|---|
| d0_black | 7.42 | 7.51 | 8.32 | 8.37 | 8.49 | 8.61 | 8.66 | 8.59 | 8.46 | 8.35 |
| d0_white | 7.37 | 7.45 | 8.26 | 8.31 | 8.43 | 8.55 | 8.6 | 8.53 | 8.4 | 8.29 |
| d1_black | 6.58 | 6.66 | 7.38 | 7.43 | 7.54 | 7.64 | 7.68 | 7.62 | 7.51 | 7.41 |
| d1_white | 6.53 | 6.61 | 7.33 | 7.38 | 7.48 | 7.59 | 7.62 | 7.57 | 7.45 | 7.35 |
| d2_black | 5.81 | 5.88 | 6.52 | 6.56 | 6.66 | 6.75 | 6.78 | 6.73 | 6.63 | 6.54 |
| d2_white | 5.77 | 5.84 | 6.47 | 6.51 | 6.61 | 6.7 | 6.73 | 6.68 | 6.58 | 6.49 |
| d3_black | 5.12 | 5.18 | 5.74 | 5.78 | 5.86 | 5.94 | 5.97 | 5.92 | 5.84 | 5.76 |
| d3_white | 5.08 | 5.14 | 5.69 | 5.73 | 5.81 | 5.9 | 5.92 | 5.88 | 5.79 | 5.72 |
| d1_red | 6.78 | 6.86 | 7.61 | 7.66 | 7.77 | 7.88 | 7.92 | 7.86 | 7.74 | 7.64 |
| d1_orange | 6.72 | 6.8 | 7.53 | 7.58 | 7.69 | 7.8 | 7.84 | 7.78 | 7.66 | 7.56 |
| d1_yellow | 6.57 | 6.65 | 7.36 | 7.41 | 7.52 | 7.63 | 7.66 | 7.6 | 7.49 | 7.39 |
| d1_chartreuse | 6.4 | 6.48 | 7.18 | 7.23 | 7.33 | 7.44 | 7.47 | 7.41 | 7.3 | 7.21 |
| d1_green | 6.34 | 6.42 | 7.11 | 7.16 | 7.26 | 7.36 | 7.4 | 7.34 | 7.23 | 7.14 |
| d1_cyan | 6.44 | 6.51 | 7.22 | 7.27 | 7.37 | 7.48 | 7.51 | 7.45 | 7.34 | 7.25 |
| d1_blue | 6.62 | 6.7 | 7.42 | 7.47 | 7.58 | 7.69 | 7.72 | 7.66 | 7.55 | 7.45 |
| d1_purple | 6.75 | 6.83 | 7.57 | 7.62 | 7.73 | 7.84 | 7.88 | 7.82 | 7.7 | 7.6 |
| d3_red | 5.31 | 5.37 | 5.95 | 6.0 | 6.08 | 6.17 | 6.2 | 6.15 | 6.06 | 5.98 |
| d3_orange | 5.25 | 5.31 | 5.88 | 5.93 | 6.01 | 6.1 | 6.13 | 6.08 | 5.99 | 5.91 |
| d3_yellow | 5.11 | 5.17 | 5.72 | 5.76 | 5.85 | 5.93 | 5.96 | 5.91 | 5.82 | 5.75 |
| d3_chartreuse | 4.95 | 5.01 | 5.55 | 5.59 | 5.67 | 5.75 | 5.78 | 5.73 | 5.65 | 5.57 |
| d3_green | 4.89 | 4.95 | 5.49 | 5.52 | 5.6 | 5.68 | 5.71 | 5.67 | 5.58 | 5.51 |
| d3_cyan | 4.98 | 5.04 | 5.59 | 5.63 | 5.71 | 5.79 | 5.82 | 5.77 | 5.68 | 5.61 |
| d3_blue | 5.15 | 5.22 | 5.78 | 5.82 | 5.9 | 5.98 | 6.01 | 5.97 | 5.88 | 5.8 |
| d3_purple | 5.28 | 5.34 | 5.92 | 5.96 | 6.05 | 6.13 | 6.16 | 6.11 | 6.02 | 5.94 |


## dark colors

| | hex | rgb | OKlab |
|---|---|---|
| d0_black | #DBD9E4 | [218.62, 217.08, 228.08] |  [0.89, 0.01, -0.01] |
| d0_white | #DBDCD1 | [218.5, 219.89, 208.8] |  [0.89, -0.01, 0.01] |
| d1_black | #D1CFDA | [208.86, 207.34, 218.24] |  [0.86, 0.01, -0.01] |
| d1_white | #D1D2C7 | [208.75, 210.12, 199.13] |  [0.86, -0.01, 0.01] |
| d2_black | #C7C6D0 | [199.19, 197.68, 208.48] |  [0.83, 0.01, -0.01] |
| d2_white | #C7C8BE | [199.07, 200.44, 189.54] |  [0.83, -0.01, 0.01] |
| d3_black | #BEBCC7 | [189.6, 188.1, 198.81] |  [0.8, 0.01, -0.01] |
| d3_white | #BDBFB4 | [189.49, 190.84, 180.03] |  [0.8, -0.01, 0.01] |
| d1_red | #F6C0CF | [246.18, 191.87, 207.09] |  [0.86, 0.06, 0.0] |
| d1_orange | #F6C4AE | [246.45, 196.34, 174.26] |  [0.86, 0.05, 0.05] |
| d1_yellow | #E1D0A1 | [225.45, 207.83, 160.58] |  [0.86, 0.0, 0.06] |
| d1_chartreuse | #BFDBB1 | [191.02, 219.16, 176.51] |  [0.86, -0.05, 0.05] |
| d1_green | #A2E0D2 | [162.18, 223.55, 210.46] |  [0.86, -0.06, 0.0] |
| d1_cyan | #A3DBF1 | [163.17, 218.74, 241.37] |  [0.86, -0.05, -0.05] |
| d1_blue | #C0D0FD | [192.14, 207.75, 252.72] |  [0.86, -0.0, -0.06] |
| d1_purple | #E1C5EF | [225.41, 196.76, 238.86] |  [0.86, 0.05, -0.05] |
| d3_red | #E7AABC | [231.15, 170.0, 187.6] |  [0.8, 0.08, 0.0] |
| d3_orange | #E8AF96 | [231.55, 175.04, 149.99] |  [0.8, 0.05, 0.05] |
| d3_yellow | #D0BC86 | [208.41, 188.19, 133.8] |  [0.8, 0.0, 0.08] |
| d3_chartreuse | #A9C999 | [169.2, 201.09, 152.51] |  [0.8, -0.05, 0.05] |
| d3_green | #86CEBF | [134.44, 206.02, 191.43] |  [0.8, -0.08, 0.0] |
| d3_cyan | #88C9E2 | [135.93, 200.51, 226.29] |  [0.8, -0.05, -0.05] |
| d3_blue | #ABBCEF | [170.69, 188.07, 239.0] |  [0.8, -0.0, -0.08] |
| d3_purple | #D0B0DF | [208.25, 175.64, 223.41] |  [0.8, 0.05, -0.05] |
| v0_black | #222028 | [33.64, 32.39, 40.35] |  [0.25, 0.01, -0.01] |
| v0_white | #22221A | [33.56, 34.45, 26.23] |  [0.25, -0.01, 0.01] |
| v1_black | #2C2939 | [43.57, 40.66, 57.16] |  [0.29, 0.01, -0.03] |
| v1_white | #2B2D1B | [43.37, 44.97, 27.42] |  [0.29, -0.01, 0.03] |
| v2_black | #363344 | [53.58, 50.67, 67.71] |  [0.33, 0.01, -0.03] |
| v2_white | #353725 | [53.39, 55.11, 37.16] |  [0.33, -0.01, 0.03] |
| v3_black | #403D4F | [63.91, 60.99, 78.53] |  [0.37, 0.01, -0.03] |
| v3_white | #40422F | [63.71, 65.54, 47.2] |  [0.37, -0.01, 0.03] |
| v2_red | #4A2A34 | [74.4, 42.13, 52.24] |  [0.33, 0.05, 0.0] |
| v2_orange | #4B2D1F | [74.75, 44.8, 31.2] |  [0.33, 0.04, 0.04] |
| v2_yellow | #3F3414 | [63.33, 52.13, 20.44] |  [0.33, 0.0, 0.05] |
| v2_chartreuse | #2A3B20 | [42.03, 59.15, 32.49] |  [0.33, -0.04, 0.04] |
| v2_green | #113E36 | [17.09, 61.71, 54.28] |  [0.33, -0.05, 0.0] |
| v2_cyan | #133B49 | [19.24, 58.66, 72.67] |  [0.33, -0.04, -0.04] |
| v2_blue | #2B344F | [43.27, 51.98, 79.28] |  [0.33, -0.0, -0.05] |
| v2_purple | #3F2D47 | [63.08, 45.35, 71.08] |  [0.33, 0.04, -0.04] |


### contrast

| | v0_black | v0_white | v1_black | v1_white | v2_black | v2_white |
|---|---|---|---|---|---|---|
| d0_black | 11.5 | 11.44 | 10.19 | 10.07 | 8.83 | 8.71 |
| d0_white | 11.57 | 11.51 | 10.25 | 10.12 | 8.88 | 8.76 |
| d1_black | 10.45 | 10.4 | 9.26 | 9.15 | 8.02 | 7.91 |
| d1_white | 10.51 | 10.46 | 9.32 | 9.2 | 8.07 | 7.96 |
| d2_black | 9.47 | 9.42 | 8.39 | 8.29 | 7.27 | 7.17 |
| d2_white | 9.53 | 9.48 | 8.44 | 8.34 | 7.31 | 7.21 |
| d3_black | 8.56 | 8.52 | 7.59 | 7.49 | 6.57 | 6.48 |
| d3_white | 8.61 | 8.57 | 7.63 | 7.54 | 6.61 | 6.52 |
| d1_red | 10.2 | 10.15 | 9.04 | 8.93 | 7.83 | 7.72 |
| d1_orange | 10.3 | 10.24 | 9.12 | 9.01 | 7.9 | 7.79 |
| d1_yellow | 10.49 | 10.44 | 9.3 | 9.18 | 8.05 | 7.94 |
| d1_chartreuse | 10.69 | 10.64 | 9.48 | 9.36 | 8.21 | 8.09 |
| d1_green | 10.77 | 10.71 | 9.54 | 9.42 | 8.26 | 8.15 |
| d1_cyan | 10.65 | 10.6 | 9.44 | 9.32 | 8.18 | 8.06 |
| d1_blue | 10.44 | 10.38 | 9.25 | 9.13 | 8.01 | 7.9 |
| d1_purple | 10.26 | 10.2 | 9.09 | 8.98 | 7.87 | 7.76 |
| d3_red | 8.31 | 8.27 | 7.36 | 7.27 | 6.38 | 6.29 |
| d3_orange | 8.4 | 8.35 | 7.44 | 7.35 | 6.45 | 6.36 |
| d3_yellow | 8.59 | 8.55 | 7.61 | 7.52 | 6.6 | 6.5 |
| d3_chartreuse | 8.8 | 8.75 | 7.79 | 7.7 | 6.75 | 6.66 |
| d3_green | 8.87 | 8.82 | 7.86 | 7.76 | 6.81 | 6.71 |
| d3_cyan | 8.75 | 8.71 | 7.76 | 7.66 | 6.72 | 6.63 |
| d3_blue | 8.53 | 8.49 | 7.56 | 7.47 | 6.55 | 6.46 |
| d3_purple | 8.36 | 8.32 | 7.41 | 7.32 | 6.42 | 6.33 |


| | v3_black | v3_white | v2_red | v2_orange | v2_yellow | v2_chartreuse | v2_green | v2_cyan | v2_blue | v2_purple |
|---|---|---|---|---|---|---|---|---|---|---|
| d0_black | 7.54 | 7.43 | 8.97 | 8.91 | 8.77 | 8.61 | 8.55 | 8.64 | 8.81 | 8.94 |
| d0_white | 7.59 | 7.47 | 9.03 | 8.96 | 8.82 | 8.66 | 8.6 | 8.69 | 8.86 | 8.99 |
| d1_black | 6.85 | 6.75 | 8.16 | 8.1 | 7.96 | 7.82 | 7.77 | 7.85 | 8.01 | 8.12 |
| d1_white | 6.89 | 6.79 | 8.2 | 8.14 | 8.01 | 7.87 | 7.82 | 7.9 | 8.05 | 8.17 |
| d2_black | 6.21 | 6.12 | 7.39 | 7.34 | 7.22 | 7.09 | 7.04 | 7.12 | 7.26 | 7.36 |
| d2_white | 6.25 | 6.16 | 7.44 | 7.38 | 7.26 | 7.13 | 7.08 | 7.16 | 7.3 | 7.41 |
| d3_black | 5.61 | 5.53 | 6.68 | 6.63 | 6.52 | 6.41 | 6.36 | 6.43 | 6.56 | 6.65 |
| d3_white | 5.65 | 5.56 | 6.72 | 6.67 | 6.56 | 6.45 | 6.4 | 6.47 | 6.6 | 6.7 |
| d1_red | 6.69 | 6.59 | 7.96 | 7.9 | 7.78 | 7.64 | 7.59 | 7.67 | 7.82 | 7.93 |
| d1_orange | 6.75 | 6.65 | 8.03 | 7.98 | 7.85 | 7.71 | 7.65 | 7.74 | 7.89 | 8.0 |
| d1_yellow | 6.88 | 6.78 | 8.19 | 8.13 | 8.0 | 7.85 | 7.8 | 7.88 | 8.04 | 8.16 |
| d1_chartreuse | 7.01 | 6.91 | 8.34 | 8.28 | 8.15 | 8.0 | 7.95 | 8.03 | 8.19 | 8.31 |
| d1_green | 7.06 | 6.95 | 8.4 | 8.34 | 8.2 | 8.06 | 8.0 | 8.09 | 8.25 | 8.37 |
| d1_cyan | 6.98 | 6.88 | 8.31 | 8.25 | 8.12 | 7.97 | 7.92 | 8.0 | 8.16 | 8.28 |
| d1_blue | 6.84 | 6.74 | 8.14 | 8.08 | 7.95 | 7.81 | 7.76 | 7.84 | 7.99 | 8.11 |
| d1_purple | 6.72 | 6.63 | 8.0 | 7.95 | 7.82 | 7.68 | 7.62 | 7.71 | 7.86 | 7.97 |
| d3_red | 5.45 | 5.37 | 6.48 | 6.44 | 6.33 | 6.22 | 6.18 | 6.24 | 6.37 | 6.46 |
| d3_orange | 5.51 | 5.42 | 6.55 | 6.51 | 6.4 | 6.29 | 6.24 | 6.31 | 6.43 | 6.53 |
| d3_yellow | 5.63 | 5.55 | 6.7 | 6.66 | 6.55 | 6.43 | 6.39 | 6.46 | 6.58 | 6.68 |
| d3_chartreuse | 5.77 | 5.68 | 6.86 | 6.81 | 6.7 | 6.58 | 6.54 | 6.61 | 6.74 | 6.84 |
| d3_green | 5.82 | 5.73 | 6.92 | 6.87 | 6.76 | 6.64 | 6.59 | 6.66 | 6.79 | 6.89 |
| d3_cyan | 5.74 | 5.65 | 6.83 | 6.78 | 6.67 | 6.55 | 6.51 | 6.58 | 6.71 | 6.8 |
| d3_blue | 5.6 | 5.51 | 6.66 | 6.61 | 6.5 | 6.39 | 6.34 | 6.41 | 6.54 | 6.63 |
| d3_purple | 5.48 | 5.4 | 6.52 | 6.48 | 6.37 | 6.26 | 6.21 | 6.28 | 6.4 | 6.5 |



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
