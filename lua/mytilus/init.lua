local M = (function()
	---@type Config
	local configs = {
		theme = 'mytilus-light',
		colors = require('mytilus.colors.mytilus_light'),
		options = {},
		overides = {}
	}

	---@param user_config UserConfig
	local function setup(user_config)
		user_config = user_config or {}
		configs = vim.tbl_deep_extend("force", configs, user_config)
	end

	---@param theme_name? string
	local function load(theme_name)
		if vim.g.colors_name then
			vim.cmd("hi clear")
		end

		if vim.fn.exists("syntax_on") then
			vim.cmd("syntax reset")
		end

		vim.o.termguicolors = true
		if theme_name == 'dark' then
			configs.theme = 'mytilus-dark'
		elseif theme_name == 'light' then
			configs.theme = 'mytilus-light'
		end

		if configs.theme == 'dark' or configs.theme == 'mytilus-dark' then
			configs.colors    = require('mytilus.colors.mytilus_dark')
			configs.theme     = 'mytilus-dark'
			vim.g.colors_name = 'mytilus-dark'
			vim.o.background  = 'dark'
		else
			configs.colors    = require('mytilus.colors.mytilus_light')
			configs.theme     = 'mytilus-light'
			vim.g.colors_name = 'mytilus-light'
			vim.o.background  = 'light'
		end

		local c                 = configs.colors
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

		require("mytilus.groups").highlightgroups(configs)
	end

	return {
		setup = setup,
		load = load,
	}
end)()

return M
