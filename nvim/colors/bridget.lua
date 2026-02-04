-- bridget.lua
-- Save to ~/.config/nvim/colors/bridget.lua
-- Then use with: colorscheme bridget

vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end
vim.g.colors_name = 'bridget'

local hi = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Palette
local chestnut = '#A44C3F'
local dun = '#E4C8A9'
local umber = '#735C49'
local raisin_black = '#2B2622'
local air_blue = '#7A9CB7'
local saffron = '#F4C94C'

-- Main highlight groups
hi('Normal', { fg = dun, bg = raisin_black })
hi('Comment', { fg = umber })
hi('Search', { fg = dun, bg = chestnut })
hi('Todo', { fg = saffron, bg = raisin_black, underline = true })
hi('Visual', { fg = dun, bg = umber })
hi('NonText', { fg = umber })

-- Editor
hi('NormalFloat', { fg = dun, bg = '#1f1b18' })
hi('Cursor', { fg = raisin_black, bg = dun })
hi('CursorLine', { bg = '#363130' })
hi('CursorLineNr', { fg = dun, bg = '#363130' })
hi('LineNr', { fg = umber })
hi('SignColumn', { bg = raisin_black })
hi('VertSplit', { fg = umber, bg = raisin_black })
hi('StatusLine', { fg = dun, bg = '#363130' })
hi('StatusLineNC', { fg = umber, bg = '#1f1b18' })
hi('Pmenu', { fg = dun, bg = '#1f1b18' })
hi('PmenuSel', { fg = dun, bg = umber })
hi('IncSearch', { fg = raisin_black, bg = saffron })
hi('MatchParen', { fg = saffron, bold = true })

-- Syntax
hi('Constant', { fg = air_blue })
hi('String', { fg = air_blue })
hi('Character', { fg = air_blue })
hi('Number', { fg = air_blue })
hi('Boolean', { fg = air_blue })
hi('Float', { fg = air_blue })

hi('Identifier', { fg = dun })
hi('Function', { fg = dun })

hi('Statement', { fg = chestnut, bold = true })
hi('Conditional', { fg = chestnut, bold = true })
hi('Repeat', { fg = chestnut, bold = true })
hi('Label', { fg = chestnut, bold = true })
hi('Operator', { fg = dun })
hi('Keyword', { fg = chestnut, bold = true })
hi('Exception', { fg = chestnut, bold = true })

hi('PreProc', { fg = air_blue })
hi('Include', { fg = air_blue })
hi('Define', { fg = air_blue })
hi('Macro', { fg = air_blue })
hi('PreCondit', { fg = air_blue })

hi('Type', { fg = chestnut, bold = true })
hi('StorageClass', { fg = chestnut, bold = true })
hi('Structure', { fg = chestnut, bold = true })
hi('Typedef', { fg = chestnut, bold = true })

hi('Special', { fg = chestnut })
hi('SpecialChar', { fg = chestnut })
hi('Tag', { fg = chestnut })
hi('Delimiter', { fg = umber })
hi('SpecialComment', { fg = umber })
hi('Debug', { fg = chestnut })

hi('Underlined', { fg = air_blue, underline = true })
hi('Error', { fg = chestnut })

-- Treesitter
hi('@variable', { fg = dun })
hi('@variable.builtin', { fg = chestnut })
hi('@variable.parameter', { fg = dun })
hi('@constant', { fg = air_blue })
hi('@constant.builtin', { fg = air_blue })
hi('@constant.macro', { fg = dun })
hi('@function', { fg = dun })
hi('@function.builtin', { fg = dun })
hi('@function.call', { fg = dun })
hi('@function.macro', { fg = dun })
hi('@keyword', { fg = chestnut, bold = true })
hi('@keyword.return', { fg = chestnut, bold = true })
hi('@keyword.operator', { fg = chestnut, bold = true })
hi('@keyword.function', { fg = chestnut, bold = true })
hi('@keyword.conditional', { fg = chestnut, bold = true })
hi('@keyword.repeat', { fg = chestnut, bold = true })
hi('@keyword.type', { fg = chestnut, bold = true })
hi('@keyword.modifier', { fg = chestnut, bold = true })
hi('@keyword.directive', { fg = air_blue })
hi('@keyword.directive.define', { fg = air_blue })
hi('@type', { fg = chestnut, bold = true })
hi('@type.builtin', { fg = chestnut, bold = true })
hi('@type.definition', { fg = chestnut, bold = true })
hi('@property', { fg = dun })
hi('@field', { fg = dun })
hi('@parameter', { fg = dun })
hi('@punctuation.bracket', { fg = umber })
hi('@punctuation.delimiter', { fg = umber })
hi('@punctuation.special', { fg = chestnut })
hi('@string', { fg = air_blue })
hi('@string.escape', { fg = chestnut })
hi('@comment', { fg = umber })
hi('@operator', { fg = dun })
hi('@number', { fg = air_blue })
hi('@boolean', { fg = air_blue })
hi('@include', { fg = air_blue })
hi('@define', { fg = air_blue })
hi('@macro', { fg = dun })

-- LSP semantic tokens
hi('@lsp.type.macro', { fg = dun })
hi('@lsp.type.enum', { fg = chestnut, bold = true })
hi('@lsp.type.enumMember', { fg = air_blue })
hi('@lsp.type.type', { fg = chestnut, bold = true })
hi('@lsp.type.class', { fg = chestnut, bold = true })
hi('@lsp.type.struct', { fg = chestnut, bold = true })
hi('@lsp.type.parameter', { fg = dun })
hi('@lsp.type.variable', { fg = dun })
hi('@lsp.type.function', { fg = dun })
hi('@lsp.type.method', { fg = dun })
hi('@lsp.type.keyword', { fg = chestnut, bold = true })

-- LSP diagnostics
hi('DiagnosticError', { fg = chestnut })
hi('DiagnosticWarn', { fg = saffron })
hi('DiagnosticInfo', { fg = air_blue })
hi('DiagnosticHint', { fg = umber })
hi('DiagnosticSignError', { fg = chestnut })
hi('DiagnosticSignWarn', { fg = saffron })
hi('DiagnosticSignInfo', { fg = air_blue })
hi('DiagnosticSignHint', { fg = umber })

-- Git signs
hi('DiffAdd', { fg = air_blue })
hi('DiffChange', { fg = saffron })
hi('DiffDelete', { fg = chestnut })
