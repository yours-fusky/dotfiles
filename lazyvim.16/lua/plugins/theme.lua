return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night", -- Hex #1a1b26 base engine
      styles = {
        comments = { italic = true },
        keywords = { italic = false }, -- Set to true if you prefer italic keywords
        functions = { italic = false },
        variables = { italic = false },
      },
      on_colors = function(colors)
        -- Global UI Overrides
        colors.fg = "#c0caf5"
        colors.bg = "#1a1b26" -- Editor background
        colors.bg_dark = "#1d1f2d" -- Sidebar & NvimTree
        colors.bg_statusline = "#1d1f2d" -- Status Bar background
        colors.bg_visual = "#1f253f" -- Visual selection background

        -- Override specific theme color groups
        colors.comment = "#545964"
        colors.string = "#e5c07b"
        colors.purple = "#c678dd" -- Numbers
        colors.cyan = "#36c0c0" -- Types and Built-ins
        colors.blue = "#6199ef" -- Classes & Objects
        colors.green = "#72c369" -- Functions
        colors.red = "#eb6572" -- Keywords, Operators, Tags
      end,
      on_highlights = function(hl, c)
        -- Inject the custom specific syntax rule tokens
        hl["@parameter"] = { fg = "#d19a66", italic = true } -- Function argument style
        hl["@variable.parameter"] = { fg = "#d19a66", italic = true }

        -- Ensure HTML/Vue tag settings render matching your VS Code structure
        hl["@tag"] = { fg = "#eb6572" }
        hl["@tag.builtin"] = { fg = "#eb6572" }
        hl["@tag.attribute"] = { fg = "#72c369" }
        hl["@tag.delimiter"] = { fg = "#accfd7" }

        -- Text adjustments for code identifiers
        hl["@property"] = { fg = "#accfd7" }
        hl["@function.call"] = { fg = "#accfd7" }

        -- Editor Interface line tweaks
        hl["LineNr"] = { fg = "#484b5c" }
        hl["CursorLineNr"] = { fg = "#c0caf5" }
        hl["CursorLine"] = { bg = "#202437" }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
    },
  },
}

-- return {
--   "tiagovla/tokyodark.nvim",
--   opts = {
--     style = "night",
--     -- custom options here
--   },
--   config = function(_, opts)
--     require("tokyodark").setup(opts) -- calling setup is optional
--     vim.cmd([[colorscheme tokyodark]])
--   end,
-- }

-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   priority = 1000,
--   lazy = false,
--   config = function()
--     vim.cmd.colorscheme("catppuccin")
--   end,
-- }
