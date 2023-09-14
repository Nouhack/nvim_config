vim.g.mapleader = " "

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.api.nvim_set_option("clipboard", "unnamed")
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.cmd.colorscheme('rose-pine')
vim.opt.number = true
vim.opt.relativenumber = true
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
