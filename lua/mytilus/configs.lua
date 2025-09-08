local M = {}

---@return UserConfig
function M.default()
	return {
		theme = 'mytilus-light',
		options = {
			sideBarDim = true,
			statusBarRevers = true,
			NCWindowDim = true,
			str = {},
			statement = {},
			func = {},
			type = {},
			constant = {},
			keyword = {},
			comment = {},
			doc = {},
		},
		overides = {}
	}
end

---@param user_config UserConfig | nil
---@return UserConfig
function M.setup(user_config)
	user_config = user_config or {}
	return vim.tbl_deep_extend("force", M.default(), user_config)
end

return M
