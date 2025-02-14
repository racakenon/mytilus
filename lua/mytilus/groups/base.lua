local util = require "mytilus.utils"

local colorlist = {
	"ColorColumn",               --Used for the columns set with colorcolumn.
	"Conceal",                   --Placeholder characters substituted for concealed text (see conceallevel).
	"CurSearch",                 --Used for highlighting a search pattern under the cursor (see hlsearch).
	"Cursor",                    --Character under the cursor.
	"lCursor",                   --Character under the cursor when language-mapping is used (see guicursor).
	"CursorIM",                  --Like Cursor, but used when in IME mode. *CursorIM*
	"CursorColumn",              --Screen-column at the cursor, when cursorcolumn is set.
	"CursorLine",                --Screen-line at the cursor, when cursorline is set. Low-priority if foreground (ctermfg OR guifg) is not set.
	"Directory",                 --Directory names (and other special names in listings).
	"DiffAdd",                   --Diff mode: Added line. diff.txt
	"DiffChange",                --Diff mode: Changed line. diff.txt
	"DiffDelete",                --Diff mode: Deleted line. diff.txt
	"DiffText",                  --Diff mode: Changed text within a changed line. diff.txt
	"EndOfBuffer",               --Filler lines (~) after the end of the buffer. By default, this is highlighted like hl-NonText.
	"TermCursor",                --Cursor in a focused terminal.
	"TermCursorNC",              --Cursor in an unfocused terminal.
	"ErrorMsg",                  --Error messages on the command line.
	"WinSeparator",              --Separators between window splits.
	"VertSplit",
	"Folded",                    --Line used for closed folds.
	"FoldColumn",                --foldcolumn
	"SignColumn",                --Column where signs are displayed.
	"IncSearch",                 --incsearch highlighting; also used for the text replaced with :s///c.
	"Substitute",                --:substitute replacement text highlighting.
	"LineNr",                    --Line number for :number and :# commands, and when number or relativenumber option is set.
	"LineNrAbove",               --Line number for when the relativenumber option is set, above the cursor line.
	"LineNrBelow",               --Line number for when the relativenumber option is set, below the cursor line.
	"CursorLineNr",              --Like LineNr when cursorline is set and cursorlineopt contains number or is both, for the cursor line.
	"CursorLineFold",            --Like FoldColumn when cursorline is set for the cursor line.
	"CursorLineSign",            --Like SignColumn when cursorline is set for the cursor line.
	"MatchParen",                --Character under the cursor or just before it, if it is a paired bracket, and its match. pi_paren.txt
	"ModeMsg",                   --showmode message (e.g., -- INSERT --).
	"MsgArea",                   --Area for messages and command-line, see also cmdheight.
	"MsgSeparator",              --Separator for scrolled messages msgsep.
	"MoreMsg",                   --more-prompt
	"NonText",                   --@ at the end of the window, characters from showbreak and other characters that do not really exist in the text (e.g., > displayed when a double-wide character doesnt fit at the end of the line). See also hl-EndOfBuffer.
	"Normal",                    --Normal text.
	"NormalFloat",               --Normal text in floating windows.
	"FloatBorder",               --Border of floating windows.
	"FloatTitle",                --Title of floating windows.
	"FloatFooter",               --Footer of floating windows.
	"NormalNC",                  --Normal text in non-current windows.
	"Pmenu",                     --Popup menu: Normal item.
	"PmenuSel",                  --Popup menu: Selected item.
	"PmenuKind",                 --Popup menu: Normal item kind.
	"PmenuKindSel",              --Popup menu: Selected item kind.
	"PmenuExtra",                --Popup menu: Normal item extra text.
	"PmenuExtraSel",             --Popup menu: Selected item extra text.
	"PmenuSbar",                 --Popup menu: Scrollbar.
	"PmenuThumb",                --Popup menu: Thumb of the scrollbar.
	"Question",                  --hit-enter prompt and yes/no questions.
	"QuickFixLine",              --Current quickfix item in the quickfix window. Combined with hl-CursorLine when the cursor is there.
	"Search",                    --Last search pattern highlighting (see hlsearch). Also used for similar items that need to stand out.
	"SnippetTabstop",            --Tabstops in snippets. vim.snippet
	"SpecialKey",                --Unprintable characters: Text displayed differently from what it really is. But not listchars whitespace. hl-Whitespace
	"SpellBad",                  --Word that is not recognized by the spellchecker. spell Combined with the highlighting used otherwise.
	"SpellCap",                  --Word that should start with a capital. spell Combined with the highlighting used otherwise.
	"SpellLocal",                --Word that is recognized by the spellchecker as one that is used in another region. spell Combined with the highlighting used otherwise.
	"SpellRare",                 --Word that is recognized by the spellchecker as one that is hardly ever used. spell Combined with the highlighting used otherwise.
	"StatusLine",                --Status line of current window.
	"StatusLineNC",              --Status lines of not-current windows.
	"TabLine",                   --Tab pages line, not active tab page label.
	"TabLineFill",               --Tab pages line, where there are no labels.
	"TabLineSel",                --Tab pages line, active tab page label.
	"Title",                     --Titles for output from :set all, :autocmd etc.
	"Visual",                    --Visual mode selection.
	"VisualNC",
	"VisualNOS",                 --Visual mode selection when vim is Not Owning the Selection.
	"WarningMsg",                --Warning messages.
	"Whitespace",                --nbsp, space, tab, multispace, lead and trail in listchars.
	"WildMenu",                  --Current match in wildmenu completion.
	"WinBar",                    --Window bar of current window.
	"WinBarNC",                  --Window bar of not-current windows.
	"Menu",                      --Current font, background and foreground colors of the menus. Also used for the toolbar. Applicable highlight arguments: font, guibg, guifg.
	"Scrollbar",                 --Current background and foreground of the main windows scrollbars. Applicable highlight arguments: guibg, guifg.
	"Tooltip",                   --Current font, background and foreground of the tooltips. Applicable highlight arguments: font, guibg, guifg.

	"Comment",                   --any comment
	"Constant",                  --any constant
	"String",                    --a string constant: "this is a string"
	"Character",                 --a character constant: 'c', '\n'
	"Number",                    --a number constant: 234, 0xff
	"Boolean",                   --a boolean constant: TRUE, false
	"Float",                     --a floating point constant: 2.3e10
	"Identifier",                --any variable name
	"Function",                  --function name (also: methods for classes)
	"Statement",                 --any statement
	"Conditional",               --if, then, else, endif, switch, etc.
	"Repeat",                    --for, do, while, etc.
	"Label",                     --case, default, etc.
	"Operator",                  --"sizeof", "+", "*", etc.
	"Keyword",                   --any other keyword
	"Exception",                 --try, catch, throw
	"PreProc",                   --generic Preprocessor
	"Include",                   --preprocessor #include
	"Define",                    --preprocessor #define
	"Macro",                     --same as Define
	"PreCondit",                 --preprocessor #if, #else, #endif, etc.
	"Type",                      --int, long, char, etc.
	"StorageClass",              --static, register, volatile, etc.
	"Structure",                 --struct, union, enum, etc.
	"Typedef",                   --a typedef
	"Special",                   --any special symbol
	"SpecialChar",               --special character in a constant
	"Tag",                       --you can use CTRL-] on this
	"Delimiter",                 --character that needs attention
	"SpecialComment",            --special things inside a comment
	"Debug",                     --debugging statements
	"Underlined",                --text that stands out, HTML links
	"Ignore",                    --left blank, hidden  |hl-Ignore|
	"Error",                     --any erroneous construct
	"Todo",                      --anything that needs extra attention; mostly the keywords TODO FIXME and XXX
	"Added",                     --added line in a diff
	"Changed",                   --changed line in a diff
	"Removed",                   --removed line in a diff

	"DiagnosticError",           --Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
	"DiagnosticWarn",            --Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
	"DiagnosticInfo",            --Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
	"DiagnosticHint",            --Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
	"DiagnosticOk",              --Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
	"DiagnosticVirtualTextError", --Used for "Error" diagnostic virtual text.
	"DiagnosticVirtualTextWarn", --Used for "Warn" diagnostic virtual text.
	"DiagnosticVirtualTextInfo", --Used for "Info" diagnostic virtual text.
	"DiagnosticVirtualTextHint", --Used for "Hint" diagnostic virtual text.
	"DiagnosticVirtualTextOk",   --Used for "Ok" diagnostic virtual text.
	"DiagnosticUnderlineError",  --Used to underline "Error" diagnostics.
	"DiagnosticUnderlineWarn",   --Used to underline "Warn" diagnostics.
	"DiagnosticUnderlineInfo",   --Used to underline "Info" diagnostics.
	"DiagnosticUnderlineHint",   --Used to underline "Hint" diagnostics.
	"DiagnosticUnderlineOk",     --Used to underline "Ok" diagnostics.
	"DiagnosticFloatingError",   --Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
	"DiagnosticFloatingWarn",    --Used to color "Warn" diagnostic messages in diagnostics float.
	"DiagnosticFloatingInfo",    --Used to color "Info" diagnostic messages in diagnostics float.
	"DiagnosticFloatingHint",    --Used to color "Hint" diagnostic messages in diagnostics float.
	"DiagnosticFloatingOk",      --Used to color "Ok" diagnostic messages in diagnostics float.
	"DiagnosticSignError",       --Used for "Error" signs in sign column.
	"DiagnosticSignWarn",        --Used for "Warn" signs in sign column.
	"DiagnosticSignInfo",        --Used for "Info" signs in sign column.
	"DiagnosticSignHint",        --Used for "Hint" signs in sign column.
	"DiagnosticSignOk",          --Used for "Ok" signs in sign column.
	"DiagnosticDeprecated",      --Used for deprecated or obsolete code.
	"DiagnosticUnnecessary",     --Used for unnecessary or unused code.

	"@variable",                 --various variable names
	"@variable.builtin",         --built-in variable names (e.g. `this`, `self`)
	"@variable.parameter",       --parameters of a function
	"@variable.parameter.builtin", --special parameters (e.g. `_`, `it`)
	"@variable.member",          --object and struct fields
	"@constant",                 --constant identifiers
	"@constant.builtin",         --built-in constant values
	"@constant.macro",           --constants defined by the preprocessor
	"@module",                   --modules or namespaces
	"@module.builtin",           --built-in modules or namespaces
	"@label",                    --`GOTO` and other labels (e.g. `label:` in C), including heredoc labels
	"@string",                   --string literals
	"@string.documentation",     --string documenting code (e.g. Python docstrings)
	"@string.regexp",            --regular expressions
	"@string.escape",            --escape sequences
	"@string.special",           --other special strings (e.g. dates)
	"@string.special.symbol",    --symbols or atoms
	"@string.special.path",      --filenames
	"@string.special.url",       --URIs (e.g. hyperlinks)
	"@character",                --character literals
	"@character.special",        --special characters (e.g. wildcards)
	"@boolean",                  --boolean literals
	"@number",                   --numeric literals
	"@number.float",             --floating-point number literals
	"@type",                     --type or class definitions and annotations
	"@type.builtin",             --built-in types
	"@type.definition",          --identifiers in type definitions (e.g. `typedef <type> <identifier>` in C)
	"@attribute",                --attribute annotations (e.g. Python decorators, Rust lifetimes)
	"@attribute.builtin",        --builtin annotations (e.g. `@property` in Python)
	"@property",                 --the key in key/value pairs
	"@function",                 --function definitions
	"@function.builtin",         --built-in functions
	"@function.call",            --function calls
	"@function.macro",           --preprocessor macros
	"@function.method",          --method definitions
	"@function.method.call",     --method calls
	"@constructor",              --constructor calls and definitions
	"@operator",                 --symbolic operators (e.g. `+`, `*`)
	"@keyword",                  --keywords not fitting into specific categories
	"@keyword.coroutine",        --keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
	"@keyword.function",         --keywords that define a function (e.g. `func` in Go, `def` in Python)
	"@keyword.operator",         --operators that are English words (e.g. `and`, `or`)
	"@keyword.import",           --keywords for including modules (e.g. `import`, `from` in Python)
	"@keyword.type",             --keywords defining composite types (e.g. `struct`, `enum`)
	"@keyword.modifier",         --keywords defining type modifiers (e.g. `const`, `static`, `public`)
	"@keyword.repeat",           --keywords related to loops (e.g. `for`, `while`)
	"@keyword.return",           --keywords like `return` and `yield`
	"@keyword.debug",            --keywords related to debugging
	"@keyword.exception",        --keywords related to exceptions (e.g. `throw`, `catch`)
	"@keyword.conditional",      --keywords related to conditionals (e.g. `if`, `else`)
	"@keyword.conditional.ternary", --ternary operator (e.g. `?`, `:`)
	"@keyword.directive",        --various preprocessor directives and shebangs
	"@keyword.directive.define", --preprocessor definition directives
	"@punctuation",
	"@punctuation.delimiter",    --delimiters (e.g. `;`, `.`, `,`)
	"@punctuation.bracket",      --brackets (e.g. `()`, `{}`, `[]`)
	"@punctuation.special",      --special symbols (e.g. `{}` in string interpolation)
	"@comment",                  --line and block comments
	"@comment.documentation",    --comments documenting code
	"@comment.error",            --error-type comments (e.g. `ERROR`, `FIXME`, `DEPRECATED`)
	"@comment.warning",          --warning-type comments (e.g. `WARNING`, `FIX`, `HACK`)
	"@comment.todo",             --todo-type comments (e.g. `TODO`, `WIP`)
	"@comment.note",             --note-type comments (e.g. `NOTE`, `INFO`, `XXX`)
	"@markup",
	"@markup.strong",            --bold text
	"@markup.italic",            --italic text
	"@markup.strikethrough",     --struck-through text
	"@markup.underline",         --underlined text (only for literal underline markup!)
	"@markup.heading",           --headings, titles (including markers)
	"@markup.heading.1",         --top-level heading
	"@markup.heading.2",         --section heading
	"@markup.heading.3",         --subsection heading
	"@markup.heading.4",         --and so on
	"@markup.heading.5",         --and so forth
	"@markup.heading.6",         --six levels ought to be enough for anybody
	"@markup.quote",             --block quotes
	"@markup.math",              --math environments (e.g. `$ ... $` in LaTeX)
	"@markup.link",              --text references, footnotes, citations, etc.
	"@markup.link.label",        --link, reference descriptions
	"@markup.link.url",          --URL-style links
	"@markup.raw",               --literal or verbatim text (e.g. inline code)
	"@markup.raw.block",         --literal or verbatim text as a stand-alone block
	"@markup.list",              --list markers
	"@markup.list.checked",      --checked todo-style list markers
	"@markup.list.unchecked",    --unchecked todo-style list markers
	"@diff",
	"@diff.plus",                --added text (for diff files)
	"@diff.minus",               --deleted text (for diff files)
	"@diff.delta",               --changed text (for diff files)
	"@tag",                      --XML-style tag names (e.g. in XML, HTML, etc.)
	"@tag.builtin",              --XML-style tag names (e.g. HTML5 tags)
	"@tag.attribute",            --XML-style tag attributes
	"@tag.delimiter",            --XML-style tag delimiters

	"LspReferenceText",          --used for highlighting "text" references
	"LspReferenceRead",          --used for highlighting "read" references
	"LspReferenceWrite",         --used for highlighting "write" references
	"LspInlayHint",              --used for highlighting inlay hints
	"LspCodeLens",               --Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
	"LspCodeLensSeparator",      --Used to color the separator between two or more code lenses.
	"LspSignatureActiveParameter", --Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

	"@lsp.type.class",           --Identifiers that declare or reference a class type
	"@lsp.type.comment",         --Tokens that represent a comment
	"@lsp.type.decorator",       --Identifiers that declare or reference decorators and annotations
	"@lsp.type.enum",            --Identifiers that declare or reference an enumeration type
	"@lsp.type.enumMember",      --Identifiers that declare or reference an enumeration property, constant, or member
	"@lsp.type.event",           --Identifiers that declare an event property
	"@lsp.type.function",        --Identifiers that declare a function
	"@lsp.type.interface",       --Identifiers that declare or reference an interface type
	"@lsp.type.keyword",         --Tokens that represent a language keyword
	"@lsp.type.macro",           --Identifiers that declare a macro
	"@lsp.type.method",          --Identifiers that declare a member function or method
	"@lsp.type.modifier",        --Tokens that represent a modifier
	"@lsp.type.namespace",       --Identifiers that declare or reference a namespace, module, or package
	"@lsp.type.number",          --Tokens that represent a number literal
	"@lsp.type.operator",        --Tokens that represent an operator
	"@lsp.type.parameter",       --Identifiers that declare or reference a function or method parameters
	"@lsp.type.property",        --Identifiers that declare or reference a member property, member field, or member variable
	"@lsp.type.regexp",          --Tokens that represent a regular expression literal
	"@lsp.type.string",          --Tokens that represent a string literal
	"@lsp.type.struct",          --Identifiers that declare or reference a struct type
	"@lsp.type.type",            --Identifiers that declare or reference a type that is not covered above
	"@lsp.type.typeParameter",   --Identifiers that declare or reference a type parameter
	"@lsp.type.variable",        --Identifiers that declare or reference a local or global variable

	"@lsp.mod.abstract",         --Types and member functions that are abstract
	"@lsp.mod.async",            --Functions that are marked async
	"@lsp.mod.declaration",      --Declarations of symbols
	"@lsp.mod.defaultLibrary",   --Symbols that are part of the standard library
	"@lsp.mod.definition",       --Definitions of symbols, for example, in header files
	"@lsp.mod.deprecated",       --Symbols that should no longer be used
	"@lsp.mod.documentation",    --Occurrences of symbols in documentation
	"@lsp.mod.modification",     --Variable references where the variable is assigned to
	"@lsp.mod.readonly",         --Readonly variables and member fields (constants)
	"@lsp.mod.static",           --Class members (static members)
	"@lsp",
	"RedrawDebugClear",
	"RedrawDebugComposed",
	"RedrawDebugNormal",
	"RedrawDebugRecompose",
}

