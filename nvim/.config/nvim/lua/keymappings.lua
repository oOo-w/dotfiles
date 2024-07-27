return {
  n = {
    -- navigate buffer tabs
    ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
    ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
    -- mappings seen under group name "Buffer"
    ["<Leader>bd"] = {
      function()
        require("astroui.status.heirline").buffer_picker(function(bufnr) require("astrocore.buffer").close(bufnr) end)
      end,
      desc = "Close buffer from tabline",
    },
    -- mapping copilot chat
    ["<leader>c"] = { name = "Copilot Chat" },
    ["<leader>cc"] = { "<cmd>CopilotChatToggle<cr>", desc = "CopilotChatToggle" },
    ["<leader>ce"] = { "<cmd>CopilotChatExplain<cr>", desc = "CopilotChatExplain" },
    ["<leader>cs"] = { "<cmd>CopilotChatStop<cr>", desc = "CopilotChatStop" },
    ["<leader>cf"] = { "<cmd>CopilotChatFixDiagnostic<cr>", desc = "CopilotChatFix" },
    ["<leader>cq"] = {
      function()
        local input = vim.fn.input "Quick Chat: "
        if input ~= "" then require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer }) end
      end,
      desc = "CopilotChatQuick",
    },
    -- set close buffer, because copilot overwrites it.
    ["<leader>bx"] = { "<cmd>bd<cr>", desc = "Close Buffer" },
    ["<leader>bX"] = { "<cmd>bd!<cr>", desc = "Force Close Buffer" },
    -- setting a mapping to false will disable it
    ["<leader>C"] = false, -- why not work？

    --set project.nvim plugin keymapping
    ["<leader>fp"] = { "<cmd>Telescope projects<cr>", desc = "Find projects" },
  },

  x = {
    -- mapping copilot chat
    ["<leader>c"] = { name = "Copilot Chat" },
    ["<leader>cc"] = { "<cmd>CopilotChatToggle<cr>", desc = "CopilotChatToggle" },
    ["<leader>ce"] = { "<cmd>CopilotChatExplain<cr>", desc = "CopilotChatExplain" },
    ["<leader>cs"] = { "<cmd>CopilotChatStop<cr>", desc = "CopilotChatStop" },
  },
}
