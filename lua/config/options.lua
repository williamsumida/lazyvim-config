-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.mouse = ""
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})
vim.g.snacks_animate = false
vim.o.tabstop = 4
vim.o.list = false
vim.o.listchars = "tab:> ,trail:-,nbsp:+,eol:↵"
