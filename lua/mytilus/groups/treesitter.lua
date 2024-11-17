---@param palette Palette
---@return table<string,vim.api.keyset.highlight|string>
local function setup(palette)
	local p = palette
	return {
		["@variable"]                    = { p.sy.variable },          -- various variable names
		["@variable.builtin"]            = "@variable",                -- built-in variable names (e.g. this, self)
		["@variable.parameter"]          = { p.sy.parameter },         -- parameters of a function
		["@variable.parameter.builtin"]  = "@variable.parameter",      -- special parameters (e.g. _, it)
		["@variable.member"]             = { p.sy.member },            -- object and struct fields

		["@constant"]                    = "Constant",                 -- constant identifiers

		["@constant.builtin"]            = "Constant",                 -- built-in constant values
		["@constant.macro"]              = "Constant",                 -- constants defined by the preprocessor
		["@module"]                      = { p.sy.struct },            -- modules or namespaces
		["@module.builtin"]              = "@module",                  -- built-in modules or namespaces

		["@label"]                       = "Statement",                -- GOTO and other labels (e.g. label: in C), including heredoc labels
		["@string"]                      = { p.sy.string },            -- string literals
		["@string.documentation"]        = { p.ui.doc },               -- string documenting code (e.g. Python docstrings)
		["@string.regexp"]               = { p.sy.special },           -- regular expressions
		["@string.escape"]               = { p.sy.special },           -- escape sequences
		["@string.special"]              = { p.sy.special },           -- other special strings (e.g. dates)
		["@string.special.symbol"]       = { p.sy.symbol },            -- symbols or atoms
		["@string.special.path"]         = { p.sy.special },           -- filenames
		["@string.special.url"]          = { p.sy.special, p.at.underline }, -- URIs (e.g. hyperlinks)
		["@character"]                   = { p.sy.constant },          -- character literals
		["@character.special"]           = { p.sy.special },           -- special characters (e.g. wildcards)
		["@boolean"]                     = { p.sy.member },            -- boolean literals
		["@number"]                      = "Number",                   -- numeric literals
		["@number.float"]                = "Number",                   -- floating-point number literals
		["@type"]                        = "Type",                     -- type or class definitions and annotations
		["@type.builtin"]                = "Type",                     -- built-in types
		["@type.definition"]             = { p.sy.construct },         -- identifiers in type definitions (e.g. typedef <type> <identifier> in C)
		["@attribute"]                   = { p.sy.member },            -- attribute annotations (e.g. Python decorators, Rust lifetimes)
		["@attribute.builtin"]           = "@attribute",               -- builtin annotations (e.g. @property in Python)
		["@property"]                    = { p.sy.member },            -- the key in key/value pairs
		["@function"]                    = { p.sy.functions },         -- function definitions
		["@function.builtin"]            = "@function",                -- built-in functions
		["@function.call"]               = "@function",                -- function calls
		["@function.macro"]              = { p.sy.construct },         -- preprocessor macros
		["@function.method"]             = "@function",                -- method definitions
		["@function.method.call"]        = "@function",                -- method calls
		["@constructor"]                 = { p.sy.construct },         -- constructor calls and definitions
		["@operator"]                    = "Operator",                 -- symbolic operators (e.g. +, *)
		["@keyword"]                     = "Keyword",                  -- keywords not fitting into specific categories
		["@keyword.coroutine"]           = "Keyword",                  -- keywords related to coroutines (e.g. go in Go, async/await in Python)
		["@keyword.function"]            = "Keyword",                  -- keywords that define a function (e.g. func in Go, def in Python)
		["@keyword.operator"]            = "Operator",                 -- operators that are English words (e.g. and, or)
		["@keyword.import"]              = "Keyword",                  -- keywords for including or exporting modules (e.g. import, from in Python)
		["@keyword.type"]                = "Keyword",                  -- keywords describing namespaces and composite types (e.g. struct, enum)
		["@keyword.modifier"]            = "Keyword",                  -- keywords modifying other constructs (e.g. const, static, public)
		["@keyword.repeat"]              = "Keyword",                  -- keywords related to loops (e.g. for, while)
		["@keyword.return"]              = "Keyword",                  -- keywords like return and yield
		["@keyword.debug"]               = "Keyword",                  -- keywords related to debugging
		["@keyword.exception"]           = "Keyword",                  -- keywords related to exceptions (e.g. throw, catch)
		["@keyword.conditional"]         = "Keyword",                  -- keywords related to conditionals (e.g. if, else)
		["@keyword.conditional.ternary"] = "Keyword",                  -- ternary operator (e.g. ?, :)
		["@keyword.directive"]           = { p.sy.construct },         -- various preprocessor directives and shebangs
		["@keyword.directive.define"]    = { p.sy.construct },         -- preprocessor definition directives
		["@punctuation.delimiter"]       = { p.sy.special },           -- delimiters (e.g. ;, ., ,)
		["@punctuation.bracket"]         = { p.sy.special },           -- brackets (e.g. (), {}, [])
		["@punctuation.special"]         = { p.sy.special },           -- special symbols (e.g. {} in string interpolation)
		["@comment"]                     = { p.fg.comment },           -- line and block comments
		["@comment.documentation"]       = { p.ui.doc },               -- comments documenting code
		["@comment.error"]               = { p.ui.important, p.at.bold }, -- error-type comments (e.g. ERROR, FIXME, DEPRECATED)
		["@comment.warning"]             = { p.ui.warning, p.at.bold }, -- warning-type comments (e.g. WARNING, FIX, HACK)
		["@comment.todo"]                = { p.ui.info, p.at.bold },   -- todo-type comments (e.g. TODO, WIP)
		["@comment.note"]                = { p.ui.hint, p.at.bold },   -- note-type comments (e.g. NOTE, INFO, XXX)
		["@markup.strong"]               = { p.at.italic, p.at.bold },            -- bold text
		["@markup.italic"]               = { p.at.italic },            -- italic text
		["@markup.strikethrough"]        = { p.at.strikethrough },     -- struck-through text
		["@markup.underline"]            = { p.at.underline },         -- underlined text (only for literal underline markup!)
		["@markup.heading"]              = { p.at.bold },              -- headings, titles (including markers)
		["@markup.heading.1"]            = { p.rb.rb1 },               -- top-level heading
		["@markup.heading.2"]            = { p.rb.rb2 },               -- section heading
		["@markup.heading.3"]            = { p.rb.rb3 },               -- subsection heading
		["@markup.heading.4"]            = { p.rb.rb4 },               -- and so on
		["@markup.heading.5"]            = { p.rb.rb5 },               -- and so forth
		["@markup.heading.6"]            = { p.rb.rb6 },               -- six levels ought to be enough for anybody
		["@markup.quote"]                = { p.bg.float },             -- block quotes
		["@markup.math"]                 = { p.bg.float },             -- math environments (e.g. $ ... $ in LaTeX)
		["@markup.link"]                 = { p.at.underline },         -- text references, footnotes, citations, etc.
		["@markup.link.label"]           = { p.at.underline },         -- link, reference descriptions
		["@markup.link.url"]             = { p.at.underline },         -- URL-style links
		["@markup.raw"]                  = { p.bg.float },             -- literal or verbatim text (e.g. inline code)
		["@markup.raw.block"]            = { p.bg.float },             -- literal or verbatim text as a stand-alone block
		["@markup.list"]                 = { p.ui.sign },              -- list markers
		["@markup.list.checked"]         = { p.ui.select },            -- checked todo-style list markers
		["@markup.list.unchecked"]       = { p.ui.candidate },         -- unchecked todo-style list markers
		["@diff.plus"]                   = { p.df.add },               -- added text (for diff files)
		["@diff.minus"]                  = { p.df.delete },            -- deleted text (for diff files)
		["@diff.delta"]                  = { p.df.change },            -- changed text (for diff files)
		["@tag"]                         = { p.sy.parameter },         -- XML-style tag names (e.g. in XML, HTML, etc.)
		["@tag.builtin"]                 = "@tag",                     -- builtin tag names (e.g. HTML5 tags)
		["@tag.attribute"]               = "@tag",                     -- XML-style tag attributes

		["@tag.delimiter"]               = "@tag",                     -- XML-style tag delimiters
	}
end

return {
	setup = setup,
}
