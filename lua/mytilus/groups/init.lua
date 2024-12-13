local M = {}

---@param l List
---@param i number
---@return List
local function extract(l, i)
	local result = {}

	for k, v in ipairs(l) do
		if i ~= k then
			table.insert(result, v)
		end
	end
	return result
end

---@param l1 List
---@param l2 List
---@return boolean
local function list_equal(l1, l2)
	if next(l1) == nil and next(l2) == nil then
		return true
	elseif next(l1) == nil then
		for _, v in ipairs(l2) do
			vim.print("[mytilus] not defined keys in colorlist: " .. v)
		end
		return false
	elseif next(l2) == nil then
		for _, v in ipairs(l1) do
			vim.print("[mytilus] not defined keys in grouptable: " .. v)
		end
		return false
	else
		local h1 = l1[1]
		for i, v in ipairs(l2) do
			if h1 == v then
				return list_equal(extract(l1, 1), extract(l2, i))
			end
		end
		vim.print("[mytilus] not defined a key in grouptable: " .. h1)
		return false
	end
end

---@param l table
---@return List
local function flatten(l)
	local result = {}
	if next(l) == nil then
		return {}
	end
	for _, v in pairs(l) do
		if v ~= nil and type(v) == "table" then
			for _, e in pairs(flatten(v)) do
				table.insert(result, e)
			end
		else
			table.insert(result, v)
		end
	end
	return result
end

---@param tbl table
---@param palette Palette
---@param prefix? string
---@param result? any
---@return any
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

		list_equal(colorlist, flatten(grouptable))

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
