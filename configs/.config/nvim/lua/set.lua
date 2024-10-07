-- ~/.config/nvim/lua/set.lua

-- Leader Key Configuration
vim.g.mapleader = " "

vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 200
vim.opt.spelllang = "en_us"
vim.opt.spell = true
vim.opt.conceallevel = 1 -- obsidian.nvim

vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*",
    callback = function()
        vim.cmd("highlight Visual guibg=#26403D")
    end,
})
vim.cmd([[
  augroup ColorColumn
    autocmd!
    autocmd BufEnter * if &filetype != 'gitcommit' && &filetype != 'markdown' && &filetype != 'netrw' && &filetype != '' && &modifiable == 1 | setlocal colorcolumn=80 | else | setlocal colorcolumn=0| endif
  augroup END
]])

vim.cmd([[
  augroup CommitSpell
    autocmd!
    autocmd Filetype NeogitCommitMessage,gitcommit set colorcolumn=50
    autocmd Filetype NeogitCommitMessage,gitcommit set spell
  augroup END
]])

vim.cmd([[
  augroup CommentColor
    autocmd!
    autocmd BufEnter * highlight Comment guifg=#9f9f9f
  augroup END
]])

vim.api.nvim_create_autocmd("DiagnosticChanged", {
    callback = function()
        vim.diagnostic.setqflist({ open = false })
    end,
})
