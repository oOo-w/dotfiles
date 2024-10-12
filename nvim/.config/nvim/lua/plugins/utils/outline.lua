return {
  "hedyhli/outline.nvim",
  config = function()
    -- Example mapping to toggle outline
    vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", { desc = "Toggle Outline" })

    require("outline").setup {
      -- Your setup opts here (leave empty to use defaults)
      outline_window = {
        position = "right",
        width = 20,
        relative_width = true,
      },
      keymaps = {
        up_and_jump = "<C-p>",
        down_and_jump = "<C-n>",
      },
    }
  end,
}
