return {
  "Civitasv/cmake-tools.nvim",
  lazy = true,

  init = function()
    local loaded = false
    local function check()
      local cwd = vim.uv.cwd()
      if vim.fn.filereadable(cwd .. "/CMakeLists.txt") == 1 then
        require("lazy").load { plugins = { "cmake-tools.nvim" } }
        loaded = true
      end
    end
    check()
    vim.api.nvim_create_autocmd("DirChanged", {
      callback = function()
        if not loaded then check() end
      end,
    })
  end,

  config = function()
    local cmake = require "cmake-tools"
    vim.keymap.set("n", "<leader>rcr", function()
      cmake.select_launch_target(function()
        vim.cmd "OverseerOpen"
        vim.cmd "CMakeRun"
      end)
    end, { desc = "Run Target" })

    vim.keymap.set("n", "<leader>rcb", function()
      cmake.select_build_target(function()
        vim.cmd "OverseerOpen"
        vim.cmd "CMakeBuild"
      end)
    end, { desc = "Build Target" })

    vim.keymap.set("n", "<leader>rcg", function()
      vim.cmd "OverseerOpen"
      vim.cmd "CMakeGenerate"
    end, { desc = "CMake Generate" })

    vim.keymap.set("n", "<leader>rcs", function() vim.cmd "CMakeSettings" end, { desc = "Cmake Settings" })

    vim.keymap.set("n", "<leader>rcc", function()
      vim.cmd "CMakeSelectCwd"
      vim.cmd "CMakeSelectBuildDir"
    end, { desc = "Change CWD" })

    vim.keymap.set("n", "<leader>rca", function()
      cmake.select_launch_target(function() vim.cmd "CMakeTargetSettings" end)
    end, { desc = "Cmake Target Settings" })

    vim.keymap.set(
      "n",
      "<Leader>rcx",
      function() vim.cmd "!rm -r compile_commands.json build CMakeUserPresets.json" end,
      { desc = "CMake Clean" }
    )

    require("cmake-tools").setup {
      cmake_generate_options = {
        -- Needed if you want compile_commands.json
        "-DCMAKE_EXPORT_COMPILE_COMMANDS=1",
        -- Needed if you use conan to manage c++ packages
        "-DCMAKE_PROJECT_TOP_LEVEL_INCLUDES=/home/chaibowen/.conan2/conan_provider.cmake",
      },
      cmake_use_preset = false,
      cmake_build_directory = "build",
      cmake_executor = {
        name = "overseer",
      },
      cmake_runner = {
        name = "overseer",
      },
      cmake_notifications = {
        runner = { enabled = false },
        executor = { enabled = false },
      },
    }
  end,
}
