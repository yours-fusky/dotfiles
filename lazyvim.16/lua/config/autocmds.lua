-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd({ "DirChanged", "UIEnter", "VimEnter", "FocusGained" }, {

  group = vim.api.nvim_create_augroup("GhosttyTitleUpdate", { clear = true }),
  callback = function()
    -- vim.defer_fn(function()
    -- Get the current directory name (e.g., "my-project")
    local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")

    if project_name == "" then
      project_name = "NeoVim"
    end

    -- ANSI sequence to set the terminal title
    -- \27]2; is the escape code for setting window/tab title, \7 is the terminator
    io.write(string.format("\27]2;%s\7", project_name))
    -- end, 50)
  end,
})
