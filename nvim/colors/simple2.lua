-- simple2.lua
-- Save to ~/.config/nvim/colors/simple2.lua
-- Then use with: colorscheme simple2

vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end
vim.g.colors_name = 'simple2'

vim.opt.hlsearch = false

local hi = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Palette
local normalfg = '#EFE6DD'
local normalbg = '#231F20'
local commentfg = '#FBFF47'
local todofg = '#B5351E'
local visualbg = '#2770DD'

-- Main highlight groups
hi('Normal', { fg = normalfg, bg = normalbg })
hi('Comment', { fg = commentfg })
hi('Search', { fg = normalbg, bg = normalfg })
hi('Todo', { fg = todofg, underline = true })
hi('Visual', { bg = visualbg })
hi('NonText', { fg = commentfg })

-- All syntax groups inherit from Normal (no special color)
hi('Constant', { link = 'Normal' })
hi('String', { link = 'Normal' })
hi('Character', { link = 'Normal' })
hi('Number', { link = 'Normal' })
hi('Boolean', { link = 'Normal' })
hi('Float', { link = 'Normal' })
hi('Identifier', { link = 'Normal' })
hi('Function', { link = 'Normal' })
hi('Statement', { link = 'Normal' })
hi('Conditional', { link = 'Normal' })
hi('Repeat', { link = 'Normal' })
hi('Label', { link = 'Normal' })
hi('Operator', { link = 'Normal' })
hi('Keyword', { link = 'Normal' })
hi('Exception', { link = 'Normal' })
hi('PreProc', { link = 'Normal' })
hi('Include', { link = 'Normal' })
hi('Define', { link = 'Normal' })
hi('Macro', { link = 'Normal' })
hi('PreCondit', { link = 'Normal' })
hi('Type', { link = 'Normal' })
hi('StorageClass', { link = 'Normal' })
hi('Structure', { link = 'Normal' })
hi('Typedef', { link = 'Normal' })
hi('Special', { link = 'Normal' })
hi('SpecialChar', { link = 'Normal' })
hi('Tag', { link = 'Normal' })
hi('Delimiter', { link = 'Normal' })
hi('SpecialComment', { link = 'Normal' })
hi('Debug', { link = 'Normal' })

-- Editor
hi('NormalFloat', { fg = normalfg, bg = '#1a1718' })
hi('Cursor', { fg = normalbg, bg = normalfg })
hi('CursorLine', { bg = '#2d292a' })
hi('CursorLineNr', { fg = normalfg, bg = '#2d292a' })
hi('LineNr', { fg = '#5a5556' })
hi('SignColumn', { bg = normalbg })
hi('VertSplit', { fg = '#5a5556', bg = normalbg })
hi('StatusLine', { fg = normalfg, bg = '#2d292a' })
hi('StatusLineNC', { fg = '#5a5556', bg = '#1a1718' })
hi('Pmenu', { fg = normalfg, bg = '#1a1718' })
hi('PmenuSel', { fg = normalfg, bg = visualbg })
hi('IncSearch', { fg = normalbg, bg = normalfg })
hi('MatchParen', { fg = commentfg, bold = true })

-- Treesitter (all default to normal)
hi('@variable', { link = 'Normal' })
hi('@variable.builtin', { link = 'Normal' })
hi('@variable.parameter', { link = 'Normal' })
hi('@constant', { link = 'Normal' })
hi('@constant.builtin', { link = 'Normal' })
hi('@constant.macro', { link = 'Normal' })
hi('@function', { link = 'Normal' })
hi('@function.builtin', { link = 'Normal' })
hi('@function.call', { link = 'Normal' })
hi('@function.macro', { link = 'Normal' })
hi('@keyword', { link = 'Normal' })
hi('@keyword.return', { link = 'Normal' })
hi('@keyword.operator', { link = 'Normal' })
hi('@keyword.function', { link = 'Normal' })
hi('@keyword.conditional', { link = 'Normal' })
hi('@keyword.repeat', { link = 'Normal' })
hi('@keyword.type', { link = 'Normal' })
hi('@keyword.modifier', { link = 'Normal' })
hi('@keyword.directive', { link = 'Normal' })
hi('@keyword.directive.define', { link = 'Normal' })
hi('@type', { link = 'Normal' })
hi('@type.builtin', { link = 'Normal' })
hi('@type.definition', { link = 'Normal' })
hi('@property', { link = 'Normal' })
hi('@field', { link = 'Normal' })
hi('@parameter', { link = 'Normal' })
hi('@punctuation.bracket', { link = 'Normal' })
hi('@punctuation.delimiter', { link = 'Normal' })
hi('@punctuation.special', { link = 'Normal' })
hi('@string', { link = 'Normal' })
hi('@string.escape', { link = 'Normal' })
hi('@comment', { fg = commentfg })
hi('@operator', { link = 'Normal' })
hi('@number', { link = 'Normal' })
hi('@boolean', { link = 'Normal' })
hi('@include', { link = 'Normal' })
hi('@define', { link = 'Normal' })
hi('@macro', { link = 'Normal' })

-- LSP semantic tokens (all default)
hi('@lsp.type.macro', { link = 'Normal' })
hi('@lsp.type.enum', { link = 'Normal' })
hi('@lsp.type.enumMember', { link = 'Normal' })
hi('@lsp.type.type', { link = 'Normal' })
hi('@lsp.type.class', { link = 'Normal' })
hi('@lsp.type.struct', { link = 'Normal' })
hi('@lsp.type.parameter', { link = 'Normal' })
hi('@lsp.type.variable', { link = 'Normal' })
hi('@lsp.type.function', { link = 'Normal' })
hi('@lsp.type.method', { link = 'Normal' })
hi('@lsp.type.keyword', { link = 'Normal' })
hi('@lsp.type.comment', { fg = commentfg })

-- LSP diagnostics
hi('DiagnosticError', { fg = todofg })
hi('DiagnosticWarn', { fg = commentfg })
hi('DiagnosticInfo', { fg = normalfg })
hi('DiagnosticHint', { fg = '#5a5556' })
hi('DiagnosticSignError', { fg = todofg })
hi('DiagnosticSignWarn', { fg = commentfg })
hi('DiagnosticSignInfo', { fg = normalfg })
hi('DiagnosticSignHint', { fg = '#5a5556' })

-- Git signs
hi('DiffAdd', { fg = commentfg })
hi('DiffChange', { fg = visualbg })
hi('DiffDelete', { fg = todofg })
