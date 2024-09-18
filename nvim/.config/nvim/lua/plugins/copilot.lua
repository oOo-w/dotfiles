return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function() require("copilot").setup {} end,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    opts = {
      debug = false, -- Enable debugging
      -- See Configuration section for rest
      show_help = false,
      window = {
        width = 0.4,
      },
      -- Set default prompts to chinese.
      prompts = {
        Explain = {
          prompt = "/COPILOT_EXPLAIN 请解释一下选中的文本段落",
        },
      },
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
}
