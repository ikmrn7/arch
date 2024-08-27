-- ~/.config/nvim/lua/set.lua

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

vim.opt.updatetime = 50

vim.cmd [[
  augroup ColorColumn
    autocmd!
    autocmd BufEnter * if &buftype == '' && &filetype != 'alpha' && &filetype != 'TelescopePrompt' && &filetype != 'netrw' | setlocal colorcolumn=80 | else | setlocal colorcolumn=0 | endif
  augroup END
]]
