---@param palette Palette
---@return table<string,vim.api.keyset.highlight|string>
local function setup(palette)
	local p = palette
	return {
		["RainbowDelimiterRed"]    = { p.rb.rb1 },
		["RainbowDelimiterYellow"] = { p.rb.rb2 },
		["RainbowDelimiterBlue"]   = { p.rb.rb2 },
		["RainbowDelimiterOrange"] = { p.rb.rb3 },
		["RainbowDelimiterGreen"]  = { p.rb.rb4 },
		["RainbowDelimiterViolet"] = { p.rb.rb5 },
		["RainbowDelimiterCyan"]   = { p.rb.rb6 },
	}
end

return {
	setup = setup,
}
