return {
  "saghen/blink.cmp",
  version = "*", -- track latest release tag → prebuilt binary auto-downloaded (no cargo build)
  build = false, -- never compile from source
  opts = {
    completion = {
      menu = { auto_show = false },
      list = { cycle = { from_bottom = true, from_top = true } },
      ghost_text = { enabled = false },
    },
    keymap = {
      preset = "none",
      ["<Tab>"] = { "show", "select_next", "fallback" },
      ["<Down>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
      ["<Up>"] = { "select_prev", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
      ["<Esc>"] = { "cancel", "fallback" },
    },
  },
}
