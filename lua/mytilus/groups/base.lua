---@param palette Palette
---@return table<string,Color>
local function setup(palette)
	local p = palette
	return {
		ColorColumn          = { p.ui.warn },                    --	Used for the columns set with 'colorcolumn'.
		Conceal              = { p.ui.special },                 --	Placeholder characters substituted for concealed text (see 'conceallevel').
		CurSearch            = "IncSearch",                      --	Current match for the last search pattern (see 'hlsearch').
		Cursor               = { p.ui.cursor },                  --	Character under the cursor.
		lCursor              = "Cursor",                         --	Character under the cursor when language-mapping is used (see 'guicursor').
		CursorIM             = "Cursor",                         --	Like Cursor, but used when in IME mode. CursorIM
		CursorColumn         = "CursorLine",                     --	Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine           = { p.ui.line.cursor },             --	Screen-line at the cursor, when 'cursorline' is set.
		Directory            = { p.ui.special },                 --	Directory names (and other special names in listings).
		DiffAdd              = { p.df.add },                     --	Diff mode: Added line. diff.txt
		DiffChange           = { p.df.change },                  --	Diff mode: Changed line. diff.txt
		DiffDelete           = { p.df.delete },                  --	Diff mode: Deleted line. diff.txt
		DiffText             = { p.df.difftext },                --	Diff mode: Changed text within a changed line. diff.txt
		EndOfBuffer          = { p.ui.special, },                --	Filler lines (~) after the end of the buffer.
		TermCursor           = { p.at.clear },                   --	Cursor in a focused terminal.
		TermCursorNC         = { p.at.clear },                   --	Cursor in an unfocused terminal.
		ErrorMsg             = { p.di.error },                   --	Error messages on the command line.
		WinSeparator         = { p.ui.line.border },             --	Separators between window splits.
		Folded               = { p.ui.fold, },                   --	Line used for closed folds.
		FoldColumn           = { p.ui.line.side },               --	'foldcolumn'
		SignColumn           = { p.ui.line.side },               --	Column where signs are displayed.
		IncSearch            = { p.ui.select },                  --	'incsearch' highlighting; also used for the text replaced with ":s///c".
		Substitute           = { p.ui.subtitute, },              --	:substitute replacement text highlighting.
		LineNr               = { p.ui.line.side },               --	Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		LineNrAbove          = "LineNr",                         --	Line number for when the 'relativenumber' option is set, above the cursor line.
		LineNrBelow          = "LineNr",                         --	Line number for when the 'relativenumber' option is set, below the cursor line.
		CursorLineNr         = { p.ui.sign, p.ui.line.side },    --	Like LineNr when 'cursorline' is set and 'cursorlineopt'
		contains             = "CursorLineNr",                   --	"number" or is "both", for the cursor line.
		CursorLineFold       = "foldcolumn",                     --	Like FoldColumn when 'cursorline' is set for the cursor line.
		CursorLineSign       = "SignColumn",                     --	Like SignColumn when 'cursorline' is set for the cursor line.
		MatchParen           = { p.ui.match },                   --	Character under the cursor or just before it, if it is a paired bracket, and its match. pi_paren.txt
		ModeMsg              = { p.di.info },                    --	'showmode' message (e.g., "-- INSERT --").
		MsgArea              = { p.bg.plain },                   --	Area for messages and command-line, see also 'cmdheight'.
		MsgSeparator         = { p.ui.line.active },             --	Separator for scrolled messages msgsep.
		MoreMsg              = "Normal",                         --	more-prompt
		NonText              = { p.ui.nontext },                 -- characters that do not really exist in the text
		Normal               = { p.fg.text, p.bg.plain },        -- Normal text.
		NormalFloat          = { p.bg.float },                   --	Normal text in floating windows.
		FloatBorder          = { p.fg.strong, p.at.bold, p.bg.float }, --	Border of floating windows.
		FloatTitle           = { p.ui.title, p.at.bold, p.bg.float }, --	Title of floating windows.
		FloatFooter          = { p.ui.title, p.at.bold, p.bg.float }, --	Footer of floating windows.
		NormalNC             = { p.ui.nc },                      --	Normal text in non-current windows.
		Pmenu                = { p.ui.pmenu },                   --	Popup menu: Normal item.
		PmenuSel             = { p.ui.pselect },                 --	Popup menu: Normal item.
		PmenuKind            = "Pmenu",                          --	Popup menu: Normal item "kind".
		PmenuKindSel         = "PmenuSel",                       --	Popup menu: Selected item "kind".
		PmenuExtra           = "Pmenu",                          --	Popup menu: Normal item "extra text".
		PmenuExtraSel        = "PmenuSel",                       --	Popup menu: Selected item "extra text".
		PmenuSbar            = { p.ui.line.light },              --	Popup menu: Scrollbar.
		PmenuThumb           = { p.ui.line.dark },               --	Popup menu: Thumb of the scrollbar.
		PmenuMatch           = "Pmenu",                          --	Popup menu: Matched text in normal item. Combined with
		PmenuMatchSel        = "PmenuSel",                       --	Popup menu: Matched text in selected item. Combined with
		Question             = { p.di.hint },                    --	hit-enter prompt and yes/no questions.
		QuickFixLine         = { p.ui.select },                  --	Current quickfix item in the quickfix window. Combined with
		Search               = { p.ui.candidate },               --	Last search pattern highlighting (see 'hlsearch').
		SnippetTabstop       = { p.bg.visual },                  --	Tabstops in snippets. vim.snippet
		SpecialKey           = { p.ui.special },                 --	Unprintable characters: Text displayed differently from what
		SpellBad             = { p.at.undercurl, p.di.error },   --	Word that is not recognized by the spellchecker.
		SpellCap             = { p.at.undercurl, p.di.warn },    --	Word that should start with a capital.
		SpellLocal           = { p.at.undercurl, p.di.info },    --	Word that is recognized by the spellchecker as one that is used in another region.
		SpellRare            = { p.at.undercurl, p.di.hint },    --	Word that is recognized by the spellchecker as one that is hardly ever used.
		StatusLine           = { p.ui.line.active },             --	Status line of current window.
		StatusLineNC         = { p.ui.line.inactive },           --	Status lines of not-current windows.
		StatusLineTerm       = { p.ui.line.active },             --	Status line of terminal window.
		StatusLineTermNC     = { p.ui.line.inactive },           --	Status line of non-current terminal windows.
		TabLine              = { p.ui.line.active },             --	Tab pages line, not active tab page label.
		TabLineFill          = { p.ui.line.inactive },           --	Tab pages line, where there are no labels.
		TabLineSel           = { p.ui.line.active },             --	Tab pages line, active tab page label.
		Title                = { p.at.bold, p.ui.title },         --	Titles for output from ":set all", ":autocmd" etc.
		Visual               = { p.bg.visual },                  --	Visual mode selection.
		VisualNOS            = { p.at.clear },                   --	Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg           = { p.di.warn },                    --	Warning messages.
		Whitespace           = { p.ui.nontext },                 --	"nbsp", "space", "tab", "multispace", "lead" and "trail" in 'listchars'.
		WildMenu             = { p.ui.select },                  --	Current match in 'wildmenu' completion.
		WinBar               = { p.ui.line.active },             --	Window bar of current window.
		WinBarNC             = { p.ui.line.inactive },           --	Window bar of not-current windows.
		Menu                 = { p.at.clear },                   --	Current font, background and foreground colors of the menus. Also used for the toolbar.
		Scrollbar            = { p.at.clear },                   --	Current background and foreground of the main window's scrollbars.
		Tooltip              = { p.at.clear },                   --	Current font, background and foreground of the tooltips.
		FloatShadow          = { p.tc.bright_black },
		FloatShadowThrough   = { p.tc.bright_black },
		RedrawDebugClear     = { p.at.clear },
		RedrawDebugComposed  = { p.di.error },
		RedrawDebugNormal    = { p.di.ok },
		RedrawDebugRecompose = { p.di.warn },
		-- VertSplit            = {}, deprecated
	}
end

return {
	setup = setup,
}
