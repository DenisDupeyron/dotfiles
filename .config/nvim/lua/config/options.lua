-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Line numbering: Use absolute line numbers instead of relative
vim.opt.number = true
vim.opt.relativenumber = false

-- whichwrap flags: < > = arrows in normal/visual mode, [ ] = arrows in insert mode
vim.opt.whichwrap:append("<,>,[,]")

-- Set 4-space indentation for bash/shell files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "sh", "bash", "zsh" },
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = true
  end,
})
