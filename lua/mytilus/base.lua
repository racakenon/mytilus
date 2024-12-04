local p = {}
local _ = {
	Exception                        = "Statement",         -- try, catch, throw
	Statement                        = { p.sy.statement },  -- any statement
	Conditional                      = "Statement",         -- if, then, else, endif, switch, etc.
	Repeat                           = "Statement",         -- for, do, while, etc.
	Label                            = "Statement",         -- case, default, etc.

	Constant                         = { p.sy.constant },   -- any constant
	["@constant"]                    = "Constant",                    -- constant identifiers
	["@constant.builtin"]            = "Constant",                    -- built-in constant values
	["@constant.macro"]              = "Constant",                    -- constants defined by the preprocessor

	String                           = { p.sy.string },     -- a string constant: "this is a string"
	["@string"]                      = { p.sy.string },               -- string literals

	Character                        = "Constant",          -- a character constant: 'c', '\n'
	Number                           = "Constant",          -- a number constant: 234, 0xff
	Float                            = "Constant",          -- a floating point constant: 2.3e10

	Boolean                          = { p.sy.member },     -- a boolean constant: TRUE, false

	Identifier                       = { p.sy.variable },   -- any variable name

	Function                         = { p.sy.functions },  -- function name (also: methods for classes)

	Operator                         = { p.sy.operator },   -- "sizeof", "+", "*", etc.
	["@operator"]                    = "Operator",                    -- symbolic operators (e.g. +, *)
	["@keyword.operator"]            = "Operator",                    -- operators that are English words (e.g. and, or)

	Keyword                          = { p.sy.keyword },    -- any other keyword
	["@keyword"]                     = "Keyword",                     -- keywords not fitting into specific categories
	["@keyword.coroutine"]           = "Keyword",                     -- keywords related to coroutines (e.g. go in Go, async/await in Python)
	["@keyword.function"]            = "Keyword",                     -- keywords that define a function (e.g. func in Go, def in Python)
	["@keyword.import"]              = "Keyword",                     -- keywords for including or exporting modules (e.g. import, from in Python)
	["@keyword.type"]                = "Keyword",                     -- keywords describing namespaces and composite types (e.g. struct, enum)
	["@keyword.modifier"]            = "Keyword",                     -- keywords modifying other constructs (e.g. const, static, public)
	["@keyword.repeat"]              = "Keyword",                     -- keywords related to loops (e.g. for, while)
	["@keyword.return"]              = "Keyword",                     -- keywords like return and yield
	["@keyword.debug"]               = "Keyword",                     -- keywords related to debugging
	["@keyword.exception"]           = "Keyword",                     -- keywords related to exceptions (e.g. throw, catch)
	["@keyword.conditional"]         = "Keyword",                     -- keywords related to conditionals (e.g. if, else)
	["@keyword.conditional.ternary"] = "Keyword",                     -- ternary operator (e.g. ?, :)
	["@keyword.directive"]           = { p.sy.construct },            -- various preprocessor directives and shebangs
	["@keyword.directive.define"]    = { p.sy.construct },            -- preprocessor definition directives

	PreProc                          = "Macro",             -- generic Preprocessor
	Include                          = "Macro",             -- preprocessor #include
	Define                           = "Macro",             -- preprocessor #define
	Macro                            = { p.sy.macro },      -- same as Define
	PreCondit                        = "Macro",             -- preprocessor #if, #else, #endif, etc.

	Type                             = { p.sy.type },       -- int, long, char, etc.
	["@type"]                        = "Type",                        -- type or class definitions and annotations
	["@type.builtin"]                = "Type",                        -- built-in types
	["@type.definition"]             = { p.sy.construct },            -- identifiers in type definitions (e.g. typedef <type> <identifier> in C)

	StorageClass                     = { p.sy.modifier },   -- static, register, volatile, etc.

	Structure                        = { p.sy.struct },     -- struct, union, enum, etc.

	Typedef                          = "Keyword",           -- a typedef

	Special                          = { p.sy.special },    -- any special symbol

	SpecialChar                      = { p.sy.special },    -- special character in a constant


	["@lsp.type.class"]              = { p.sy.struct },     -- Identifiers that declare or reference a class type
	["@lsp.type.decorator"]          = { p.sy.construct },  -- Identifiers that declare or reference decorators and annotations
	["@lsp.type.enum"]               = { p.sy.construct },  -- Identifiers that declare or reference an enumeration type
	["@lsp.type.enumMember"]         = { p.sy.member },     -- Identifiers that declare or reference an enumeration property, constant, or member
	["@lsp.type.event"]              = { p.sy.special },    -- Identifiers that declare an event property
	["@lsp.type.function"]           = "Function",          -- Identifiers that declare a function
	["@lsp.type.interface"]          = { p.sy.construct },  -- Identifiers that declare or reference an interface type
	["@lsp.type.keyword"]            = "Keyword",           -- Tokens that represent a language keyword
	["@lsp.type.macro"]              = "Macro",             -- Identifiers that declare a macro
	["@lsp.type.method"]             = "Function",          -- Identifiers that declare a member function or method
	["@lsp.type.modifier"]           = { p.sy.modifier },   -- Tokens that represent a modifier
	["@lsp.type.namespace"]          = { p.sy.struct },     -- Identifiers that declare or reference a namespace, module, or package
	["@lsp.type.number"]             = "Number",            -- Tokens that represent a number literal
	["@lsp.type.operator"]           = "Operator",          -- Tokens that represent an operator
	["@lsp.type.parameter"]          = "Parameter",         -- Identifiers that declare or reference a function or method parameters
	["@lsp.type.property"]           = "Property",          -- Identifiers that declare or reference a member property, member field, or member variable
	["@lsp.type.regexp"]             = { p.sy.statement },  -- Tokens that represent a regular expression literal
	["@lsp.type.string"]             = "String",            -- Tokens that represent a string literal
	["@lsp.type.struct"]             = "Struct",            -- Identifiers that declare or reference a struct type
	["@lsp.type.type"]               = "Type",              -- Identifiers that declare or reference a type that is not covered above
	["@lsp.type.typeParameter"]      = { p.sy.member },     -- Identifiers that declare or reference a type parameter
	["@lsp.type.variable"]           = { p.sy.variable },   -- Identifiers that declare or reference a local or global variable
	["@lsp.mod.abstract"]            = { p.sy.construct },  -- Types and member functions that are abstract
	["@lsp.mod.async"]               = { p.sy.keyword },    -- Functions that are marked async
	["@lsp.mod.declaration"]         = { p.sy.construct },  -- Declarations of symbols
	["@lsp.mod.defaultLibrary"]      = { p.sy.constant },   -- Symbols that are part of the standard library
	["@lsp.mod.definition"]          = "Macro",             -- Definitions of symbols, for example, in header files
	["@lsp.mod.deprecated"]          = "DiagnosticDeprecated", -- Symbols that should no longer be used
	["@lsp.mod.documentation"]       = { p.sy.symbol },     -- Occurrences of symbols in documentation
	["@lsp.mod.modification"]        = { p.sy.member },     -- Variable references where the variable is assigned to
	["@lsp.mod.readonly"]            = { p.sy.member },     -- Readonly variables and member fields (constants)
	["@lsp.mod.static"]              = { p.sy.member },     -- Class members (static members)
	["@variable"]                    = { p.sy.variable },             -- various variable names
	["@variable.builtin"]            = "@variable",                   -- built-in variable names (e.g. this, self)
	["@variable.parameter"]          = { p.sy.parameter },            -- parameters of a function
	["@variable.parameter.builtin"]  = "@variable.parameter",         -- special parameters (e.g. _, it)
	["@variable.member"]             = { p.sy.member },               -- object and struct fields
	["@module"]                      = { p.sy.struct },               -- modules or namespaces
	["@module.builtin"]              = "@module",                     -- built-in modules or namespaces
	["@label"]                       = "Statement",                   -- GOTO and other labels (e.g. label: in C), including heredoc labels
	["@string.regexp"]               = { p.sy.special },              -- regular expressions
	["@string.escape"]               = { p.sy.special },              -- escape sequences
	["@string.special"]              = { p.sy.special },              -- other special strings (e.g. dates)
	["@string.special.symbol"]       = { p.sy.symbol },               -- symbols or atoms
	["@string.special.path"]         = { p.sy.special },              -- filenames
	["@string.special.url"]          = { p.sy.special, p.at.underline }, -- URIs (e.g. hyperlinks)
	["@character"]                   = { p.sy.constant },             -- character literals
	["@character.special"]           = { p.sy.special },              -- special characters (e.g. wildcards)
	["@boolean"]                     = { p.sy.member },               -- boolean literals
	["@number"]                      = "Number",                      -- numeric literals
	["@number.float"]                = "Number",                      -- floating-point number literals
	["@attribute"]                   = { p.sy.member },               -- attribute annotations (e.g. Python decorators, Rust lifetimes)
	["@attribute.builtin"]           = "@attribute",                  -- builtin annotations (e.g. @property in Python)
	["@property"]                    = { p.sy.member },               -- the key in key/value pairs
	["@function"]                    = { p.sy.functions },            -- function definitions
	["@function.builtin"]            = "@function",                   -- built-in functions
	["@function.call"]               = "@function",                   -- function calls
	["@function.macro"]              = { p.sy.construct },            -- preprocessor macros
	["@function.method"]             = "@function",                   -- method definitions
	["@function.method.call"]        = "@function",                   -- method calls
	["@constructor"]                 = { p.sy.construct },            -- constructor calls and definitions
	["@punctuation.delimiter"]       = { p.sy.special },              -- delimiters (e.g. ;, ., ,)
	["@punctuation.bracket"]         = { p.sy.special },              -- brackets (e.g. (), {}, [])
	["@punctuation.special"]         = { p.sy.special },              -- special symbols (e.g. {} in string interpolation)
	["@tag"]                         = { p.sy.parameter },            -- XML-style tag names (e.g. in XML, HTML, etc.)
	["@tag.builtin"]                 = "@tag",                        -- builtin tag names (e.g. HTML5 tags)
	["@tag.attribute"]               = "@tag",                        -- XML-style tag attributes
	["@tag.delimiter"]               = "@tag",                        -- XML-style tag delimiters

	Comment                          = { p.fg.comment },    -- any comment
	["@lsp.type.comment"]            = "Comment",           -- Tokens that represent a comment
	["@string.documentation"]        = { p.ui.doc },               -- string documenting code (e.g. Python docstrings)
	["@comment"]                     = { p.fg.comment },              -- line and block comments
	["@comment.error"]               = { p.sy.error, p.at.bold },     -- error-type comments (e.g. ERROR, FIXME, DEPRECATED)
	["@comment.warning"]             = { p.sy.warn, p.at.bold },      -- warning-type comments (e.g. WARNING, FIX, HACK)
	["@comment.todo"]                = { p.sy.todo, p.at.bold },      -- todo-type comments (e.g. TODO, WIP)
	["@comment.note"]                = { p.sy.note, p.at.bold },      -- note-type comments (e.g. NOTE, INFO, XXX)
	["@comment.documentation"]       = { p.ui.doc },               -- comments documenting code
	["@markup.strong"]               = { p.at.italic, p.at.bold },    -- bold text
	["@markup.italic"]               = { p.at.italic },               -- italic text
	["@markup.strikethrough"]        = { p.at.strikethrough },        -- struck-through text
	["@markup.underline"]            = { p.at.underline },            -- underlined text (only for literal underline markup!)
	["@markup.heading"]              = { p.at.bold },                 -- headings, titles (including markers)
	["@markup.heading.1"]            = { p.rb.rb1 },                  -- top-level heading
	["@markup.heading.2"]            = { p.rb.rb2 },                  -- section heading
	["@markup.heading.3"]            = { p.rb.rb3 },                  -- subsection heading
	["@markup.heading.4"]            = { p.rb.rb4 },                  -- and so on
	["@markup.heading.5"]            = { p.rb.rb5 },                  -- and so forth
	["@markup.heading.6"]            = { p.rb.rb6 },                  -- six levels ought to be enough for anybody
	["@markup.quote"]                = { p.bg.float },                -- block quotes
	["@markup.math"]                 = { p.bg.float },                -- math environments (e.g. $ ... $ in LaTeX)
	["@markup.link"]                 = { p.at.underline },            -- text references, footnotes, citations, etc.
	["@markup.link.label"]           = { p.at.underline },            -- link, reference descriptions
	["@markup.link.url"]             = { p.at.underline },            -- URL-style links
	["@markup.raw"]                  = { p.bg.float },                -- literal or verbatim text (e.g. inline code)
	["@markup.raw.block"]            = { p.bg.float },                -- literal or verbatim text as a stand-alone block
	["@markup.list"]                 = { p.ui.sign },                 -- list markers
	["@markup.list.checked"]         = { p.ui.select },               -- checked todo-style list markers
	["@markup.list.unchecked"]       = { p.ui.candidate },            -- unchecked todo-style list markers
	["@diff.plus"]                   = { p.df.add },                  -- added text (for diff files)
	["@diff.minus"]                  = { p.df.delete },               -- deleted text (for diff files)
	["@diff.delta"]                  = { p.df.change },               -- changed text (for diff files)
	SpecialComment                   = { p.at.italic },     -- special things inside a comment
	Delimiter                        = { p.sy.special },    -- character that needs attention
	Tag                              = { p.sy.special },    -- you can use CTRL-] on this
	Debug                            = { p.ui.warn },       -- debugging statements
	Underlined                       = { p.at.underline },  -- text that stands out, HTML links
	Ignore                           = { p.ui.nontext },    -- left blank, hidden  hl-Ignore
	Error                            = { p.di.error },      -- any erroneous construct
	Todo                             = { p.at.bold },       -- anything that needs extra attention; mostly the keywords , -- TODO FIXME and XXX
	Added                            = { p.df.add },        -- added line in a diff
	Changed                          = { p.df.change },     -- changed line in a diff
	Removed                          = { p.df.delete },     -- removed line in a diff

	["LspCodeLens"]                  = "NonText",
	["LspCodeLensSeparator"]         = "LspCodeLens",
	["LspInlayHint"]                 = "NonText",
	["LspReferenceRead"]             = "LspReferenceText",
	["LspReferenceText"]             = "Visual",
	["LspReferenceWrite"]            = "LspReferenceText",
	["LspSignatureActiveParameter"]  = "Visual",
	["@lsp"]                         = { p.at.clear },
}
