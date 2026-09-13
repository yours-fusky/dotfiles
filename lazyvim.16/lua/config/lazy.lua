local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- local vue_ls_path = vim.fn.expand("$mason/packages/vue-language-server")
-- local vue_ts_plugin_location = vue_ls_path .. "/node_modules/@vue/language-server"
-- vim.lsp.config["ts_ls"] = {
--   init_options = {
--     plugins = {
--       {
--         name = "@vue/typescript-plugin",
--         location = vue_ts_plugin_location,
--         languages = { "javascript", "typescript", "vue" },
--       },
--     },
--   },
--   filetypes = {
--     "javascript",
--     "javascriptreact",
--     "javascript.jsx",
--     "typescript",
--     "typescriptreact",
--     "typescript.tsx",
--     "vue",
--   },
--   root_markers = { "package.json" },
--   single_file_support = true,
-- }
--
-- vim.lsp.config["emmet_language_server"] = {
--   filetypes = {
--     "astro",
--     "css",
--     "eruby",
--     "html",
--     "htmlangular",
--     "htmldjango",
--     "javascriptreact",
--     "less",
--     "sass",
--     "scss",
--     "svelte",
--     "typescriptreact",
--   },
-- }

-- local project_root = vim.fn.getcwd()
-- local vuels_location = project_root .. "/node_modules/@vue/language-server/bin/vue-language-server.js"
--
-- vim.lsp.config["vue_ls"] = {
--   cmd = {
--     vuels_location,
--     "--stdio",
--   },
--   filetypes = { "vue" },
--   init_options = {
--     vue = { hybridMode = false },
--   },
-- }

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- import typescript and vue
    { import = "lazyvim.plugins.extras.lang.typescript" },
    { import = "lazyvim.plugins.extras.lang.vue" },

    { import = "lazyvim.plugins.extras.linting.eslint" },
    { import = "lazyvim.plugins.extras.formatting.prettier" },

    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = {
    enabled = true, -- check for plugin updates periodically
    notify = false, -- notify on update
  }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
