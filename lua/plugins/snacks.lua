return {
  "snacks.nvim",
  opts = {
    scroll = { enabled = false },
    animate = { enabled = false },
    dashboard = {
      --example = "chafa",
      formats = {
        key = function(item)
          return { { "[", hl = "special" }, { item.key, hl = "key" }, { "]", hl = "special" } }
        end,
      },
      sections = {
        { section = "terminal", cmd = "fortune | cowsay", hl = "header", padding = 1, indent = 8, height = 15 },
        { title = "Sessions", padding = 1 },
        { section = "projects", padding = 1 },
        { title = "Bookmarks", padding = 1 },
        { section = "keys" },
      },
    },
  },
}
