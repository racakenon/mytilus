---@param palette Palette
---@return table<string,vim.api.keyset.highlight>
local function setup(palette)
	local p = palette
	return {
		DiagnosticDeprecated       = { p.at.strikethrough, p.di.error },
		DiagnosticUnnecessary      = { p.at.undercurl, p.ui.nontext },

		DiagnosticError            = { p.di.error },
		DiagnosticHint             = { p.di.hint },
		DiagnosticInfo             = { p.di.info },
		DiagnosticOk               = { p.di.ok },
		DiagnosticWarn             = { p.di.warn },

		DiagnosticSignError        = "DiagnosticError",
		DiagnosticSignHint         = "DiagnosticHint",
		DiagnosticSignInfo         = "DiagnosticInfo",
		DiagnosticSignOk           = "DiagnosticOk",
		DiagnosticSignWarn         = "DiagnosticWarn",

		DiagnosticFloatingError    = "DiagnosticError",
		DiagnosticFloatingHint     = "DiagnosticHint",
		DiagnosticFloatingInfo     = "DiagnosticInfo",
		DiagnosticFloatingOk       = "DiagnosticOk",
		DiagnosticFloatingWarn     = "DiagnosticWarn",

		DiagnosticUnderlineError   = { p.at.underline, p.di.error },
		DiagnosticUnderlineHint    = { p.at.underline, p.di.hint },
		DiagnosticUnderlineInfo    = { p.at.underline, p.di.info },
		DiagnosticUnderlineOk      = { p.at.underline, p.di.ok },
		DiagnosticUnderlineWarn    = { p.at.underline, p.di.warn },

		DiagnosticVirtualTextError = "DiagnosticError",
		DiagnosticVirtualTextHint  = "DiagnosticHint",
		DiagnosticVirtualTextInfo  = "DiagnosticInfo",
		DiagnosticVirtualTextOk    = "DiagnosticOk",
		DiagnosticVirtualTextWarn  = "DiagnosticWarn",
	}
end

return {
	setup = setup,
}
