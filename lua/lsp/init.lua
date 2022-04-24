

require 'lsp.comp'

local ft = vim.fn.expand('%:e')

local possibles = { 'py', 'lua', 'vim', 'c', 'cpp' }
local state = false


for key, value in pairs(possibles) do
	-- local occur = false
	print( value, ft )
	print(type(value), type(ft))
	if value == 'ft' then
		state = true
		print('worked')
	end
end

if state then
	print('worked')
	ft = ft .. 'lsp'
	local ft_extended = 'lsp.settings.' .. ft
	require(ft_extended)
end

-- if ft in ['py', 'lua', 'c'] then
-- blablabla
-- else
-- pass


-- print('ft =', ft)
-- ft = ft .. 'lsp'
-- print('filetype =', ft)

-- local ft_extended = 'lsp.settings.' .. ft
-- print('blub', ft2) --prints: lsp.pylsp

-- require(ft_extended)
