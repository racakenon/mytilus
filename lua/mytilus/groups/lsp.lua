---@param palette Palette
---@return table<string,vim.api.keyset.highlight|string>
local function setup(palette)
	local p = palette
	return {
		["@lsp"]                        = { p.at.clear },
		["@lsp.type.class"]             = { p.sy.struct },  -- Identifiers that declare or reference a class type
		["@lsp.type.comment"]           = "Comment",        -- Tokens that represent a comment
		["@lsp.type.decorator"]         = { p.sy.construct }, -- Identifiers that declare or reference decorators and annotations
		["@lsp.type.enum"]              = { p.sy.construct }, -- Identifiers that declare or reference an enumeration type
		["@lsp.type.enumMember"]        = { p.sy.member },  -- Identifiers that declare or reference an enumeration property, constant, or member
		["@lsp.type.event"]             = { p.sy.special }, -- Identifiers that declare an event property
		["@lsp.type.function"]          = "Function",       -- Identifiers that declare a function
		["@lsp.type.interface"]         = { p.sy.construct }, -- Identifiers that declare or reference an interface type
		["@lsp.type.keyword"]           = "Keyword",        -- Tokens that represent a language keyword
		["@lsp.type.macro"]             = "Macro",          -- Identifiers that declare a macro
		["@lsp.type.method"]            = "Function",       -- Identifiers that declare a member function or method
		["@lsp.type.modifier"]          = { p.sy.modifier }, -- Tokens that represent a modifier
		["@lsp.type.namespace"]         = { p.sy.struct },  -- Identifiers that declare or reference a namespace, module, or package
		["@lsp.type.number"]            = "Number",         -- Tokens that represent a number literal
		["@lsp.type.operator"]          = "Operator",       -- Tokens that represent an operator
		["@lsp.type.parameter"]         = "Parameter",      -- Identifiers that declare or reference a function or method parameters
		["@lsp.type.property"]          = "Property",       -- Identifiers that declare or reference a member property, member field, or member variable
		["@lsp.type.regexp"]            = { p.sy.statement }, -- Tokens that represent a regular expression literal
		["@lsp.type.string"]            = "String",         -- Tokens that represent a string literal
		["@lsp.type.struct"]            = "Struct",         -- Identifiers that declare or reference a struct type
		["@lsp.type.type"]              = "Type",           -- Identifiers that declare or reference a type that is not covered above
		["@lsp.type.typeParameter"]     = { p.sy.member },  -- Identifiers that declare or reference a type parameter
		["@lsp.type.variable"]          = { p.sy.variable }, -- Identifiers that declare or reference a local or global variable
		["@lsp.mod.abstract"]           = { p.sy.construct }, -- Types and member functions that are abstract
		["@lsp.mod.async"]              = { p.sy.keyword }, -- Functions that are marked async
		["@lsp.mod.declaration"]        = { p.sy.construct }, -- Declarations of symbols
		["@lsp.mod.defaultLibrary"]     = { p.sy.constant }, -- Symbols that are part of the standard library
		["@lsp.mod.definition"]         = "Macro",          -- Definitions of symbols, for example, in header files
		["@lsp.mod.deprecated"]         = "DiagnosticDeprecated", -- Symbols that should no longer be used
		["@lsp.mod.documentation"]      = { p.sy.symbol },  -- Occurrences of symbols in documentation
		["@lsp.mod.modification"]       = { p.sy.member },  -- Variable references where the variable is assigned to
		["@lsp.mod.readonly"]           = { p.sy.member },  -- Readonly variables and member fields (constants)
		["@lsp.mod.static"]             = { p.sy.member },  -- Class members (static members)

		["LspCodeLens"]                 = "NonText",
		["LspCodeLensSeparator"]        = "LspCodeLens",
		["LspInlayHint"]                = "NonText",
		["LspReferenceRead"]            = "LspReferenceText",
		["LspReferenceText"]            = "Visual",
		["LspReferenceWrite"]           = "LspReferenceText",
		["LspSignatureActiveParameter"] = "Visual",
	}
end

return {
	setup = setup,
}
