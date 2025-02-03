local M = {}

---@param theme? string
---@return Config
function M.configs(theme)
	return {
		colors = require('mytilus.colors.mytilus_light'),
		theme = theme or 'mytilus-light', -- can be light, dark or mytilus_dark
		options = {
			sideBarDim = true, --if false then sidebar bg is same normal
			statusBarRevers = true, --if false, statusBarRevers bg is d2_black,
			NCWindowDim = true, --if false, not current window bg is same normal
			constant = "none", -- or "bold", "italic"
			str = "none", -- or "bold", "italic"
			func = "none", -- or "bold", "italic"
			type = "none", -- or "bold", "italic"
			statement = "none", -- or "bold", "italic"
			keyword = "none", -- or "bold", "italic"
		},
		overides = {}     -- ["@string"] = { fg = "#222222", italic = true },
	}
end

---@param user_config UserConfig
function M.setup(user_config)
	user_config = user_config or {}
	M.configs = vim.tbl_deep_extend("force", M.configs(), user_config)
end

---@param theme_name? string
function M.load(theme_name)
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	if theme_name == 'dark' then
		M.configs.theme = 'mytilus-dark'
	elseif theme_name == 'light' then
		M.configs.theme = 'mytilus-light'
	end

	if M.configs.theme == 'dark' or M.configs.theme == 'mytilus-dark' then
		M.configs.colors  = require('mytilus.colors.mytilus_dark')
		M.configs.theme   = 'mytilus-dark'
		vim.g.colors_name = 'mytilus-dark'
		vim.o.background  = 'dark'
	else
		M.configs.colors  = require('mytilus.colors.mytilus_light')
		M.configs.theme   = 'mytilus-light'
		vim.g.colors_name = 'mytilus-light'
		vim.o.background  = 'light'
	end

	require("mytilus.groups").highlightgroups(M.configs)
end

return {
	setup = M.setup,
	load = M.load
}
