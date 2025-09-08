local util = require "mytilus.utils"
local M = {}

local flattened_cache = {}

---@param s Style
---@param b HighlightBuider
local function buildGroupHighlight(s, b)
	local palette = b.groupColor(s)
	local group_highlights = util.flatzip(b.groupNametable, palette)

	local cache_key = tostring(b.groupNametable)
	local flattened_groups = flattened_cache[cache_key]
	if not flattened_groups then
		flattened_groups = util.flatten(b.groupNametable)
		flattened_cache[cache_key] = flattened_groups
	end

	if vim.g.mytilus_debug then
		util.list_equal(b.highlightList, flattened_groups, "highlightList", "groupNametable")
	end

	for name, hl in pairs(group_highlights) do
		vim.api.nvim_set_hl(0, name, util.makeHiglight(hl))
	end
end

local function get_module(name)
	local ok, mod = pcall(require, "mytilus.groups." .. name)
	if not ok then
		util.warn("Failed to load module: " .. name)
		return nil
	end
	return mod
end

---@param s Style
function M.buildHighlight(s)
	local modules = { "base", "mini_statusline", "rainbow_delimiters" }

	for _, module_name in ipairs(modules) do
		local module = get_module(module_name)
		if module then
			buildGroupHighlight(s, module)
		end
	end

	for group, setting in pairs(s.overides or {}) do
		vim.api.nvim_set_hl(0, group, setting)
	end
end

---@param s Style
---@param group_name string
function M.updateGroup(s, group_name)
	local module = get_module(group_name)
	if module then
		buildGroupHighlight(s, module)
	else
		util.warn("Failed to update module: " .. group_name)
	end
end

function M.clear_cache()
	flattened_cache = {}
	util.clear_cache()
end

return M
