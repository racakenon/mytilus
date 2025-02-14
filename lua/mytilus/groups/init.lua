local util = require "mytilus.utils"
local M = {}

---@param s Style
---@param b HighlightBuider
local function buildGroupHighlight(s, b)
	local palette = b.groupColor(s)
	local group_highlights = util.flatzip(b.groupNametable, palette)

	util.list_equal(b.highlightList, util.flatten(b.groupNametable), "highlightList", "groupNametable")

	for k, v in pairs(group_highlights) do
		vim.api.nvim_set_hl(0, k, util.makeHiglight(v))
	end
end


---@param s Style
function M.buildHighlight(s)
	local base = require "mytilus.groups.base"
	local mini_statusline = require "mytilus.groups.mini_statusline"
	local rainbow_delimiters = require "mytilus.groups.rainbow_delimiters"
	buildGroupHighlight(s, base)
	buildGroupHighlight(s, mini_statusline)
	buildGroupHighlight(s, rainbow_delimiters)
end

return M
