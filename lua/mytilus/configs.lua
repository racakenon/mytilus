local M = {}

---@return Style
---make defualt styles
function M.default()
	return {
		colors = require('mytilus.colors.mytilus_light'),
		theme = 'mytilus-light', -- can be light, dark or mytilus_dark
		options = {
			sideBarDim = true, --if false then sidebar bg is same normal
			statusBarRevers = true, --if false, statusBarRevers bg is d2_black,
			NCWindowDim = true, --if false, not current window bg is same normal
			constant = {},
			str = {},
			func = {},
			type = {},
			statement = {},
			keyword = {},
		},
		overides = {} -- ["@string"] = { fg = "#222222", italic = true },
	}
end

M.styles = M.default()

---@param user_config UserConfig
---overwrite defualt config to users
function M.setup(user_config)
	user_config = user_config or {}
	M.styles = vim.tbl_deep_extend("force", M.default(), user_config)
end

return M
