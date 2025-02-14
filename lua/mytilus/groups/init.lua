local util = require "mytilus.utils"
local M = {}

---@param configs Style 
function M.buildGroupsHighlight(configs)
	local groups = {}
	local palette = {}
	local category = {
		"base",
		"rainbow_delimiters",
		"mini_statusline"
	}

	for _, group in ipairs(category) do
		local group_module = require("mytilus." .. "groups." .. group)
		local colorlist = group_module.colorlist
		local grouptable = group_module.grouptable
		local localpalette = group_module.palette

		if type(localpalette) == "function" then
			palette = vim.tbl_deep_extend('force', palette, localpalette(configs))
		end

		util.list_equal(colorlist, util.flatten(grouptable), "colorlist", "grouptable")

		local group_highlights = util.flatzip(grouptable, palette)

		for k, v in pairs(group_highlights) do
			groups[k] = util.makeHiglight(v)
		end
	end

	return groups

end

return M
