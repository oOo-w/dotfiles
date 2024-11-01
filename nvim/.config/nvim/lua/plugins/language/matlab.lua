return {
  "MIBismuth/matlab.nvim",
  config = function()
    require("matlab").setup {
      matlab_dir = "/opt/MATLAB/R2024b/bin/matlab",
    }
    vim.keymap.set("n", "<leader>rmo", function() vim.cmd "MatlabCliOpen" end, { desc = "CliOpen" })
    vim.keymap.set("n", "<leader>rmc", function() vim.cmd "MatlabCliCancelOperation" end, { desc = "Stop" })
    vim.keymap.set("n", "<leader>rme", function() vim.cmd "MatlabOpenEditor" end, { desc = "OpenEditor" })
    vim.keymap.set("n", "<leader>rmw", function() vim.cmd "MatlabOpenWorkspace" end, { desc = "OpenWorkspace" })
    vim.keymap.set("n", "<leader>rmr", function() vim.cmd "MatlabCliRunCell" end, { desc = "RunCell" })
  end,
}
