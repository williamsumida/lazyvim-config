return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>p",
        function() require("telescope.builtin").find_files() end,
        desc = "Find Plugin File",
      },
      {
        "<leader>g",
        function()
          require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
        end,
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
        file_ignore_patterns = {
          "node_modules",
          "%.pyc",
          "%.git",
          ".angular",
        },
      },
      pickers = {
        find_files = {
          theme = "dropdown",
        },
      },
    },
  },
}
--vim.keymap.set("n", "<leader>g", function()
--  builtin.grep_string({ search = vim.fn.input("Grep > ") })
--end)
--require("telescope").setup({
--  defaults = {
--    mappings = {
--      i = {
--        ["<C-u>"] = false,
--        ["<C-d>"] = false,
--      },
--    },
--  },
--})
--pcall(require("telescope").load_extension, "fzf")
--
--local builtin = require("telescope.builtin")
--vim.keymap.set("n", "<leader>p", "<cmd>Telescope find_files hidden=true<CR>")
---- install ripgrep to grep work properly
--vim.keymap.set("n", "<leader>g", function()
--  builtin.grep_string({ search = vim.fn.input("Grep > ") })
--end)
----vim.keymap.set('n', '<leader>/', '<cmd> Telescope current_buffer_fuzzy_find<CR>')
--
----require('telescope').setup{  defaults = { file_ignore_patterns = { "node_modules", "%.pyc", "%.git" }} }
--
--vim.keymap.set("n", "<leader>/", function()
--  -- You can pass additional configuration to telescope to change theme, layout, etc.
--  require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
--    winblend = 10,
--    previewer = false,
--  }))
--end, { desc = "[/] Fuzzily search in current buffer]" })
