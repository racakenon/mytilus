local M = {}

---@type Config
M.configs = {
	colors = require('mytilus.colors.mytilus_light'),
	theme = 'mytilus-light', -- can be light, dark or mytilus_dark
	options = {
		sideBarDim = true, --if false then sidebar bg is same normal
		statusBarRevers = true, --if false, statusBarRevers bg is d2_black,
		NCWindowDim = true, --if false, not current window bg is same normal
		constant = "none", -- or "bold", "italic"
		str = "none",     -- or "bold", "italic"
		func = "none",    -- or "bold", "italic"
		type = "none",    -- or "bold", "italic"
		statement = "none", -- or "bold", "italic"
		keyword = "none", -- or "bold", "italic"
	},
	overides = {}         -- ["@string"] = { fg = "#222222", italic = true },
}

---@param user_config UserConfig
function M.setup(user_config)
	user_config = user_config or {}
	M.configs = vim.tbl_deep_extend("force", M.configs, user_config)
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

	local c                 = M.configs.colors
	vim.g.terminal_color_0  = { fg = c.d1_black }
	vim.g.terminal_color_8  = { fg = c.d3_black }
	vim.g.terminal_color_7  = { fg = c.d1_white }
	vim.g.terminal_color_15 = { fg = c.d3_white }
	vim.g.terminal_color_1  = { fg = c.d1_red }
	vim.g.terminal_color_9  = { fg = c.d3_red }
	vim.g.terminal_color_2  = { fg = c.d1_green }
	vim.g.terminal_color_10 = { fg = c.d3_green }
	vim.g.terminal_color_3  = { fg = c.d1_yellow }
	vim.g.terminal_color_11 = { fg = c.d3_yellow }
	vim.g.terminal_color_4  = { fg = c.d1_blue }
	vim.g.terminal_color_12 = { fg = c.d3_blue }
	vim.g.terminal_color_5  = { fg = c.d1_purple }
	vim.g.terminal_color_13 = { fg = c.d3_purple }
	vim.g.terminal_color_6  = { fg = c.d1_cyan }
	vim.g.terminal_color_14 = { fg = c.d3_cyan }

	require("mytilus.groups").highlightgroups(M.configs)
end

return {
	setup = M.setup,
	load = M.load
}
