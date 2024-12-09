local colorlist = {
	"RainbowDelimiterRed",
	"RainbowDelimiterYellow",
	"RainbowDelimiterBlue",
	"RainbowDelimiterOrange",
	"RainbowDelimiterGreen",
	"RainbowDelimiterViolet",
	"RainbowDelimiterCyan",
}

local grouptable = {
	rb = {
		rb1 = {
			"RainbowDelimiterRed",
		},
		rb2 = {
			"RainbowDelimiterYellow"
		},
		rb3 = {
			"RainbowDelimiterBlue"
		},
		rb4 = {
			"RainbowDelimiterOrange"
		},
		rb5 = {
			"RainbowDelimiterGreen"
		},
		rb6 = {
			"RainbowDelimiterViolet"
		},
		rb7 = {
			"RainbowDelimiterCyan"
		},
	}
}

---@param c Scheme
local function palette(c)
	return {
		rb = {
			rb1 = { fg = c.d3_red },
			rb2 = { fg = c.d3_yellow },
			rb3 = { fg = c.d3_blue },
			rb4 = { fg = c.d3_orange },
			rb5 = { fg = c.d3_green },
			rb6 = { fg = c.d3_purple },
			rb7 = { fg = c.d3_cyan },
		}
	}
end

return {
	colorlist = colorlist,
	grouptable = grouptable,
	palette = palette
}
