-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    -- ensure_installed = {
    --   "lua",
    --   "vim",
    -- },
    ignore_install = { "latex" },
    highlight = {
      enable = true,
      disable = { "latex" },
    },
  },
}
