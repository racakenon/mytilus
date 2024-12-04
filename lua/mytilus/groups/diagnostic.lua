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

		DiagnosticSignError        = { p.di.error, p.ui.line.side },
		DiagnosticSignHint         = { p.di.hint, p.ui.line.side },
		DiagnosticSignInfo         = { p.di.info, p.ui.line.side },
		DiagnosticSignOk           = { p.di.ok, p.ui.line.side },
		DiagnosticSignWarn         = { p.di.warn, p.ui.line.side },

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

		DiagnosticVirtualTextError = { p.di.error, p.ui.error },
		DiagnosticVirtualTextHint  = { p.di.hint, p.ui.hint },
		DiagnosticVirtualTextInfo  = { p.di.info, p.ui.info },
		DiagnosticVirtualTextOk    = { p.di.ok, p.ui.ok },
		DiagnosticVirtualTextWarn  = { p.di.warn, p.ui.warn },
	}
end

return {
	setup = setup,
}