local grouptable = {

	df             = {
		add = {
			"Added",
			"DiffAdd",
			"@diff.plus",
		},

		delete = {
			"Removed",
			"DiffDelete",
			"@diff.minus",
		},

		change = {
			"Changed",
			"DiffChange",
			"@diff.delta",
		},

		text = { "DiffText", },
		base = { "@diff" }
	},

	di             = {
		sign = {
			error = { "DiagnosticSignError", },
			warn = { "DiagnosticSignWarn", },
			ok = { "DiagnosticSignOk" },
			hint = { "DiagnosticSignHint" },
			info = { "DiagnosticSignInfo" },
		},

		underline = {
			error = { "DiagnosticUnderlineError", },
			warn = { "DiagnosticUnderlineWarn", },
			ok = { "DiagnosticUnderlineOk" },
			hint = { "DiagnosticUnderlineHint" },
			info = { "DiagnosticUnderlineInfo" },
		},

		virtual = {
			error = { "DiagnosticVirtualTextError", },
			warn = { "DiagnosticVirtualTextWarn", },
			ok = { "DiagnosticVirtualTextOk" },
			hint = { "DiagnosticVirtualTextHint" },
			info = { "DiagnosticVirtualTextInfo" },
		},

		spell = {
			bad = { "SpellBad", },
			cap = { "SpellCap", },
			loc = { "SpellLocal", },
			rare = { "SpellRare", }
		},

		redraw = {
			clear = { "RedrawDebugClear" },
			composed = { "RedrawDebugComposed" },
			normal = { "RedrawDebugNormal" },
			recompose = { "RedrawDebugRecompose" },
		},

		removerble = {
			"DiagnosticDeprecated",
			"@lsp.mod.deprecated",
			"DiagnosticUnnecessary",
		},

		error = {
			"ErrorMsg",
			"Error",
			"DiagnosticError",
			"DiagnosticFloatingError",
		},

		warn = {
			"ColorColumn",
			"WarningMsg",
			"DiagnosticWarn",
			"DiagnosticFloatingWarn",
		},

		ok = {
			"DiagnosticOk",
			"DiagnosticFloatingOk",
		},

		info = {
			"DiagnosticInfo",
			"DiagnosticFloatingInfo",
		},

		hint = {
			"DiagnosticHint",
			"DiagnosticFloatingHint",
		}
	},

	cursor         = {
		"Cursor",
		"lCursor",
		"CursorIM",
		"TermCursor",
		"TermCursorNC",
	},

	cursorline     = { "CursorColumn", "CursorLine", },
	search         = { "Search", "IncSearch", },
	cursearch      = { "CurSearch", },
	mathparen      = { "MatchParen", },
	substitute     = { "Substitute", },
	folded         = { "Folded", },
	snippetTabstop = { "SnippetTabstop" },
	tag            = { "Tag" },
	Directory      = { "Directory", },
	msg            = { "ModeMsg", "MoreMsg", "Question", },
	gui            = { "Menu", "Scrollbar", "Tooltip", },

	lsp            = {
		base = { "@lsp" },
		reference = {
			"LspReferenceText",
			"LspReferenceRead",
			"LspReferenceWrite",
		},
		inlay = { "LspInlayHint", },
		codelens = { "LspCodeLens" },
		separator = { "LspCodeLensSeparator" },
		signature = { "LspSignatureActiveParameter" },
	},

	side           = {
		linr = {
			"LineNr",
			"LineNrAbove",
			"LineNrBelow",
		},
		sign = {
			"FoldColumn",
			"SignColumn",
		},
		cursornr = {
			"CursorLineNr",
		},
		cursorsign = {
			"CursorLineFold",
			"CursorLineSign",
		}
	},

	bar            = {
		active   = {
			"MsgSeparator",
			"TabLineSel",
			"StatusLine",
			"WinBar",
		},
		inactive = {
			"TabLine",
			"TabLineFill",
			"StatusLineNC",
			"WinBarNC",
		},
	},

	nontext        = {
		"Conceal",
		"EndOfBuffer",
		"NonText",
		"SpecialKey",
		"Whitespace",
		"Ignore",
	},

	normal         = {
		plain  = { "MsgArea", "Normal", },
		nc     = { "NormalNC" },
		border = { "WinSeparator", "VertSplit" },
		title  = { "Title", },
	},

	visual         = {
		plain = { "Visual" },
		nc = { "VisualNC", "VisualNOS" },
	},

	float          = {
		plain = { "NormalFloat" },
		border = { "FloatBorder", },
		title = { "FloatTitle", "FloatFooter", }
	},

	menu           = {
		select = {
			"QuickFixLine",
			"PmenuSel",
			"PmenuKindSel",
			"PmenuExtraSel",
		},
		candidate = {
			"Pmenu",
			"PmenuKind",
			"PmenuExtra",
			"WildMenu"
		},
		bar = { "PmenuSbar" },
		thumb = { "PmenuThumb" },
	},

	doc            = {
		comment = { "@lsp.type.comment", "Comment", "@comment", },
		documentation = {
			"@string.documentation",
			"@comment.documentation",
		},

		spcomment = {
			plain = { "SpecialComment", "Todo" },
			error = { "@comment.error" },
			warnig = { "@comment.warning" },
			note = { "@comment.note" },
			todo = { "@comment.todo" },
		},

		markup = {
			base          = { "@markup", "@lsp.mod.documentation", },
			strong        = { "@markup.strong" },
			italic        = { "@markup.italic" },
			strikethrough = { "@markup.strikethrough" },
			underline     = { "@markup.underline" },
			quote         = { "@markup.quote" },
			raw           = { "@markup.raw", },
			block         = { "@markup.raw.block", "@markup.math", },
			link          = {
				plain = { "@markup.link" },
				label = { "@markup.link.label" },
				url   = { "@markup.link.url" },
			},
			list          = {
				plain     = { "@markup.list" },
				checked   = { "@markup.list.checked" },
				unchecked = { "@markup.list.unchecked" },
			}
		},

		head = {
			h1 = { "@markup.heading", "@markup.heading.1", },
			h2 = { "@markup.heading.2", },
			h3 = { "@markup.heading.3", },
			h4 = { "@markup.heading.4", },
			h5 = { "@markup.heading.5", },
			h6 = { "@markup.heading.6", }
		},
	},

	literal        = {
		constant = {
			"Constant",
			"@constant",
			"@constant.builtin",
			"@constant.macro",
			"@lsp.mod.readonly",
		},

		str = {
			"String",
			"@string",
			"@lsp.type.string",
		},

		char = {
			"Character",
			"@character",
		},

		number = {
			"Number",
			"@number",
			"@lsp.type.number",
		},

		float = {
			"Float",
			"@number.float",
		},

		spstring = {
			"Underlined",
			"@string.special.path",
			"@string.special.url",
		},

		symbol = {
			"Special",
			"@string.special",
			"@string.special.symbol",
		}
	},

	identifier     = {
		base          = {
			"@lsp.mod.definition",
			"@lsp.mod.declaration",
			"@lsp.mod.defaultLibrary",
		},

		variable      = {
			"Identifier",
			"@variable",
			"@variable.builtin",
			"@lsp.type.variable",
			"@lsp.mod.modification",
		},

		member        = {
			"@variable.member",
			"@lsp.mod.static",
			"@lsp.type.event",
			"@lsp.type.property",
			"@property",
		},

		parameter     = {
			"@variable.parameter",
			"@variable.parameter.builtin",
			"@lsp.type.parameter",
		},

		spmember      = {
			"@attribute",
			"@attribute.builtin",
			"@tag.attribute",
			"@lsp.type.decorator",
			"@tag",
			"@tag.builtin",
		},

		func          = {
			"Function",
			"@function",
			"@lsp.type.function",
			"@function.builtin",
			"@function.call",
			"@function.method",
			"@lsp.type.method",
			"@function.method.call",
		},

		spfunc        = {
			"Macro",
			"@function.macro",
			"@lsp.type.macro",
			"@lsp.mod.abstract",
			"@lsp.mod.async",
		},

		operator      = {
			"Operator",
			"@operator",
			"@constructor",
			"@keyword.operator",
			"@lsp.type.operator",
		},

		type          = {
			"Type",
			"@type",
			"@lsp.type.enum",
			"@type.builtin",
			"@type.definition",
			"@lsp.type.type",
		},

		class         = {
			"@module",
			"@module.builtin",
			"@lsp.type.class",
			"@lsp.type.namespace",
			"@lsp.type.interface",
			"@lsp.type.struct",
		},

		typeparameter = { "@lsp.type.typeParameter", },

		typemember    = {
			"Boolean",
			"@boolean",
			"@lsp.type.enumMember",
		},

	},

	reserve        = {
		statement = {
			"Statement",
			"Conditional",
			"@keyword.conditional",
			"@keyword.conditional.ternary",
			"Repeat",
			"@keyword.repeat",
			"@keyword.return",
		},

		spstatement = {
			"Exception",
			"@keyword.exception",
			"Label",
			"@label",
			"Debug",
			"@keyword.debug",
			"PreProc",
			"PreCondit",
		},

		modifier = {
			"Keyword",
			"@keyword",
			"@lsp.type.keyword",
			"StorageClass",
			"@keyword.modifier",
			"@lsp.type.modifier",
			"@keyword.coroutine",
		},

		def = {
			"Structure",
			"Typedef",
			"Include",
			"Define",
			"@keyword.type",
			"@keyword.import",
			"@keyword.directive",
			"@keyword.directive.define",
			"@keyword.function",
		},

		spchar = {
			"SpecialChar",
			"@character.special",
			"@punctuation.special",
			"@string.regexp",
			"@lsp.type.regexp",
			"@string.escape",
		},

		delimiter = {
			base = { "@punctuation" },
			bracket = { "@punctuation.bracket" },
			delimiter = {
				"Delimiter",
				"@punctuation.delimiter",
				"@tag.delimiter",
			}
		}
	},
}

