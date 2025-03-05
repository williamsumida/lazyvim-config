return {
  "snacks.nvim",
  opts = {
    scroll = { enabled = false },
    animate = { enabled = false },
    indent = { enabled = false },
    dashboard = {
      --example = "chafa",
      formats = {
        key = function(item)
          return { { "[", hl = "special" }, { item.key, hl = "key" }, { "]", hl = "special" } }
        end,
      },
      sections = {
        { section = "terminal", cmd = "fortune | cowsay", hl = "header", padding = 1, indent = 8, height = 15 },
        { title = "Keys", padding = 1 },
        { section = "keys", padding = 2 },
        { title = "Sessions", padding = 1 },
        { section = "projects", padding = 1 },
      },
      terminal = {
        win = { style = "terminal" },
      },
    },
  },
  keys = {
    {
      "<c-/>",
      function()
        Snacks.terminal(nil, { win = { position = "float" } })
      end,
      desc = "Toggle Terminal",
    },
  },
}
