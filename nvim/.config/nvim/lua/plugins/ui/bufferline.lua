return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup {
      options = {
        close_command = "Bdelete",
        right_mouse_command = "Bdelete",
        diagnostics = "nvim_lsp",
        offsets = {
          {
            filetype = "neo-tree",
            text = "NeoTree",
            separator = true,
            text_align = "center",
          },
        },
      },
    }
  end,
}
