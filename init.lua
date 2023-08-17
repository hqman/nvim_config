require("hqman")
-- require('lsp/setup')
-- 设置当前行 高亮
vim.wo.cursorline = true
vim.g.shiftround = true
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.tabstop = 4
vim.wo.number = true
vim.wo.colorcolumn = "120"

require'lspconfig'.pyright.setup{}