---@param config Style
local function palette(config)
	config = config == nil and {} or config
	local c = config.colors
	local o = config.options == nil and {} or config.options
	return {
		df             = {
			add    = { bg = c.v2_chartreuse },
			delete = { bg = c.v2_orange },
			change = { bg = c.v2_cyan },
			text   = { fg = c.v0_white, bg = c.d3_purple },
			base   = { default = true }
		},

		di             = {
			sign       = (o.sideBarDim == nil or o.sideBarDim == true)
				and {
					error = { fg = c.d3_red, bg = c.v2_black },
					warn  = { fg = c.d3_yellow, bg = c.v2_black },
					ok    = { fg = c.d3_green, bg = c.v2_black },
					hint  = { fg = c.d3_purple, bg = c.v2_black },
					info  = { fg = c.d3_blue, bg = c.v2_black },
				}
				or {
					error = { fg = c.d3_red, },
					warn  = { fg = c.d3_yellow, },
					ok    = { fg = c.d3_green, },
					hint  = { fg = c.d3_purple, },
					info  = { fg = c.d3_blue, },
				},

			underline  = {
				error = { fg = c.d3_red, underline = true },
				warn  = { fg = c.d3_yellow, underline = true },
				ok    = { fg = c.d3_green, underline = true },
				hint  = { fg = c.d3_purple, underline = true },
				info  = { fg = c.d3_blue, underline = true },
			},

			virtual    = {
				error = { fg = c.d3_red, bg = c.v2_red },
				warn  = { fg = c.d3_yellow, bg = c.v2_yellow },
				ok    = { fg = c.d3_green, bg = c.v2_green },
				hint  = { fg = c.d3_purple, bg = c.v2_purple },
				info  = { fg = c.d3_blue, bg = c.v2_blue },
			},

			spell      = {
				bad  = { fg = c.d3_red, undercurl = true },
				cap  = { fg = c.d3_yellow, undercurl = true },
				loc  = { fg = c.d3_purple, undercurl = true },
				rare = { fg = c.d3_blue, undercurl = true }
			},

			redraw     = {
				clear = { fg = c.v1_white, bg = c.d3_yellow },
				normal = { fg = c.v1_white, bg = c.d3_blue },
				composed = { fg = c.v1_white, bg = c.d3_green },
				recompose = { fg = c.v1_white, bg = c.d3_red },
			},

			removerble = { strikethrough = true },
			error      = { fg = c.d3_red },
			warn       = { fg = c.d3_yellow },
			ok         = { fg = c.d3_green },
			info       = { fg = c.d3_purple },
			hint       = { fg = c.d3_blue }
		},

		cursor         = { fg = c.v1_white, bg = c.d2_black },
		cursorline     = { bg = c.v2_white },
		search         = { bg = c.v2_blue },
		cursearch      = { fg = c.v0_white, bg = c.d3_purple },
		substitute     = { fg = c.v0_white, bg = c.d3_purple },
		mathparen      = { fg = c.v0_white, bg = c.d3_green },
		snippetTabstop = { fg = c.v0_white, bg = c.d3_chartreuse },
		folded         = { bg = c.v2_black },
		tag            = { default = true, underline = true },
		Directory      = { fg = c.d3_blue, bold = true },
		msg            = { fg = c.d3_purple, bold = true },
		gui            = { default = true },

		--TODO
		lsp            = {
			base = { default = true },
			separator = { default = true },
			reference = { default = true },
			inlay = { default = true },
			codelens = { default = true },
			signature = { default = true }
		},
		--

		side           = (o.sideBarDim == nil or o.sideBarDim == true)
			and {
				linr = { bg = c.v2_black },
				sign = { bg = c.v2_black },
				cursorsign = { bg = c.v2_black },
				cursornr = { fg = c.d3_purple, bg = c.v2_black },
			}
			or {
				linr = { bg = c.v1_white },
				sign = { bg = c.v1_white },
				cursorsign = { bg = c.v1_white },
				cursornr = { fg = c.d3_purple, bg = c.v1_white },
			},

		bar            = {
			active   = (o.statusBarRevers == nil or o.statusBarRevers == true)
				and { bg = c.v2_black }
				or { fg = c.v0_white, bg = c.d2_black },
			inactive = { fg = c.d3_black, bg = c.v1_black },
		},

		nontext        = { fg = c.d2_white },

		normal         = {
			plain  = { fg = c.d1_black, bg = c.v1_white },
			nc     = (o.NCWindowDim == nil or o.NCWindowDim == true)
				and { bg = c.v2_white }
				or { bg = c.v1_white },
			border = { fg = c.d1_white, bg = c.v1_white },
			title  = { fg = c.d0_black, italic = true },
		},

		visual         = {
			plain = { bg = c.v3_white },
			nc    = { default = true },
		},

		float          = {
			plain  = { bg = c.v0_white },
			border = { bg = c.v0_white, bold = true },
			title  = { bg = c.v0_white, italic = true }
		},

		menu           = {
			select    = { bg = c.v3_black },
			candidate = { bg = c.v0_black },
			bar       = { bg = c.v1_black },
			thumb     = { bg = c.d3_black },
		},

		doc            = {
			comment       = util.applyOptions({ fg = c.d3_black }, o.comment),
			documentation = util.applyOptions({ fg = c.d2_black }, o.doc),

			spcomment     = {
				plain  = { bold = true },
				error  = { bold = true, bg = c.v2_red },
				warnig = { bold = true, bg = c.v2_yellow },
				note   = { bold = true, bg = c.v2_blue },
				todo   = { bold = true, bg = c.v2_purple },
			},

			markup        = {
				base          = { default = true },
				strong        = { default = true, bold = true },
				italic        = { default = true, italic = true },
				strikethrough = { default = true, strikethrough = true },
				underline     = { default = true, underline = true },
				quote         = { bg = c.v2_black },
				raw           = { bg = c.v1_black },
				block         = { default = true, italic = true },
				link          = {
					plain = { underline = true },
					label = { fg = c.d1_chartreuse, underline = true },
					url   = { fg = c.d3_chartreuse, underline = true },
				},
				list          = {
					plain     = { bold = true },
					checked   = { bg = c.v2_black, bold = true },
					unchecked = { bg = c.v2_white, bold = true },
				}
			},

			head          = {
				h1 = { fg = c.d3_blue, bold = true },
				h2 = { fg = c.d3_orange, bold = true },
				h3 = { fg = c.d3_green, bold = true },
				h4 = { fg = c.d3_purple, bold = true },
				h5 = { fg = c.d3_yellow, bold = true },
				h6 = { fg = c.d3_cyan, bold = true }
			},
		},

		literal        = {
			constant = util.applyOptions({ fg = c.d1_chartreuse }, o.constant),
			symbol   = util.applyOptions({ fg = c.d3_chartreuse }, o.constant),
			spstring = util.applyOptions({ fg = c.d1_chartreuse, }, o.str),
			str      = util.applyOptions({ fg = c.d1_yellow, }, o.str),
			char     = { fg = c.d1_yellow, },
			number   = { fg = c.d3_yellow },
			float    = { fg = c.d3_yellow, },
		},

		identifier     = {
			base          = { default = true, },
			variable      = { fg = c.d1_black },
			class         = { fg = c.d1_black, bold = true },
			member        = { fg = c.d1_green, },
			spmember      = { fg = c.d3_green, },
			parameter     = { fg = c.d1_cyan, },
			typeparameter = { fg = c.d3_cyan },
			func          = util.applyOptions({ fg = c.d1_blue }, o.func),
			operator      = util.applyOptions({ fg = c.d1_blue }, o.func),
			spfunc        = util.applyOptions({ fg = c.d3_blue }, o.func),
			type          = util.applyOptions({ fg = c.d3_purple }, o.type),
			typemember    = util.applyOptions({ fg = c.d1_purple }, o.type),
		},

		reserve        = {
			statement   = util.applyOptions({ fg = c.d1_red }, o.statement),
			spstatement = util.applyOptions({ fg = c.d3_red }, o.statement),
			def         = util.applyOptions({ fg = c.d1_red }, o.keyword),
			modifier    = util.applyOptions({ fg = c.d3_orange }, o.keyword),
			spchar      = { fg = c.d1_orange, },
			delimiter   = {
				base = { default = true },
				bracket = { default = true },
				delimiter = { fg = c.d1_orange }
			}
		},
	}
end

return {
	colorlist = colorlist,
	grouptable = grouptable,
	palette = palette
}
