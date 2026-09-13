return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        projects = {
          max_depth = 3,
          -- Top-level folders to scan for sub-folders
          dev = { "~/Code/xit", "~/Code/xit/nksr", "~/Code/fusky", "~/.config/lazyvim.16/" },
          -- Patterns that mark a directory as a valid project root
          patterns = { ".git", "package.json", "README.md" },
        },
      },
    },
  },
}
