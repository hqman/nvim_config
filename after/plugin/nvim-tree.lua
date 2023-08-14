vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.termguicolors = true
vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')

require("nvim-tree").setup({
  --auto_close = true,
  view = {
    adaptive_size = true
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
  filters = {
        -- 不显示 .git 目录中的内容
        custom = {
            ".git/"
        },
        -- 显示 .gitignore
        exclude = {
            ".gitignore"
        },
        -- 不显示隐藏文件
        dotfiles = true
    },
    -- 以图标显示git 状态
    git = {
        enable = true
    }
})

