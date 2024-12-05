local l = {

	doc        = {
		Comment                    = {}, -- any comment
		["@comment"]               = {}, -- line and block comments
		["@lsp.type.comment"]      = {}, -- Tokens that represent a comment

		Ignore                     = {}, -- left blank, hidden  |hl-Ignore|

		Error                      = {}, -- any erroneous construct

		SpecialComment             = {}, -- special things inside a comment
		Todo                       = {}, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		Added                      = {}, -- added line in a diff
		Changed                    = {}, -- changed line in a diff
		Removed                    = {}, -- removed line in a diff
		["@diff.plus"]             = {}, -- added text (for diff files)
		["@diff.minus"]            = {}, -- deleted text (for diff files)
		["@diff.delta"]            = {}, -- changed text (for diff files)

		Tag                        = {}, -- you can use CTRL-] on this

		Debug                      = {}, -- debugging statements
		["@string.documentation"]  = {}, -- string documenting code (e.g. Python docstrings)
		["@comment.documentation"] = {}, -- comments documenting code

		["@comment.error"]         = {}, -- error-type comments (e.g. `ERROR`, `FIXME`, `DEPRECATED`)
		["@comment.warning"]       = {}, -- warning-type comments (e.g. `WARNING`, `FIX`, `HACK`)
		["@comment.todo"]          = {}, -- todo-type comments (e.g. `TODO`, `WIP`)
		["@comment.note"]          = {}, -- note-type comments (e.g. `NOTE`, `INFO`, `XXX`)

		["@markup.strong"]         = {}, -- bold text
		["@markup.italic"]         = {}, -- italic text
		["@markup.strikethrough"]  = {}, -- struck-through text
		["@markup.underline"]      = {}, -- underlined text (only for literal underline markup!)

		["@markup.heading"]        = {}, -- headings, titles (including markers)
		["@markup.heading.1"]      = {}, -- top-level heading
		["@markup.heading.2"]      = {}, -- section heading
		["@markup.heading.3"]      = {}, -- subsection heading
		["@markup.heading.4"]      = {}, -- and so on
		["@markup.heading.5"]      = {}, -- and so forth
		["@markup.heading.6"]      = {}, -- six levels ought to be enough for anybody

		["@markup.quote"]          = {}, -- block quotes
		["@markup.math"]           = {}, -- math environments (e.g. `$ ... $` in LaTeX)

		["@markup.link"]           = {}, -- text references, footnotes, citations, etc.
		["@markup.link.label"]     = {}, -- link, reference descriptions
		["@markup.link.url"]       = {}, -- URL-style links

		["@markup.raw"]            = {}, -- literal or verbatim text (e.g. inline code)
		["@markup.raw.block"]      = {}, -- literal or verbatim text as a stand-alone block

		["@markup.list"]           = {}, -- list markers
		["@markup.list.checked"]   = {}, -- checked todo-style list markers
		["@markup.list.unchecked"] = {}, -- unchecked todo-style list markers

	},

	literal    = {
		constant = {
			String                = {}, -- a string constant: "this is a string"
			["@string"]           = {}, -- string literals
			["@lsp.type.string"]  = {}, -- Tokens that represent a string literal

			Constant              = {}, -- any constant
			["@lsp.mod.readonly"] = {}, -- Readonly variables and member fields (constants)
			["@constant"]         = {}, -- constant identifiers
			["@constant.builtin"] = {}, -- built-in constant values
			["@constant.macro"]   = {}, -- constants defined by the preprocessor

			Character             = {}, -- a character constant: 'c', '\n'
			["@character"]        = {}, -- character literals

			Number                = {}, -- a number constant: 234, 0xff
			["@number"]           = {}, -- numeric literals
			["@lsp.type.number"]  = {}, -- Tokens that represent a number literal


			Float             = {}, -- a floating point constant: 2.3e10
			["@number.float"] = {}, -- floating-point number literals

			["@tag"]          = {}, -- XML-style tag names (e.g. in XML, HTML, etc.)
			["@tag.builtin"]  = {}, -- XML-style tag names (e.g. HTML5 tags)
		},

		typemem  = {
			Boolean                     = {}, -- a boolean constant: TRUE, false
			["@boolean"]                = {}, -- boolean literals
			["@lsp.type.enumMember"]    = {}, -- Identifiers that declare or reference an enumeration property, constant, or member
			["@lsp.type.typeParameter"] = {}, -- Identifiers that declare or reference a type parameter
		},

		special  = {
			Special                    = {}, -- any special symbol
			["@string.special.symbol"] = {}, -- symbols or atoms
			["@string.special"]        = {}, -- other special strings (e.g. dates)

			Underlined                 = {}, -- text that stands out, HTML links
			["@string.special.path"]   = {}, -- filenames
			["@string.special.url"]    = {}, -- URIs (e.g. hyperlinks)

			SpecialChar                = {}, -- special character in a constant
			["@character.special"]     = {}, -- special characters (e.g. wildcards)
			["@string.escape"]         = {}, -- escape sequences
			["@lsp.type.regexp"]       = {}, -- Tokens that represent a regular expression literal
			["@string.regexp"]         = {}, -- regular expressions

			Delimiter                  = {}, -- character that needs attention
			["@tag.delimiter"]         = {}, -- XML-style tag delimiters
			["@punctuation.delimiter"] = {}, -- delimiters (e.g. `;`, `.`, `,`)
			["@punctuation.bracket"]   = {}, -- brackets (e.g. `()`, `{}`, `[]`)
			["@punctuation.special"]   = {}, -- special symbols (e.g. `{}` in string interpolation)
		},
	},

	Identifier = {
		callable  = {
			Function                  = {}, -- function name (also: methods for classes)
			["@function"]             = {}, -- function definitions
			["@lsp.type.function"]    = {}, -- Identifiers that declare a function
			["@function.builtin"]     = {}, -- built-in functions
			["@function.call"]        = {}, -- function calls

			["@lsp.type.method"]      = {}, -- Identifiers that declare a member function or method
			["@function.method"]      = {}, -- method definitions
			["@function.method.call"] = {}, -- method calls

			["@function.macro"]       = {}, -- preprocessor macros
		},

		variable  = {
			["@variable.builtin"]       = {}, -- built-in variable names (e.g. `this`, `self`)
			["@lsp.mod.definition"]     = {}, -- Definitions of symbols, for example, in header files
			["@lsp.mod.defaultLibrary"] = {}, -- Symbols that are part of the standard library
			["@lsp.mod.declaration"]    = {}, -- Declarations of symbols
			["@variable"]               = {}, -- various variable names
			Identifier                  = {}, -- any variable name
			["@lsp.type.variable"]      = {}, -- Identifiers that declare or reference a local or global variable
			["@lsp.mod.modification"]   = {}, -- Variable references where the variable is assigned to
		},

		struct    = {
			["@lsp.type.interface"] = {}, -- Identifiers that declare or reference an interface type
			["@lsp.type.namespace"] = {}, -- Identifiers that declare or reference a namespace, module, or package
			["@lsp.type.struct"]    = {}, -- Identifiers that declare or reference a struct type
			["@lsp.type.class"]     = {}, -- Identifiers that declare or reference a class type

			["@module"]             = {}, -- modules or namespaces
			["@module.builtin"]     = {}, -- built-in modules or namespaces
		},

		memeber   = {
			["@tag.attribute"]     = {}, -- XML-style tag attributes
			["@property"]          = {}, -- the key in key/value pairs
			["@lsp.type.property"] = {}, -- Identifiers that declare or reference a member property, member field, or member variable
			["@variable.member"]   = {}, -- object and struct fields
			["@lsp.mod.static"]    = {}, -- Class members (static members)
		},

		parameter = {
			["@variable.parameter"]         = {}, -- parameters of a function
			["@variable.parameter.builtin"] = {}, -- special parameters (e.g. `_`, `it`)
			["@lsp.type.parameter"]         = {}, -- Identifiers that declare or reference a function or method parameters

		},

		meta      = {
			["@attribute"]             = {}, -- attribute annotations (e.g. Python decorators, Rust lifetimes)
			["@attribute.builtin"]     = {}, -- builtin annotations (e.g. `@property` in Python)
			["@lsp.mod.abstract"]      = {}, -- Types and member functions that are abstract
			["@lsp.type.modifier"]     = {}, -- Tokens that represent a modifier
			["@lsp.mod.deprecated"]    = {}, -- Symbols that should no longer be used
			["@lsp.mod.async"]         = {}, -- Functions that are marked async
			["@lsp.type.decorator"]    = {}, -- Identifiers that declare or reference decorators and annotations
			["@lsp.type.event"]        = {}, -- Identifiers that declare an event property
			["@lsp.mod.documentation"] = {}, -- Occurrences of symbols in documentation
		},

		type      = {
			["@lsp.type.type"]   = {}, -- Identifiers that declare or reference a type that is not covered above
			["@lsp.type.enum"]   = {}, -- Identifiers that declare or reference an enumeration type
			Type                 = {}, -- int, long, char, etc.
			["@type"]            = {}, -- type or class definitions and annotations
			["@type.builtin"]    = {}, -- built-in types
			["@type.definition"] = {}, -- identifiers in type definitions (e.g. `typedef <type> <identifier>` in C)
		}
	},

	keyword    = {
		statement = {
			Statement                        = {}, -- any statement
			Conditional                      = {}, -- if, then, else, endif, switch, etc.
			["@keyword.conditional"]         = {}, -- keywords related to conditionals (e.g. `if`, `else`)
			["@keyword.conditional.ternary"] = {}, -- ternary operator (e.g. `?`, `:`)
			Repeat                           = {}, -- for, do, while, etc.
			["@keyword.repeat"]              = {}, -- keywords related to loops (e.g. `for`, `while`)
			Label                            = {}, -- case, default, etc.
			["@label"]                       = {}, -- `GOTO` and other labels (e.g. `label:` in C), including heredoc labels
			Exception                        = {}, -- try, catch, throw
			["@keyword.exception"]           = {}, -- keywords related to exceptions (e.g. `throw`, `catch`)
			["@keyword.return"]              = {}, -- keywords like `return` and `yield`

		},
		operator  = {
			Operator               = {}, -- "sizeof", "+", "*", etc.
			["@operator"]          = {}, -- symbolic operators (e.g. `+`, `*`)
			["@keyword.operator"]  = {}, -- operators that are English words (e.g. `and`, `or`)
			["@lsp.type.operator"] = {}, -- Tokens that represent an operator
		},

		define    = {
			Structure             = {}, -- struct, union, enum, etc.
			["@constructor"]      = {}, -- constructor calls and definitions
			["@lsp.type.macro"]   = {}, -- Identifiers that declare a macro
			Typedef               = {}, -- a typedef
			["@keyword.function"] = {}, -- keywords that define a function (e.g. `func` in Go, `def` in Python)
		},

		keyword   = {
			Keyword               = {}, -- any other keyword
			["@keyword.debug"]    = {}, -- keywords related to debugging
			["@keyword.import"]   = {}, -- keywords for including modules (e.g. `import`, `from` in Python)
			PreCondit             = {}, -- preprocessor #if, #else, #endif, etc.
			Define                = {}, -- preprocessor #define
			Macro                 = {}, -- same as Define
			PreProc               = {}, -- generic Preprocessor
			Include               = {}, -- preprocessor #include
			["@keyword"]          = {}, -- keywords not fitting into specific categories
			["@lsp.type.keyword"] = {}, -- Tokens that represent a language keyword
		},

		modifier  = {
			["@keyword.coroutine"]        = {}, -- keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
			StorageClass                  = {}, -- static, register, volatile, etc.
			["@keyword.modifier"]         = {}, -- keywords defining type modifiers (e.g. `const`, `static`, `public`)
			["@keyword.type"]             = {}, -- keywords defining composite types (e.g. `struct`, `enum`)
			["@keyword.directive"]        = {}, -- various preprocessor directives and shebangs
			["@keyword.directive.define"] = {}, -- preprocessor definition directives
		},
	},


	LspReferenceText            = {}, -- used for highlighting "text" references
	LspReferenceRead            = {}, -- used for highlighting "read" references
	LspReferenceWrite           = {}, -- used for highlighting "write" references
	LspInlayHint                = {}, -- used for highlighting inlay hints
	LspCodeLens                 = {}, -- Used to color the virtual text of the codelens.
	LspCodeLensSeparator        = {}, -- Used to color the separator between two or more code lenses.
	LspSignatureActiveParameter = {}, -- Used to highlight the active parameter in the signature help.


}
