local util = require "mytilus.utils"
local M = {}

---@param tbl table
---@param palette Palette
---@param prefix? string
---@param result? any
---@return any
---
local function makeHighlightFromGrouptable(tbl, palette, prefix, result)
	result = result or {}
	prefix = prefix or ""
	for key, value in pairs(tbl) do
		if type(value) == "table" then
			local fullKey = prefix ~= "" and (prefix .. "." .. key) or key
			if palette == nil or palette[key] == nil then
				vim.print("[mytilus] not defined scheme " .. fullKey)
			else
				makeHighlightFromGrouptable(value, palette[key], fullKey, result)
			end
		else
			result[value] = palette ~= nil and { palette } or {}
		end
	end
	return result
end

---@param colors table<Color>
---@return vim.api.keyset.highlight
local function mix_colors(colors)
	if type(colors) == "string" then
		return { link = colors }
	end
	local result = {}
	for _, v in pairs(colors) do
		result = vim.tbl_extend('keep', result, v)
	end
	return result
end

function M.highlightgroups(configs)
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

		local group_highlights = makeHighlightFromGrouptable(grouptable, palette)

		for k, v in pairs(group_highlights) do
			groups[k] = mix_colors(v)
		end
	end


	for group, setting in pairs(groups) do
		vim.api.nvim_set_hl(0, group, setting)
	end

	for group, setting in pairs(configs.overides) do
		vim.api.nvim_set_hl(0, group, setting)
	end
end

return M
