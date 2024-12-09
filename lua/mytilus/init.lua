local M = (function()
	---@type Config
	local configs = {
		theme = 'mytilus-light',
		colors = require('mytilus.colors.mytilus_light'),
		options = {
			clear = {},
			bold = { ["sy.type"] = true, ["sy.keyword"] = true },
			undercurl = {},
			underline = {},
			underdashed = {},
			underdotted = {},
			underdouble = {},
			strikethrough = {},
			italic = { ["sy.string"] = true }
		},
		overides = {}
	}

	local function get_colors()
		return configs.colors
	end

	---@return Palette
	local function gen_palette()
		local c = configs.colors

		---@type Palette
		local palette = {
			tc = {
				black             = { fg = c.d1_black },
				red               = { fg = c.d1_red },
				orange            = { fg = c.d1_orange },
				yellow            = { fg = c.d1_yellow },
				chartreuse        = { fg = c.d1_chartreuse },
				green             = { fg = c.d1_green },
				cyan              = { fg = c.d1_cyan },
				blue              = { fg = c.d1_blue },
				purple            = { fg = c.d1_purple },
				white             = { fg = c.d1_white },
				bright_black      = { fg = c.d3_black },
				bright_red        = { fg = c.d3_red },
				bright_orange     = { fg = c.d3_orange },
				bright_yellow     = { fg = c.d3_yellow },
				bright_chartreuse = { fg = c.d3_chartreuse },
				bright_green      = { fg = c.d3_green },
				bright_cyan       = { fg = c.d3_cyan },
				bright_blue       = { fg = c.d3_blue },
				bright_purple     = { fg = c.d3_purple },
				bright_white      = { fg = c.d3_white },
			},
		}

		for option, palettes in pairs(configs.options) do
			for p, v in pairs(palettes) do
				local paletteKey, fieldKey = string.match(p, "([^%.]+)%.([^%.]+)")
				if palette[paletteKey] and palette[paletteKey][fieldKey] then
					palette[paletteKey][fieldKey][option] = v
				end
			end
		end

		return palette
	end

	---@param user_config UserConfig
	local function setup(user_config)
		user_config = user_config or {}
		configs = vim.tbl_deep_extend("force", configs, user_config)
	end

	---@param palette Palette
	local function apply(palette)
		local groups = require("mytilus.groups").highlightgroups(palette)

		for group, setting in pairs(groups) do
			vim.api.nvim_set_hl(0, group, setting)
		end

		for group, setting in pairs(configs.overides) do
			vim.api.nvim_set_hl(0, group, setting)
		end
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

		local p                 = gen_palette()
		vim.g.terminal_color_0  = p.tc.black
		vim.g.terminal_color_8  = p.tc.bright_black
		vim.g.terminal_color_7  = p.tc.white
		vim.g.terminal_color_15 = p.tc.bright_white
		vim.g.terminal_color_1  = p.tc.red
		vim.g.terminal_color_9  = p.tc.bright_red
		vim.g.terminal_color_2  = p.tc.green
		vim.g.terminal_color_10 = p.tc.bright_green
		vim.g.terminal_color_3  = p.tc.yellow
		vim.g.terminal_color_11 = p.tc.bright_yellow
		vim.g.terminal_color_4  = p.tc.blue
		vim.g.terminal_color_12 = p.tc.bright_blue
		vim.g.terminal_color_5  = p.tc.purple
		vim.g.terminal_color_13 = p.tc.bright_purple
		vim.g.terminal_color_6  = p.tc.cyan
		vim.g.terminal_color_14 = p.tc.bright_cyan

		apply(p)
	end

	return {
		setup = setup,
		load = load,
		get_colors = get_colors,
	}
end)()

return M
