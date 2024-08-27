return {
  name = "g++ build",
  builder = function()
    -- Full path to current file (see :help expand())
    local file = vim.fn.expand "%:p"
    local file_name = vim.fn.expand "%:t"

    local file_name_without_extension = vim.fn.fnamemodify(file_name, ":r")

    return {
      cmd = { "g++" },
      args = { file, "-o", file_name_without_extension },
      components = {
        "task_list_on_start",
        "default",
      },
    }
  end,
  condition = {
    filetype = { "cpp" },
  },
}
