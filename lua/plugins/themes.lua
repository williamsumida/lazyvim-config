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
  { "williamsumida/pastelaria" },
  { "miikanissi/modus-themes.nvim", priority = 1000 },
  { "nyngwang/nvimgelion" },
  { "kdheepak/monochrome.nvim" },
  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
  },
  { "chrsm/paramount-ng.nvim", requires = { "rktjmp/lush.nvim" } },
  {
    "jackplus-xyz/binary.nvim",
    opts = {
      style = "system",
      colors = {
        fg = "#000000",
        -- bg = "#FFB400",
        --bg = "#9d00ff",
        -- bg = "#AC94F4",
        bg = "#FFB400",
      },
      -- Customize the reversed groups
      reversed_group = {
        Title = true, -- Add a new reversed group
        Search = false, -- Disable a default reversed group
        CursorLine = true,
      },
    },
  },
  {
    "rose-pine/neovim",
    enabled = true,
    config = function()
      require("rose-pine").setup({
        variant = "dawn", -- auto, main, moon, or dawn
        dim_inactive_windows = true,
        extend_background_behind_borders = true,

        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true, -- Handle deprecated options automatically
        },

        styles = {
          bold = true,
          italic = true,
          transparency = false,
        },
      })
    end,
  },
  {
    "morhetz/gruvbox",
  },
  {
    "EdenEast/nightfox.nvim",
    options = {
      styles = {
        comments = "italic",
        keywords = "bold",
        types = "italic,bold",
      },
    },
  },
  {
    "sainnhe/gruvbox-material",
    lazy = true,
    config = function()
      vim.g.gruvbox_material_foreground = "medium"
      vim.g.gruvbox_material_background = "medium"
      vim.g.gruvbox_material_ui_contrast = "high" -- The contrast of line numbers, indent lines, etc.
      vim.g.gruvbox_material_float_style = "dim"
      vim.o.background = "light"
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "moon",
      transparent = false,
      dim_inactive = true, -- dims inactive windows
      --styles = {
      --  sidebars = "transparent",
      --  floats = "transparent",
      --},
    },
  },
  {
    "ficcdaf/ashen.nvim",
    lazy = false,
    priority = 1000,
    -- configuration is optional!
    opts = {
      -- your settings here
    },
  },
  {
    "vague2k/vague.nvim",
    config = function()
      -- NOTE: you do not need to call setup if you don't want to.
      require("vague").setup({
        -- optional configuration here
      })
    end,
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
        enabled = true, -- dims the background color of inactive window
        shade = "light",
        percentage = 0.4, -- percentage of the shade to apply to the inactive window
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
      color_overrides = {
        all = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      },
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
      --colorscheme = "ashen",
      -- colorscheme = "catppuccin",
      -- colorscheme = "flow",
      -- colorscheme = "rose-pine",
      -- colorscheme = "binary",
      -- colorscheme = "monochrome",
      -- colorscheme = "paramount-ng",
      -- colorscheme = "gruvbox-material",
      -- colorscheme = "dawnfox",
      colorscheme = "vague",
      -- colorscheme = "nightfox",
      --colorscheme = "modus",
      --colorscheme = "oxocarbon",
      -- colorscheme = "pastelaria",
    },
  },
}
