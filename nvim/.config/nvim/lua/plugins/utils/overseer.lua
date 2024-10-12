return {
  "stevearc/overseer.nvim",
  init = function()
    vim.keymap.set("n", "<Leader>rt", "<cmd>OverseerToggle<cr>", { desc = "Overseer Toggle" })
    vim.keymap.set("n", "<Leader>rr", "<cmd>OverseerRun<cr>", { desc = "Overseer Run" })
    vim.keymap.set("n", "<Leader>ri", "<cmd>OverseerInfo<cr>", { desc = "Overseer Info" })
  end,
  config = function()
    local overseer = require "overseer"
    overseer.setup {
      dap = false,
      templates = { "make", "shell", "g++", "python" },
      task_list = {
        default_detail = 2,
        direction = "right",
        max_width = 0.20,
        bindings = {
          ["e"] = "Edit",
          ["<C-u>"] = false,
          ["<C-d>"] = false,
          ["<C-h>"] = false,
          ["<C-j>"] = false,
          ["<C-k>"] = false,
          ["<C-l>"] = false,
        },
      },
    }
    -- custom behavior of make templates
    overseer.add_template_hook({
      module = "^make$",
    }, function(task_defn, util)
      util.add_component(task_defn, { "on_output_quickfix", open_on_exit = "failure" })
      util.add_component(task_defn, "on_complete_notify")
      util.add_component(task_defn, { "display_duration", detail_level = 1 })
    end)
  end,
}
