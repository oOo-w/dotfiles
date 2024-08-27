return {
  n = {
    -- Run Task (using cmake-tools.nvim and overseer.nvim)
    ["<Leader>r"] = { desc = " Run Task" },
    ["<Leader>rc"] = { desc = " Run Cpp" },
    ["<Leader>rcb"] = { "<cmd>CMakeBuild<cr><cmd>OverseerOpen<cr>", desc = "CMake Build" },
    ["<Leader>rcr"] = { "<cmd>CMakeRun<cr><cmd>OverseerOpen<cr>", desc = "Run Target" },
    ["<Leader>rcg"] = { "<cmd>CMakeGenerate<cr><cmd>OverseerOpen<cr>", desc = "Generate Build Directory" },

    -- navigate buffer tabs
    ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
    ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
    -- mappings seen under group name "Buffer"
    ["<Leader>b"] = { name = " Buffer" },

    -- mapping copilot chat
    ["<Leader>a"] = { name = " Copilot Chat" },
    ["<Leader>aa"] = { "<cmd>CopilotChatToggle<cr>", desc = "CopilotChatToggle" },
    ["<Leader>ae"] = { "<cmd>CopilotChatExplain<cr>", desc = "CopilotChatExplain" },
    ["<Leader>as"] = { "<cmd>CopilotChatStop<cr>", desc = "CopilotChatStop" },
    ["<Leader>af"] = { "<cmd>CopilotChatFixDiagnostic<cr>", desc = "CopilotChatFix" },
    ["<Leader>aq"] = {
      function()
        local input = vim.fn.input "Quick Chat: "
        if input ~= "" then require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer }) end
      end,
      desc = "CopilotChatQuick",
    },

    -- set project.nvim plugin keymapping
    ["<Leader>fp"] = { "<cmd>Telescope projects<cr><Esc>", desc = "Find projects" },

    -- open MiniFile
    ["<Leader>E"] = { "<cmd>lua MiniFiles.open()<cr>", desc = "Open MiniFiles" },
    ["<Leader>e"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer" },
  },

  x = {
    -- mapping copilot chat
    ["<Leader>a"] = { name = "Copilot Chat" },
    ["<Leader>aa"] = { "<cmd>CopilotChatToggle<cr>", desc = "CopilotChatToggle" },
    ["<Leader>ae"] = { "<cmd>CopilotChatExplain<cr>", desc = "CopilotChatExplain" },
    ["<Leader>as"] = { "<cmd>CopilotChatStop<cr>", desc = "CopilotChatStop" },
  },

  t = {
    ["<Esc><Esc>"] = { "<C-d>", desc = "Exit terminal mode" },
  },
}
