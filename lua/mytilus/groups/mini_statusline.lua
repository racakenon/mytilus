---@type HighlightBuider
local M = {
	highlightList  = {
		"MiniStatuslineDevinfo",
		"MiniStatuslineFileinfo",
		"MiniStatuslineFilename",
		"MiniStatuslineInactive",
		"MiniStatuslineModeCommand",
		"MiniStatuslineModeInsert",
		"MiniStatuslineModeNormal",
		"MiniStatuslineModeOther",
		"MiniStatuslineModeReplace",
		"MiniStatuslineModeVisual",
	},

	groupNametable = {
		mini = {
			info = {
				"MiniStatuslineDevinfo",
				"MiniStatuslineFileinfo",
				"MiniStatuslineFilename",
			},
			inactive = { "MiniStatuslineInactive" },
			replace = { "MiniStatuslineModeReplace" },
			command = { "MiniStatuslineModeCommand" },
			insert = { "MiniStatuslineModeInsert" },
			normal = { "MiniStatuslineModeNormal" },
			other = { "MiniStatuslineModeOther" },
			visual = { "MiniStatuslineModeVisual" }
		}
	},

	---@param style Style
	groupColor     = function(style)
		style = style == nil and {} or style
		local c = style.colors
		return {
			mini = {
				info = { bg = c.v2_black, italic = true },
				inactive = { bg = c.v2_black },
				replace = { fg = c.v0_white, bg = c.d3_red, bold = true },
				other = { fg = c.v0_white, bg = c.d3_cyan, bold = true },
				visual = { fg = c.v0_white, bg = c.d3_purple, bold = true },
				insert = { fg = c.v0_white, bg = c.d3_green, bold = true },
				normal = { fg = c.v0_white, bg = c.d3_blue, bold = true },
				command = { fg = c.v0_white, bg = c.d3_yellow, bold = true }
			}
		}
	end
}

return M
