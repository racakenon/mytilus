local l = {
	Comment                          = {}, -- any comment

	Constant                         = {}, -- any constant
	String                           = {}, -- a string constant: "this is a string"
	Character                        = {}, -- a character constant: 'c', '\n'
	Number                           = {}, -- a number constant: 234, 0xff
	Boolean                          = {}, -- a boolean constant: TRUE, false
	Float                            = {}, -- a floating point constant: 2.3e10

	Identifier                       = {}, -- any variable name
	Function                         = {}, -- function name (also: methods for classes)

	Statement                        = {}, -- any statement
	Conditional                      = {}, -- if, then, else, endif, switch, etc.
	Repeat                           = {}, -- for, do, while, etc.
	Label                            = {}, -- case, default, etc.
	Operator                         = {}, -- "sizeof", "+", "*", etc.
	Keyword                          = {}, -- any other keyword
	Exception                        = {}, -- try, catch, throw

	PreProc                          = {}, -- generic Preprocessor
	Include                          = {}, -- preprocessor #include
	Define                           = {}, -- preprocessor #define
	Macro                            = {}, -- same as Define
	PreCondit                        = {}, -- preprocessor #if, #else, #endif, etc.

	Type                             = {}, -- int, long, char, etc.
	StorageClass                     = {}, -- static, register, volatile, etc.
	Structure                        = {}, -- struct, union, enum, etc.
	Typedef                          = {}, -- a typedef

	Special                          = {}, -- any special symbol
	SpecialChar                      = {}, -- special character in a constant
	Tag                              = {}, -- you can use CTRL-] on this
	Delimiter                        = {}, -- character that needs attention
	SpecialComment                   = {}, -- special things inside a comment
	Debug                            = {}, -- debugging statements

	Underlined                       = {}, -- text that stands out, HTML links

	Ignore                           = {}, -- left blank, hidden  |hl-Ignore|

	Error                            = {}, -- any erroneous construct

	Todo                             = {}, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

	Added                            = {}, -- added line in a diff
	Changed                          = {}, -- changed line in a diff
	Removed                          = {}, -- removed line in a diff

	["@variable"]                    = {}, -- various variable names
	["@variable.builtin"]            = {}, -- built-in variable names (e.g. `this`, `self`)
	["@variable.parameter"]          = {}, -- parameters of a function
	["@variable.parameter.builtin"]  = {}, -- special parameters (e.g. `_`, `it`)
	["@variable.member"]             = {}, -- object and struct fields

	["@constant"]                    = {}, -- constant identifiers
	["@constant.builtin"]            = {}, -- built-in constant values
	["@constant.macro"]              = {}, -- constants defined by the preprocessor

	["@module"]                      = {}, -- modules or namespaces
	["@module.builtin"]              = {}, -- built-in modules or namespaces
	["@label"]                       = {}, -- `GOTO` and other labels (e.g. `label:` in C), including heredoc labels

	["@string"]                      = {}, -- string literals
	["@string.documentation"]        = {}, -- string documenting code (e.g. Python docstrings)
	["@string.regexp"]               = {}, -- regular expressions
	["@string.escape"]               = {}, -- escape sequences
	["@string.special"]              = {}, -- other special strings (e.g. dates)
	["@string.special.symbol"]       = {}, -- symbols or atoms
	["@string.special.path"]         = {}, -- filenames
	["@string.special.url"]          = {}, -- URIs (e.g. hyperlinks)

	["@character"]                   = {}, -- character literals
	["@character.special"]           = {}, -- special characters (e.g. wildcards)

	["@boolean"]                     = {}, -- boolean literals
	["@number"]                      = {}, -- numeric literals
	["@number.float"]                = {}, -- floating-point number literals

	["@type"]                        = {}, -- type or class definitions and annotations
	["@type.builtin"]                = {}, -- built-in types
	["@type.definition"]             = {}, -- identifiers in type definitions (e.g. `typedef <type> <identifier>` in C)

	["@attribute"]                   = {}, -- attribute annotations (e.g. Python decorators, Rust lifetimes)
	["@attribute.builtin"]           = {}, -- builtin annotations (e.g. `@property` in Python)
	["@property"]                    = {}, -- the key in key/value pairs

	["@function"]                    = {}, -- function definitions
	["@function.builtin"]            = {}, -- built-in functions
	["@function.call"]               = {}, -- function calls
	["@function.macro"]              = {}, -- preprocessor macros

	["@function.method"]             = {}, -- method definitions
	["@function.method.call"]        = {}, -- method calls

	["@constructor"]                 = {}, -- constructor calls and definitions
	["@operator"]                    = {}, -- symbolic operators (e.g. `+`, `*`)

	["@keyword"]                     = {}, -- keywords not fitting into specific categories
	["@keyword.coroutine"]           = {}, -- keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
	["@keyword.function"]            = {}, -- keywords that define a function (e.g. `func` in Go, `def` in Python)
	["@keyword.operator"]            = {}, -- operators that are English words (e.g. `and`, `or`)
	["@keyword.import"]              = {}, -- keywords for including modules (e.g. `import`, `from` in Python)
	["@keyword.type"]                = {}, -- keywords defining composite types (e.g. `struct`, `enum`)
	["@keyword.modifier"]            = {}, -- keywords defining type modifiers (e.g. `const`, `static`, `public`)
	["@keyword.repeat"]              = {}, -- keywords related to loops (e.g. `for`, `while`)
	["@keyword.return"]              = {}, -- keywords like `return` and `yield`
	["@keyword.debug"]               = {}, -- keywords related to debugging
	["@keyword.exception"]           = {}, -- keywords related to exceptions (e.g. `throw`, `catch`)

	["@keyword.conditional"]         = {}, -- keywords related to conditionals (e.g. `if`, `else`)
	["@keyword.conditional.ternary"] = {}, -- ternary operator (e.g. `?`, `:`)

	["@keyword.directive"]           = {}, -- various preprocessor directives and shebangs
	["@keyword.directive.define"]    = {}, -- preprocessor definition directives

	["@punctuation.delimiter"]       = {}, -- delimiters (e.g. `;`, `.`, `,`)
	["@punctuation.bracket"]         = {}, -- brackets (e.g. `()`, `{}`, `[]`)
	["@punctuation.special"]         = {}, -- special symbols (e.g. `{}` in string interpolation)

	["@comment"]                     = {}, -- line and block comments
	["@comment.documentation"]       = {}, -- comments documenting code

	["@comment.error"]               = {}, -- error-type comments (e.g. `ERROR`, `FIXME`, `DEPRECATED`)
	["@comment.warning"]             = {}, -- warning-type comments (e.g. `WARNING`, `FIX`, `HACK`)
	["@comment.todo"]                = {}, -- todo-type comments (e.g. `TODO`, `WIP`)
	["@comment.note"]                = {}, -- note-type comments (e.g. `NOTE`, `INFO`, `XXX`)

	["@markup.strong"]               = {}, -- bold text
	["@markup.italic"]               = {}, -- italic text
	["@markup.strikethrough"]        = {}, -- struck-through text
	["@markup.underline"]            = {}, -- underlined text (only for literal underline markup!)

	["@markup.heading"]              = {}, -- headings, titles (including markers)
	["@markup.heading.1"]            = {}, -- top-level heading
	["@markup.heading.2"]            = {}, -- section heading
	["@markup.heading.3"]            = {}, -- subsection heading
	["@markup.heading.4"]            = {}, -- and so on
	["@markup.heading.5"]            = {}, -- and so forth
	["@markup.heading.6"]            = {}, -- six levels ought to be enough for anybody

	["@markup.quote"]                = {}, -- block quotes
	["@markup.math"]                 = {}, -- math environments (e.g. `$ ... $` in LaTeX)

	["@markup.link"]                 = {}, -- text references, footnotes, citations, etc.
	["@markup.link.label"]           = {}, -- link, reference descriptions
	["@markup.link.url"]             = {}, -- URL-style links

	["@markup.raw"]                  = {}, -- literal or verbatim text (e.g. inline code)
	["@markup.raw.block"]            = {}, -- literal or verbatim text as a stand-alone block

	["@markup.list"]                 = {}, -- list markers
	["@markup.list.checked"]         = {}, -- checked todo-style list markers
	["@markup.list.unchecked"]       = {}, -- unchecked todo-style list markers

	["@diff.plus"]                   = {}, -- added text (for diff files)
	["@diff.minus"]                  = {}, -- deleted text (for diff files)
	["@diff.delta"]                  = {}, -- changed text (for diff files)

	["@tag"]                         = {}, -- XML-style tag names (e.g. in XML, HTML, etc.)
	["@tag.builtin"]                 = {}, -- XML-style tag names (e.g. HTML5 tags)
	["@tag.attribute"]               = {}, -- XML-style tag attributes
	["@tag.delimiter"]               = {}, -- XML-style tag delimiters

	LspReferenceText                 = {}, -- used for highlighting "text" references
	LspReferenceRead                 = {}, -- used for highlighting "read" references
	LspReferenceWrite                = {}, -- used for highlighting "write" references
	LspInlayHint                     = {}, -- used for highlighting inlay hints

	LspCodeLens                      = {}, -- Used to color the virtual text of the codelens.

	LspCodeLensSeparator             = {}, -- Used to color the separator between two or more code lenses.

	LspSignatureActiveParameter      = {}, -- Used to highlight the active parameter in the signature help.

	["@lsp.type.class"]              = {}, -- Identifiers that declare or reference a class type
	["@lsp.type.comment"]            = {}, -- Tokens that represent a comment
	["@lsp.type.decorator"]          = {}, -- Identifiers that declare or reference decorators and annotations
	["@lsp.type.enum"]               = {}, -- Identifiers that declare or reference an enumeration type
	["@lsp.type.enumMember"]         = {}, -- Identifiers that declare or reference an enumeration property, constant, or member
	["@lsp.type.event"]              = {}, -- Identifiers that declare an event property
	["@lsp.type.function"]           = {}, -- Identifiers that declare a function
	["@lsp.type.interface"]          = {}, -- Identifiers that declare or reference an interface type
	["@lsp.type.keyword"]            = {}, -- Tokens that represent a language keyword
	["@lsp.type.macro"]              = {}, -- Identifiers that declare a macro
	["@lsp.type.method"]             = {}, -- Identifiers that declare a member function or method
	["@lsp.type.modifier"]           = {}, -- Tokens that represent a modifier
	["@lsp.type.namespace"]          = {}, -- Identifiers that declare or reference a namespace, module, or package
	["@lsp.type.number"]             = {}, -- Tokens that represent a number literal
	["@lsp.type.operator"]           = {}, -- Tokens that represent an operator
	["@lsp.type.parameter"]          = {}, -- Identifiers that declare or reference a function or method parameters
	["@lsp.type.property"]           = {}, -- Identifiers that declare or reference a member property, member field, or member variable
	["@lsp.type.regexp"]             = {}, -- Tokens that represent a regular expression literal
	["@lsp.type.string"]             = {}, -- Tokens that represent a string literal
	["@lsp.type.struct"]             = {}, -- Identifiers that declare or reference a struct type
	["@lsp.type.type"]               = {}, -- Identifiers that declare or reference a type that is not covered above
	["@lsp.type.typeParameter"]      = {}, -- Identifiers that declare or reference a type parameter
	["@lsp.type.variable"]           = {}, -- Identifiers that declare or reference a local or global variable

	["@lsp.mod.abstract"]            = {}, -- Types and member functions that are abstract
	["@lsp.mod.async"]               = {}, -- Functions that are marked async
	["@lsp.mod.declaration"]         = {}, -- Declarations of symbols
	["@lsp.mod.defaultLibrary"]      = {}, -- Symbols that are part of the standard library
	["@lsp.mod.definition"]          = {}, -- Definitions of symbols, for example, in header files
	["@lsp.mod.deprecated"]          = {}, -- Symbols that should no longer be used
	["@lsp.mod.documentation"]       = {}, -- Occurrences of symbols in documentation
	["@lsp.mod.modification"]        = {}, -- Variable references where the variable is assigned to
	["@lsp.mod.readonly"]            = {}, -- Readonly variables and member fields (constants)
	["@lsp.mod.static"]              = {}, -- Class members (static members)
}
