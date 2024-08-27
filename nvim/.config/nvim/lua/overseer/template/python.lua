return {
  name = "python",
  params = {
    args = { optional = false, type = "list", delimiter = " ", default = {} },
  },
  builder = function(params)
    return {
      name = vim.fn.expand "%:t",
      cmd = "python3",
      args = vim.list_extend({ vim.fn.expand "%:p" }, params.args),
      cwd = vim.fn.expand "%:p:h",
      components = {
        "task_list_on_start",
        "display_duration",
        "on_exit_set_status",
        "on_complete_notify",
        "on_output_summarize",
      },
    }
  end,
  condition = {
    filetype = { "python" },
  },
}
