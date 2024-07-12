-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.nu = true
vim.opt.rnu = true

vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.undofile = true

--vim.opt.smarttab = true
-- vim.opt.cindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 50

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.termguicolors = true
vim.opt.colorcolumn = ''

vim.opt.clipboard:append('unnamedplus')

vim.opt.conceallevel = 1

-- Highlight settings
vim.cmd('highlight Visual cterm=NONE gui=NONE guibg=#311b92')
