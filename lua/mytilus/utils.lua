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

return M
