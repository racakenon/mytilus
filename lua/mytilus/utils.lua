local M = {}

local flatten_cache = {}

---@param l table
---@return List
---make nested table flat recursively with caching
function M.flatten(l)
	local cache_key = tostring(l)
	if flatten_cache[cache_key] then
		return flatten_cache[cache_key]
	end

	local result = {}
	if next(l) == nil then
		return {}
	end

	for _, v in pairs(l) do
		if v ~= nil and type(v) == "table" then
			local flattened = M.flatten(v)
			for i = 1, #flattened do
				result[#result + 1] = flattened[i]
			end
		else
			result[#result + 1] = v
		end
	end

	flatten_cache[cache_key] = result
	return result
end

function M.clear_cache()
	flatten_cache = {}
end

---@param msg string
function M.warn(msg)
	vim.notify("[mytilus] " .. msg, vim.log.levels.WARN)
end

---@param l1 List
---@param l2 List
---@param l1name string
---@param l2name string
---@return boolean
---compare two lists more efficiently using hash sets
function M.list_equal(l1, l2, l1name, l2name)
	if next(l1) == nil and next(l2) == nil then
		return true
	end

	local set1, set2 = {}, {}
	local count1, count2 = 0, 0

	for _, v in ipairs(l1) do
		set1[v] = (set1[v] or 0) + 1
		count1 = count1 + 1
	end

	for _, v in ipairs(l2) do
		set2[v] = (set2[v] or 0) + 1
		count2 = count2 + 1
	end

	if count1 ~= count2 then
		M.warn(string.format("List size mismatch: %s(%d) vs %s(%d)",
			l1name, count1, l2name, count2))
		return false
	end

	local has_error = false
	for k, v in pairs(set1) do
		if not set2[k] or set2[k] ~= v then
			M.warn(k .. " not in " .. l2name .. " or count mismatch")
			has_error = true
		end
	end

	for k, v in pairs(set2) do
		if not set1[k] or set1[k] ~= v then
			M.warn(k .. " not in " .. l1name .. " or count mismatch")
			has_error = true
		end
	end

	return not has_error
end


---@param tbll table
---@param tblr table
---@param prefix? string
---@param result? any
---@return table
function M.flatzip(tbll, tblr, prefix, result)
	result = result or {}
	prefix = prefix or ""

	for key, value in pairs(tbll) do
		if type(value) == "table" then
			local fullKey = prefix ~= "" and (prefix .. "." .. key) or key
			if tblr == nil or tblr[key] == nil then
				M.warn("not defined scheme: " .. fullKey)
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
