return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    { "MeanderingProgrammer/render-markdown.nvim", ft = { "markdown", "codecompanion" } },
  },
  config = function()
    require("codecompanion").setup({
      adapters = {
        gemini_cli = function()
          return require("codecompanion.adapters").extend("gemini_cli", {
            commands = {
              default = { "gemini", "--experimental-acp" },
            },
          })
        end,
      },
      strategies = {
        chat = { adapter = "gemini_cli" },
        inline = { adapter = "gemini_cli" },
        agent = { adapter = "gemini_cli" },
      },
      display = {
        chat = {
          window = {
            layout = "horizontal",
            height = 0.25,
          },
        },
      },
    })
  end,
}
