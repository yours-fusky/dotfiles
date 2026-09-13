return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- Safely add scss to the automatic installation array
      if type(opts.ensure_installed) == "table" then
        table.insert(opts.ensure_installed, "scss")
      end
    end,
  },
}
