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

---@param config Config
local function palette( config)
	config = config == nil and {} or config
	local c = config.colors
	return {
		rb = {
			rb1 = { fg = c.d1_red },
			rb2 = { fg = c.d1_yellow },
			rb3 = { fg = c.d1_blue },
			rb4 = { fg = c.d1_orange },
			rb5 = { fg = c.d1_green },
			rb6 = { fg = c.d1_purple },
			rb7 = { fg = c.d1_cyan },
		}
	}
end

return {
	colorlist = colorlist,
	grouptable = grouptable,
	palette = palette
}
