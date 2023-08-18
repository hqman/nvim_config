require("hqman")
-- require('lsp/setup')
-- 设置当前行 高亮
vim.wo.cursorline = true
vim.g.shiftround = true
vim.wo.number = true
vim.wo.colorcolumn = "120"

vim.cmd [[filetype plugin on]]
require'lspconfig'.pyright.setup{}
