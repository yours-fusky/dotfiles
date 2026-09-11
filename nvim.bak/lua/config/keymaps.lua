-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

-- Resize window using <option> move keys
map("n", "˚", "<cmd>resize +5<cr>", { desc = "Increase Window Height" })
map("n", "∆", "<cmd>resize -5<cr>", { desc = "Decrease Window Height" })
map("n", "˙", "<cmd>vertical resize -5<cr>", { desc = "Decrease Window Width" })
map("n", "¬", "<cmd>vertical resize +5<cr>", { desc = "Increase Window Width" })

-- Keep cursor in the middle of the screen when scrolling with ctrl d and ctrl u
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
