---@param palette Palette
---@return table<string,Color>
local function setup(palette)
	local p = palette
	local swap = require("mytilus").swap
	return {
		ColorColumn          = { p.ui.warning },                 --	Used for the columns set with 'colorcolumn'.
		Conceal              = { p.ui.nontext },                 --	Placeholder characters substituted for concealed text (see 'conceallevel').
		CurSearch            = "IncSearch",                      --	Current match for the last search pattern (see 'hlsearch').
		Cursor               = { p.ui.cursor },                  --	Character under the cursor.
		lCursor              = "Cursor",                         --	Character under the cursor when language-mapping is used (see 'guicursor').
		CursorIM             = "Cursor",                         --	Like Cursor, but used when in IME mode. CursorIM
		CursorColumn         = "CursorColumn",                   --	Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine           = { p.ui.cursorline },              --	Screen-line at the cursor, when 'cursorline' is set.
		Directory            = { p.ui.dir },                     --	Directory names (and other special names in listings).
		DiffAdd              = { p.df.add },                     --	Diff mode: Added line. diff.txt
		DiffChange           = { p.df.change },                  --	Diff mode: Changed line. diff.txt
		DiffDelete           = { p.df.delete },                  --	Diff mode: Deleted line. diff.txt
		DiffText             = { p.df.difftext },                --	Diff mode: Changed text within a changed line. diff.txt
		EndOfBuffer          = { p.di.warn },                    --	Filler lines (~) after the end of the buffer.
		TermCursor           = "Cursor",                         --	Cursor in a focused terminal.
		TermCursorNC         = "Cursor",                         --	Cursor in an unfocused terminal.
		ErrorMsg             = { p.di.error },                   --	Error messages on the command line.
		WinSeparator         = { p.ui.border },                  --	Separators between window splits.
		Folded               = { p.ui.fold, p.ui.info },         --	Line used for closed folds.
		FoldColumn           = { p.bg.plain },                   --	'foldcolumn'
		SignColumn           = { p.bg.plain },                   --	Column where signs are displayed.
		IncSearch            = { p.ui.select },                  --	'incsearch' highlighting; also used for the text replaced with ":s///c".
		Substitute           = { p.ui.select, },                 --	:substitute replacement text highlighting.
		LineNr               = { p.ui.inactive },                --	Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		LineNrAbove          = "LineNr",                         --	Line number for when the 'relativenumber' option is set, above the cursor line.
		LineNrBelow          = "LineNr",                         --	Line number for when the 'relativenumber' option is set, below the cursor line.
		CursorLineNr         = { p.ui.sign, },                   --	Like LineNr when 'cursorline' is set and 'cursorlineopt'
		contains             = "CursorLineNr",                   --	"number" or is "both", for the cursor line.
		CursorLineFold       = "foldcolumn",                     --	Like FoldColumn when 'cursorline' is set for the cursor line.
		CursorLineSign       = "SignColumn",                     --	Like SignColumn when 'cursorline' is set for the cursor line.
		MatchParen           = { swap(p.ui.cursor) },            --	Character under the cursor or just before it, if it is a paired bracket, and its match. pi_paren.txt
		ModeMsg              = { p.ui.doc },                     --	'showmode' message (e.g., "-- INSERT --").
		MsgArea              = "Normal",                         --	Area for messages and command-line, see also 'cmdheight'.
		MsgSeparator         = { p.di.warn },                    --	Separator for scrolled messages msgsep.
		MoreMsg              = "Normal",                         --	more-prompt
		NonText              = { p.ui.nontext },                 -- characters that do not really exist in the text
		Normal               = { p.fg.text, p.bg.plain },        -- Normal text.
		NormalFloat          = { p.bg.float },                   --	Normal text in floating windows.
		FloatBorder          = { p.fg.strong, p.at.bold, p.bg.float }, --	Border of floating windows.
		FloatTitle           = { p.fg.strong, p.at.bold, p.bg.float }, --	Title of floating windows.
		FloatFooter          = { p.fg.strong, p.at.bold, p.bg.float }, --	Footer of floating windows.
		NormalNC             = "Normal",                         --	Normal text in non-current windows.
		Pmenu                = { p.ui.candidate },               --	Popup menu: Normal item.
		PmenuSel             = { p.ui.select },                  --	Popup menu: Normal item.
		PmenuKind            = "Pmenu",                          --	Popup menu: Normal item "kind".
		PmenuKindSel         = "PmenuSel",                       --	Popup menu: Selected item "kind".
		PmenuExtra           = "Pmenu",                          --	Popup menu: Normal item "extra text".
		PmenuExtraSel        = "PmenuSel",                       --	Popup menu: Selected item "extra text".
		PmenuSbar            = { p.ui.board.dark },              --	Popup menu: Scrollbar.
		PmenuThumb           = { p.ui.board.light },             --	Popup menu: Thumb of the scrollbar.
		PmenuMatch           = "Pmenu",                          --	Popup menu: Matched text in normal item. Combined with
		PmenuMatchSel        = "PmenuSel",                       --	Popup menu: Matched text in selected item. Combined with
		Question             = { p.ui.note },                    --	hit-enter prompt and yes/no questions.
		QuickFixLine         = { p.ui.select },                  --	Current quickfix item in the quickfix window. Combined with
		Search               = { p.ui.candidate },               --	Last search pattern highlighting (see 'hlsearch').
		SnippetTabstop       = { p.ui.select },                  --	Tabstops in snippets. vim.snippet
		SpecialKey           = { p.ui.nontext },                 --	Unprintable characters: Text displayed differently from what
		SpellBad             = { p.at.undercurl, p.di.error },   --	Word that is not recognized by the spellchecker.
		SpellCap             = { p.at.undercurl, p.di.warn },    --	Word that should start with a capital.
		SpellLocal           = { p.at.undercurl, p.di.info },    --	Word that is recognized by the spellchecker as one that is used in another region.
		SpellRare            = { p.at.undercurl, p.di.hint },    --	Word that is recognized by the spellchecker as one that is hardly ever used.
		StatusLine           = { p.ui.bar.active },              --	Status line of current window.
		StatusLineNC         = { p.ui.bar.inactive },            --	Status lines of not-current windows.
		StatusLineTerm       = { p.ui.bar.active },              --	Status line of terminal window.
		StatusLineTermNC     = { p.ui.bar.inactive },            --	Status line of non-current terminal windows.
		TabLine              = { p.ui.bar.active },              --	Tab pages line, not active tab page label.
		TabLineFill          = { p.ui.bar.inactive },            --	Tab pages line, where there are no labels.
		TabLineSel           = { p.ui.bar.active },              --	Tab pages line, active tab page label.
		Title                = { p.at.bold, p.ui.info },         --	Titles for output from ":set all", ":autocmd" etc.
		Visual               = { p.bg.visual },                  --	Visual mode selection.
		VisualNOS            = { p.at.clear },                   --	Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg           = { p.di.warn },                    --	Warning messages.
		Whitespace           = { p.ui.nontext },                 --	"nbsp", "space", "tab", "multispace", "lead" and "trail" in 'listchars'.
		WildMenu             = { p.ui.select },                  --	Current match in 'wildmenu' completion.
		WinBar               = { p.ui.bar.active },              --	Window bar of current window.
		WinBarNC             = { p.ui.bar.inactive },            --	Window bar of not-current windows.
		Menu                 = { p.ui.pmenu },                   --	Current font, background and foreground colors of the menus. Also used for the toolbar.
		Scrollbar            = { p.ui.board.light },             --	Current background and foreground of the main window's scrollbars.
		Tooltip              = { p.ui.pmenu },                   --	Current font, background and foreground of the tooltips.
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
