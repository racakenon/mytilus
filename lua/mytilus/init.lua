local configs = require("mytilus.configs")
local M = {}

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
		configs.styles.theme = 'mytilus-dark'
	elseif theme_name == 'light' then
		configs.styles.theme = 'mytilus-light'
	end

	if configs.styles.theme == 'dark' or configs.styles.theme == 'mytilus-dark' then
		configs.styles.colors = require('mytilus.colors.mytilus_dark')
		configs.styles.theme  = 'mytilus-dark'
		vim.g.colors_name     = 'mytilus-dark'
		vim.o.background      = 'dark'
	else
		configs.styles.colors = require('mytilus.colors.mytilus_light')
		configs.styles.theme  = 'mytilus-light'
		vim.g.colors_name     = 'mytilus-light'
		vim.o.background      = 'light'
	end

	local styles = configs.styles ~= nil and configs.styles or configs.default()
	local groups = require("mytilus.groups").buildGroupsHighlight(styles)

	if styles.overides ~= nil then
		vim.tbl_extend('force', groups, styles.overides)
	end

	for group, setting in pairs(groups) do
		vim.api.nvim_set_hl(0, group, setting)
	end
end

return M
