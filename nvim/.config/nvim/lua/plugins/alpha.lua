-- customize alpha options
return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    -- customize the dashboard header
    opts.section.header.val = {
      -- "    ███    ██ ███████  ██████  ██    ██ ██ ███    ███",
      -- "    ████   ██ ██      ██    ██ ██    ██ ██ ████  ████",
      -- "    ██ ██  ██ ███████ ██    ██ ██    ██ ██ ██ ████ ██",
      -- "    ██  ██ ██ ██      ██    ██  ██  ██  ██ ██  ██  ██",
      -- "    ██   ████ ███████  ██████    ████   ██ ██      ██",
      "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    }
    opts.section.buttons.val = {
      opts.button("SPC f p", "󰉋  Find Project", "<Leader>fp"),
      opts.button("SPC f f", "  Find File", "<Leader>ff"),
      opts.button("SPC f o", "  Recent File", "<Leader>fo>"),
      opts.button("SPC a a", "  Copilot Chat", "<Leader>aa"),
      opts.button("SPC f a", "  Config Files", "<Leader>fa"),
      opts.button("SPC  Q ", "󰈆  Quit Neovim", "<Leader>Q"),
    }
  end,
}
