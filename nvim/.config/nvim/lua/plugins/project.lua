return {
  "ahmedkhalf/project.nvim",
  config = function()
    require("project_nvim").setup {
      detection_methods = {},
      silent_chdir = false,
    }
    require("telescope").load_extension "projects"
  end,
}
