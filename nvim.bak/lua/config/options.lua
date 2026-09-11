-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = " "

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"

local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.title = true
opt.autoindent = true -- copy indent from current line when starting new one
opt.smartindent = true
opt.breakindent = true

opt.expandtab = true -- expand tab to spaces
opt.tabstop = 2 -- 2 spaces for tab
opt.smarttab = true

opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- use case when case is used in search text

opt.wrap = false

opt.termguicolors = true
opt.hlsearch = true
opt.showcmd = true
opt.backup = false
opt.scrolloff = 10
opt.inccommand = "split"
opt.backspace = { "start", "eol", "indent" }
opt.wildignore:append({ "*/node_modules/*" })

opt.winbar = "%=%m %f"
