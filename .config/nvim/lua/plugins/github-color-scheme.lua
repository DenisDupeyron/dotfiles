return {
  {
    "projekt0n/github-nvim-theme",
    init = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "github_dark_high_contrast",
        callback = function()
          vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
          vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
          vim.api.nvim_set_hl(0, "NormalSB", { bg = "#000000" })
          vim.api.nvim_set_hl(0, "NormalNC", { bg = "#000000" })
        end,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_dark_high_contrast",
    },
  },
}
