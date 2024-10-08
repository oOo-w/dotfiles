return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  opts = {
    window = {
      width = 0.20,
      mappings = {
        ["v"] = "vsplit_with_window_picker",
        ["S"] = "split_with_window_picker",
        ["s"] = "none",
      },
    },
  },
}
