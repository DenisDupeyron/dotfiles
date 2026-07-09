-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Toggle word diff
vim.keymap.set("n", "<leader>gw", function()
  require("gitsigns").toggle_word_diff()
end, { desc = "Toggle Word Diff" })

-- Show word diff like `git diff --word-diff=color` would
-- Can't be done out of the box so we have to do it in a separate buffer
vim.keymap.set("n", "<leader>gW", function()
  if vim.b.worddiff_src then
    local term = vim.api.nvim_get_current_buf()
    vim.api.nvim_set_current_buf(vim.b.worddiff_src)
    vim.api.nvim_buf_delete(term, { force = true })
    return
  end
  local src = vim.api.nvim_get_current_buf()
  local file = vim.fn.expand("%:p")
  local dir = vim.fn.fnamemodify(file, ":h")
  vim.cmd(
    "terminal git -C "
      .. vim.fn.shellescape(dir)
      .. " --no-pager diff --word-diff=color --no-ext-diff -- "
      .. vim.fn.shellescape(file)
  )
  vim.b.worddiff_src = src
end, { desc = "Toggle Word Diff Color" })
