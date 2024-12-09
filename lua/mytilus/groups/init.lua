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
			vim.print("mytilus not defined keys in colorlist: " .. v)
		end
		return false
	elseif next(l2) == nil then
		for _, v in ipairs(l1) do
			vim.print("mytilus not defined keys in grouptable: " .. v)
		end
		return false
	else
		local h1 = l1[1]
		for i, v in ipairs(l2) do
			if h1 == v then
				return list_equal(extract(l1, 1), extract(l2, i))
			end
		end
		vim.print("mytilus not defined a key in grouptable: " .. h1)
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

local function makeHighlightFromGrouptable(tbl, palette, prefix, result)
	result = result or {}
	prefix = prefix or ""
	for key, value in pairs(tbl) do
		if type(value) == "table" then
			local fullKey = prefix ~= "" and (prefix .. "." .. key) or key
			if palette[key] == nil then
				vim.print("mytilus not defined scheme " .. fullKey)
			end
			makeHighlightFromGrouptable(value, palette[key], fullKey, result)
		else
			result[value] = palette ~= nil and { palette } or {  }
		end
	end
	return result
end


---@param palette Palette
---@return HighlightGroups
function M.highlightgroups(palette)
	local groups = {}
	local mix = require("mytilus").mix_colors

	local category = {
		"base",
		"diagnostic",
		"expr",
		"syntax",
		"mini_statusline"
	}

	for _, group in ipairs(category) do
		local group_module = require("mytilus." .. "groups." .. group)
		local group_highlights = group_module.setup(palette)
		for k, v in pairs(group_highlights) do
			groups[k] = mix(v)
		end
	end

	category = {
		"rainbow_delimiters",
	}

	for _, group in ipairs(category) do
		local group_module = require("mytilus." .. "groups." .. group)
		local colorlist = group_module.colorlist
		local grouptable = group_module.grouptable
		list_equal(colorlist, flatten(grouptable))
		local group_highlights = makeHighlightFromGrouptable(grouptable, palette)
		for k, v in pairs(group_highlights) do
			groups[k] = mix(v)
		end
	end
	return groups
end

return M
