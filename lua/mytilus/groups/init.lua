local M = {}

---@param palette Palette
---@return HighlightGroups
function M.highlightgroups(palette)
	local groups = {}
	local mix = require("mytilus").mix_colors

	local category = {
		"base",
		"diagnostic",
		"expr",
		"lsp",
		"syntax",
		"treesitter",
		"rainbow_delimiters",
		"mini_statusline"
	}

	for _, group in ipairs(category) do
		local group_module = require("mytilus." .. "groups." .. group)
		local group_highlights = group_module.setup(palette)
		for k, v in pairs(group_highlights) do
			groups[k] = mix(v)
		end
	end
	return groups
end

return M
