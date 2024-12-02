---@param palette Palette
---@return table<string,vim.api.keyset.highlight|string>
local function setup(palette)
	local p = palette
	local swap = require("mytilus").swap
	return {
		MiniStatuslineDevinfo     = { p.ui.bar.active },
		MiniStatuslineFileinfo    = { p.ui.bar.active },
		MiniStatuslineFilename    = { p.ui.bar.active, p.at.italic },
		MiniStatuslineInactive    = { p.ui.bar.inactive },

		MiniStatuslineModeCommand = { swap(p.tc.bright_yellow), p.at.bold, swap(p.bg.float) },
		MiniStatuslineModeInsert  = { swap(p.tc.bright_green), p.at.bold, swap(p.bg.float) },
		MiniStatuslineModeNormal  = { swap(p.tc.bright_blue), p.at.bold, swap(p.bg.float) },
		MiniStatuslineModeOther   = { swap(p.tc.bright_cyan), p.at.bold, swap(p.bg.float) },
		MiniStatuslineModeReplace = { swap(p.tc.bright_red), p.at.bold, swap(p.bg.float) },
		MiniStatuslineModeVisual  = { swap(p.tc.bright_purple), p.at.bold, swap(p.bg.float) },
	}
end

return {
	setup = setup,
}
