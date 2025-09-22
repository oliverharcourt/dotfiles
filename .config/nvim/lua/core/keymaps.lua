vim.g.mapleader=' '
vim.g.maplocalleader=' '

-- use spaces for tabs
vim.opt.tabstop=2
vim.opt.softtabstop=-1
vim.opt.expandtab=true

-- indentation
vim.opt.shiftwidth=2
vim.opt.shiftround=true
vim.opt.autoindent=true
vim.opt.smartindent=true

-- keymaps
vim.keymap.set('n', '<C-,>', vim.cmd.bprevious)
vim.keymap.set('n', '<C-.>', vim.cmd.bnext)
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
