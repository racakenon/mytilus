---@type HighlightBuider
local M = {
	highlightList = {
		"RainbowDelimiterRed",
		"RainbowDelimiterYellow",
		"RainbowDelimiterBlue",
		"RainbowDelimiterOrange",
		"RainbowDelimiterGreen",
		"RainbowDelimiterViolet",
		"RainbowDelimiterCyan",
	},

	groupNametable = {
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
	},

	---@param style Style
	groupColor = function(style)
		style = style == nil and {} or style
		local c = style.colors
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

}
return M
