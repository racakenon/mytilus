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

	---@return Palette
	local function gen_palette()
		local c = configs.colors

		---@type Palette
		local palette = {
			tc = {
				black        = { fg = c.d2_black },
				bright_black = { fg = c.d3_black },
				white        = { fg = c.v2_white },
				bright_white = { fg = c.v0_white },
				red          = { fg = c.d3_red },
				orange       = { fg = c.d3_orange },
				yellow       = { fg = c.d3_yellow },
				green        = { fg = c.d3_green },
				mint         = { fg = c.d3_mint },
				cyan         = { fg = c.d3_cyan },
				blue         = { fg = c.d3_blue },
				magenta      = { fg = c.d3_magenta },
			},
			rb = {
				rb1 = { fg = c.d3_red },
				rb2 = { fg = c.d3_yellow },
				rb3 = { fg = c.d3_blue },
				rb4 = { fg = c.d3_orange },
				rb5 = { fg = c.d3_green },
				rb6 = { fg = c.d3_magenta },
				rb7 = { fg = c.d3_cyan },
			},
			di = {
				error = { fg = c.d3_red },
				warn  = { fg = c.d3_yellow },
				ok    = { fg = c.d3_mint },
				info  = { fg = c.d3_magenta },
				hint  = { fg = c.d3_blue },
			},
			df = {
				delete   = { bg = c.v3_orange },
				add      = { bg = c.v3_green },
				change   = { bg = c.v3_cyan },
				difftext = { bg = c.v3_magenta },
			},
			fg = {
				strong  = { fg = c.d0_black },
				text    = { fg = c.d1_black },
				comment = { fg = c.d3_black },
			},
			bg = {
				float  = { bg = c.v0_white },
				plain  = { bg = c.v1_white },
				visual = { bg = c.v3_white },
			},
			ui = {
				important = { bg = c.v3_red },
				warning = { bg = c.v3_yellow },
				info = { bg = c.v3_magenta },
				hint = { bg = c.v3_blue },
				select = { bg = c.v3_mint },
				doc = { fg = c.d3_green },
				note = { fg = c.d3_orange },
				sign = { fg = c.d3_cyan },
				cursor = { fg = c.v1_white, bg = c.d3_black },
				cursorline = { bg = c.v2_white },
				inactive = { fg = c.d2_black },
				border = { fg = c.d1_white },
				board = {
					light = { bg = c.v1_black },
					dark = { bg = c.d1_white },
				},
				bar = {
					active = { fg = c.d1_black, bg = c.v2_white },
					inactive = { fg = c.v1_white, bg = c.d1_black },
				},
				dir = { fg = c.d0_white },
				fold = { fg = c.d2_white },
				nontext = { fg = c.d3_white },
				candidate = { bg = c.v0_black },
				pmenu = { bg = c.v2_black },
				pselect = { bg = c.v3_black },

			},
			sy = {
				keyword   = { fg = c.d3_magenta, bold = true },
				constant  = { fg = c.d3_magenta, },
				type      = { fg = c.d3_blue, bold = true },
				macro     = { fg = c.d3_blue, },
				functions = { fg = c.d3_cyan, bold = true },
				statement = { fg = c.d3_cyan },
				modifier  = { fg = c.d3_mint, bold = true },
				operator  = { fg = c.d3_mint },

				symbol    = { fg = c.d3_green, bold = true },
				string    = { fg = c.d3_green, },
				parameter = { fg = c.d3_yellow, bold = true },
				member    = { fg = c.d3_yellow, },
				struct    = { fg = c.d3_orange, bold = true },
				variable  = { fg = c.d3_orange },
				construct = { fg = c.d3_red, bold = true },
				special   = { fg = c.d3_red },
			},
			at = {
				clear         = { default = true },
				bold          = { bold = true },
				italic        = { italic = true },
				undercurl     = { undercurl = true },
				underline     = { underline = true },
				underdashed   = { underdashed = true },
				underdotted   = { underdotted = true },
				underdouble   = { underdouble = true },
				strikethrough = { strikethrough = true }
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

	---@param color Color
	---@return Color
	local function swap(color)
		if type(color) == "string" then
			return color
		end
		local result = {}
		for k, v in pairs(color) do
			if k == 'fg' then
				result['bg'] = v
			elseif k == 'bg' then
				result['fg'] = v
			else
				result[k] = v
			end
		end
		return result
	end

	---@param colors table<Color>
	---@return vim.api.keyset.highlight
	local function mix_colors(colors)
		if type(colors) == "string" then
			return { link = colors }
		end
		local result = {}
		for _, v in pairs(colors) do
			result = vim.tbl_extend('keep', result, v)
		end
		return result
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
		vim.g.terminal_color_9  = p.tc.red
		vim.g.terminal_color_2  = p.tc.green
		vim.g.terminal_color_10 = p.tc.green
		vim.g.terminal_color_3  = p.tc.yellow
		vim.g.terminal_color_11 = p.tc.yellow
		vim.g.terminal_color_4  = p.tc.blue
		vim.g.terminal_color_12 = p.tc.blue
		vim.g.terminal_color_5  = p.tc.magenta
		vim.g.terminal_color_13 = p.tc.magenta
		vim.g.terminal_color_6  = p.tc.cyan
		vim.g.terminal_color_14 = p.tc.cyan

		apply(p)
	end

	return {
		setup = setup,
		load = load,
		mix_colors = mix_colors,
		gen_palette = gen_palette,
		swap = swap
	}
end)()

return M
