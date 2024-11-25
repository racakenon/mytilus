---@param palette Palette
---@return table<string,vim.api.keyset.highlight>
local function setup(palette)
	local p = palette
	return {
		Comment        = { p.fg.comment }, -- any comment
		Constant       = { p.sy.constant }, -- any constant
		String         = { p.sy.string }, -- a string constant: "this is a string"
		Character      = "Constant",   -- a character constant: 'c', '\n'
		Number         = "Constant",   -- a number constant: 234, 0xff
		Boolean        = { p.sy.member }, -- a boolean constant: TRUE, false
		Float          = "Constant",   -- a floating point constant: 2.3e10
		Identifier     = { p.sy.variable }, -- any variable name
		Function       = { p.sy.functions }, -- function name (also: methods for classes)
		Statement      = { p.sy.statement }, -- any statement
		Conditional    = "Statement",  -- if, then, else, endif, switch, etc.
		Repeat         = "Statement",  -- for, do, while, etc.
		Label          = "Statement",  -- case, default, etc.
		Operator       = { p.sy.operator }, -- "sizeof", "+", "*", etc.
		Keyword        = { p.sy.keyword }, -- any other keyword
		Exception      = "Statement",  -- try, catch, throw
		PreProc        = "Macro",      -- generic Preprocessor
		Include        = "Macro",      -- preprocessor #include
		Define         = "Macro",      -- preprocessor #define
		Macro          = { p.sy.macro }, -- same as Define
		PreCondit      = "Macro",      -- preprocessor #if, #else, #endif, etc.
		Type           = { p.sy.type }, -- int, long, char, etc.
		StorageClass   = { p.sy.modifier }, -- static, register, volatile, etc.
		Structure      = { p.sy.struct }, -- struct, union, enum, etc.
		Typedef        = "Keyword",    -- a typedef
		Special        = { p.sy.special }, -- any special symbol
		SpecialChar    = { p.sy.special }, -- special character in a constant
		Tag            = { p.sy.special }, -- you can use CTRL-] on this
		Delimiter      = { p.sy.special }, -- character that needs attention
		SpecialComment = { p.at.italic }, -- special things inside a comment
		Debug          = { p.ui.note }, -- debugging statements
		Underlined     = { p.at.underline }, -- text that stands out, HTML links
		Ignore         = { p.ui.nontext }, -- left blank, hidden  hl-Ignore
		Error          = { p.di.error }, -- any erroneous construct
		Todo           = { p.at.bold }, -- anything that needs extra attention; mostly the keywords , -- TODO FIXME and XXX
		Added          = { p.df.add }, -- added line in a diff
		Changed        = { p.df.change }, -- changed line in a diff
		Removed        = { p.df.delete }, -- removed line in a diff
	}
end

return {
	setup = setup,
}
