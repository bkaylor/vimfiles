-- whitebox.lua
-- Save to ~/.config/nvim/colors/whitebox.lua
-- Then use with: colorscheme whitebox

vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end
vim.g.colors_name = 'whitebox'

local hi = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Colors
local bg = '#24202a'
local fg = '#f3f0f7'
local keyword = '#63ace8'
local comment = '#827e88'
local type = '#60d164'
local number = '#a03c52'
local macro = fg

-- Editor
hi('Normal', { fg = fg, bg = bg })
hi('NormalFloat', { fg = fg, bg = '#1a171f' })
hi('Cursor', { fg = bg, bg = fg })
hi('CursorLine', { bg = '#2e2a34' })
hi('CursorLineNr', { fg = fg, bg = '#2e2a34' })
hi('LineNr', { fg = '#4a4650' })
hi('SignColumn', { bg = bg })
hi('VertSplit', { fg = '#3a363f', bg = bg })
hi('StatusLine', { fg = fg, bg = '#2e2a34' })
hi('StatusLineNC', { fg = comment, bg = '#1a171f' })
hi('Pmenu', { fg = fg, bg = '#1a171f' })
hi('PmenuSel', { fg = fg, bg = '#3a363f' })
hi('Visual', { bg = '#3a3640' })
hi('Search', { fg = bg, bg = keyword })
hi('IncSearch', { fg = bg, bg = fg })
hi('MatchParen', { fg = fg, bold = true })

-- Syntax
hi('Comment', { fg = comment, italic = true })
hi('Constant', { fg = number })
hi('String', { fg = fg })
hi('Character', { fg = number })
hi('Number', { fg = number })
hi('Boolean', { fg = number })
hi('Float', { fg = number })

hi('Identifier', { fg = fg })
hi('Function', { fg = fg })

hi('Statement', { fg = keyword })
hi('Conditional', { fg = keyword })
hi('Repeat', { fg = keyword })
hi('Label', { fg = keyword })
hi('Operator', { fg = fg })
hi('Keyword', { fg = keyword })
hi('Exception', { fg = keyword })

hi('PreProc', { fg = keyword })
hi('Include', { fg = keyword })
hi('Define', { fg = keyword })
hi('Macro', { fg = fg })
hi('PreCondit', { fg = keyword })
hi('cDefine', { fg = keyword })

hi('Type', { fg = type })
hi('StorageClass', { fg = keyword })
hi('Structure', { fg = keyword })
hi('Typedef', { fg = keyword })

hi('Special', { fg = fg })
hi('SpecialChar', { fg = number })
hi('Tag', { fg = keyword })
hi('Delimiter', { fg = fg })
hi('SpecialComment', { fg = comment })
hi('Debug', { fg = number })

hi('Underlined', { fg = keyword, underline = true })
hi('Error', { fg = number })
hi('Todo', { fg = bg, bg = type, bold = true })

-- Treesitter
hi('@variable', { fg = fg })
hi('@variable.builtin', { fg = keyword })
hi('@variable.parameter', { fg = fg })
hi('@constant', { fg = number })
hi('@constant.builtin', { fg = number })
hi('@constant.macro', { fg = macro })
hi('@function', { fg = fg })
hi('@function.builtin', { fg = fg })
hi('@function.call', { fg = fg })
hi('@function.macro', { fg = macro })
hi('@keyword', { fg = keyword })
hi('@keyword.return', { fg = keyword })
hi('@keyword.operator', { fg = keyword })
hi('@keyword.function', { fg = keyword })
hi('@keyword.conditional', { fg = keyword })
hi('@keyword.repeat', { fg = keyword })
hi('@keyword.type', { fg = keyword })
hi('@keyword.modifier', { fg = keyword })
hi('@type', { fg = type })
hi('@type.builtin', { fg = type })
hi('@type.definition', { fg = type })
hi('@property', { fg = fg })
hi('@field', { fg = fg })
hi('@parameter', { fg = fg })
hi('@punctuation.bracket', { fg = fg })
hi('@punctuation.delimiter', { fg = fg })
hi('@punctuation.special', { fg = fg })
hi('@string', { fg = fg })
hi('@string.escape', { fg = number })
hi('@comment', { fg = comment, italic = true })
hi('@operator', { fg = fg })
hi('@number', { fg = number })
hi('@boolean', { fg = number })
hi('@include', { fg = keyword })
hi('@define', { fg = keyword })
hi('@macro', { fg = macro })
hi('@keyword.directive', { fg = keyword })
hi('@keyword.directive.define', { fg = keyword })
hi('@constant.macro', { fg = macro })
hi('@function.macro', { fg = macro })

-- LSP semantic tokens
hi('@lsp.typemod.macro.definition', { fg = keyword })
hi('@lsp.type.macro', { fg = macro })
hi('@lsp.type.enum', { fg = type })
hi('@lsp.type.enumMember', { fg = number })
hi('@lsp.type.type', { fg = type })
hi('@lsp.type.class', { fg = type })
hi('@lsp.type.struct', { fg = type })
hi('@lsp.type.parameter', { fg = fg })
hi('@lsp.type.variable', { fg = fg })
hi('@lsp.type.function', { fg = fg })
hi('@lsp.type.method', { fg = fg })
hi('@lsp.type.keyword', { fg = keyword })

-- LSP diagnostics
hi('DiagnosticError', { fg = number })
hi('DiagnosticWarn', { fg = macro })
hi('DiagnosticInfo', { fg = keyword })
hi('DiagnosticHint', { fg = comment })
hi('DiagnosticSignError', { fg = number })
hi('DiagnosticSignWarn', { fg = macro })
hi('DiagnosticSignInfo', { fg = keyword })
hi('DiagnosticSignHint', { fg = comment })

-- Git signs
hi('DiffAdd', { fg = type })
hi('DiffChange', { fg = keyword })
hi('DiffDelete', { fg = number })
