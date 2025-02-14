local M = {}

---@param l List
---@param i number
---@return List
---return new list extracted ith element from l
function M.extract(l, i)
	local result = {}

	for k, v in ipairs(l) do
		if i ~= k then
			table.insert(result, v)
		end
	end
	return result
end

---@param l table
---@return List
---make nested table flat recursively
function M.flatten(l)
	local result = {}
	if next(l) == nil then
		return {}
	end
	for _, v in pairs(l) do
		if v ~= nil and type(v) == "table" then
			for _, e in pairs(M.flatten(v)) do
				table.insert(result, e)
			end
		else
			table.insert(result, v)
		end
	end
	return result
end

---@param msg string
function M.warn(msg)
	vim.notify("[mytilus]" .. msg, vim.log.levels.WARN)
end

---@param l1 List
---@param l2 List
---@param l1name string
---@param l2name string
---@return boolean
---compare two list and find not exist first element ecch
function M.list_equal(l1, l2, l1name, l2name)
	if next(l1) == nil and next(l2) == nil then
		return true
	elseif next(l1) == nil then
		for _, v in ipairs(l2) do
			M.warn(v .. " not in " .. l1name)
		end
		return false
	elseif next(l2) == nil then
		for _, v in ipairs(l1) do
			M.warn(v .. " not in " .. l2name)
		end
		return false
	else
		local h1 = l1[1]
		for i, v in ipairs(l2) do
			if h1 == v then
				return M.list_equal(M.extract(l1, 1), M.extract(l2, i), l1name, l2name)
			end
		end
		M.warn(h1 .. " not in " .. l2name)
		return false
	end
end

---@param tbll table
---@param tblr table
---@param prefix? string
---@param result? any
---@return table
---recursively zip table and return table
---tbll values are keys, tblr values are values
function M.flatzip(tbll, tblr, prefix, result)
	result = result or {}
	prefix = prefix or ""
	for key, value in pairs(tbll) do
		if type(value) == "table" then
			local fullKey = prefix ~= "" and (prefix .. "." .. key) or key
			if tblr == nil or tblr[key] == nil then
				warn("not defined scheme" .. fullKey)
			else
				M.flatzip(value, tblr[key], fullKey, result)
			end
		else
			if tblr ~= nil then
				result[value] = tblr
			end
		end
	end
	return result
end

---@param color Color
---@return vim.api.keyset.highlight
function M.makeHiglight(color)
	if type(color) == "string" then
		return { link = color }
	end
	return color
end

---@param highlight vim.api.keyset.highlight
---@param options HighlightOptions
---@return vim.api.keyset.highlight
function M.applyOptions(highlight, options)
	if options ~= nil then
		return vim.tbl_extend('force', highlight, options)
	end
	return highlight
end

return M
