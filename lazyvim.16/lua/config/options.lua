-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Configure Neovim to use actual tabs instead of expanding them to spaces
vim.opt.expandtab = false

-- Set the visual size of a tab character to 4 columns
vim.opt.tabstop = 4

-- Set the indentation shift size to 4 columns
vim.opt.shiftwidth = 4

-- Make the Backspace/Tab key respect the 4-column alignment rules
vim.opt.softtabstop = 4
