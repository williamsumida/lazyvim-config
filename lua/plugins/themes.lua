return {
  --{ "miikanissi/modus-themes.nvim", enabled = true },
  --{
  --  "0xstepit/flow.nvim",
  --  enabled = true,
  --  opts = {
  --    transparent = true, -- Set transparent background.
  --    fluo_color = "pink", --  Fluo color: pink, yellow, orange, or green.
  --    mode = "normal", -- Intensity of the palette: normal, bright, desaturate, or dark. Notice that dark is ugly!
  --    aggressive_spell = true, -- Display colors for spell check.
  --  },
  --},
  --{ "nyoom-engineering/oxocarbon.nvim", enabled = true },
  --{ "rose-pine/neovim", enabled = true, opts = {
  --  variant = "dawn",
  --} },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "moon",
      transparent = true,
      dim_inactive = true, -- dims inactive windows
      --styles = {
      --  sidebars = "transparent",
      --  floats = "transparent",
      --},
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      background = { -- :h background
        light = "latte",
        dark = "macchiato",
      },
      transparent_background = false, -- disables setting the background color.
      show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
      term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
      dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0, -- percentage of the shade to apply to the inactive window
      },
      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      no_underline = false, -- Force no underline
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
      },
      color_overrides = {},
      custom_highlights = {},
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "tokyonight",
      colorscheme = "catppuccin",
      -- colorscheme = "flow",
      --colorscheme = "rose-pine-dawn",
      --colorscheme = "gruvbox-material",
      --colorscheme = "modus",
      --colorscheme = "oxocarbon",
    },
  },
}
