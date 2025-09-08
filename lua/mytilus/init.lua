local configs = require("mytilus.configs")
local M = {}

-- Global styles variable to store current configuration
M.styles = configs.default()

---@param theme_name? string
function M.load(theme_name)
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	
	-- Update theme in styles
	if theme_name == 'dark' then
		M.styles.theme = 'mytilus-dark'
	elseif theme_name == 'light' then
		M.styles.theme = 'mytilus-light'
	end

	-- Load appropriate color scheme
	if M.styles.theme == 'dark' or M.styles.theme == 'mytilus-dark' then
		M.styles.colors = require('mytilus.colors.mytilus_dark')
		M.styles.theme = 'mytilus-dark'
		vim.g.colors_name = 'mytilus-dark'
		vim.o.background = 'dark'
	else
		M.styles.colors = require('mytilus.colors.mytilus_light')
		M.styles.theme = 'mytilus-light'
		vim.g.colors_name = 'mytilus-light'
		vim.o.background = 'light'
	end

	-- Build highlights
	require("mytilus.groups").buildHighlight(M.styles)

	-- Apply user overrides
	for group, setting in pairs(M.styles.overides or {}) do
		vim.api.nvim_set_hl(0, group, setting)
	end
end

---@param user_config? UserConfig
function M.setup(user_config)
	M.styles = configs.setup(user_config)
end

return M
