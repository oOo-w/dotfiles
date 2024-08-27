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
        vim.cmd "CMakeRun"
        vim.cmd "OverseerOpen"
      end)
    end, { desc = "Run Target" })
    vim.keymap.set("n", "<leader>rcb", function()
      cmake.select_build_target(function()
        vim.cmd "CMakeBuild"
        vim.cmd "OverseerOpen"
      end)
    end, { desc = "Build Target" })
    vim.keymap.set("n", "<leader>rcs", function() vim.cmd "CMakeSettings" end, { desc = "Cmake Settings" })
    vim.keymap.set("n", "<leader>rcc", function()
      vim.cmd "CMakeSelectCwd"
      vim.cmd "CMakeSelectBuildDir"
    end, { desc = "Change CWD" })
    vim.keymap.set("n", "<leader>rca", function()
      cmake.select_launch_target(function() vim.cmd "CMakeTargetSettings" end)
    end, { desc = "Cmake Target Settings" })

    require("cmake-tools").setup {
      cmake_generate_options = {
        -- Needed if you want compile_commands.json
        "-DCMAKE_EXPORT_COMPILE_COMMANDS=1",
        -- Needed if you use vcpkg
        "-DCMAKE_TOOLCHAIN_FILE="
        .. os.getenv "VCPKG_ROOT"
        .. "/scripts/buildsystems/vcpkg.cmake",
      },
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
