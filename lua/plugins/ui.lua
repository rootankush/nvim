return {
  -- messages, cmdline and the popupmenu_show
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
    end,
  },
  -- animations
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enable = false,
      }
    end,
  },

  -- buffer line
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    },
    opts = {
      options = {
        mode = "tabs",
        -- separator_style = "slant",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },

  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      plugins = {
        gitsigns = true,
        tmux = true,
        kitty = { enabled = false, font = "+2" },
      },
    },
    keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
  },

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "nightfly",
      },
    },
  },

  -- logo
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = {
        [[                                                                       ]],
        [[                                                                     ]],
        [[       ████ ██████           █████      ██                     ]],
        [[      ███████████             █████                             ]],
        [[      █████████ ███████████████████ ███   ███████████   ]],
        [[     █████████  ███    █████████████ █████ ██████████████   ]],
        [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
        [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
        [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
        [[                                                                       ]],
      }
      dashboard.section.buttons.val = {
        dashboard.button("f", " " .. " Find file", "<cmd> Telescope find_files <cr>"),
        dashboard.button("n", " " .. " New file", "<cmd> ene <BAR> startinsert <cr>"),
        dashboard.button("r", " " .. " Recent files", "<cmd> Telescope oldfiles <cr>"),
        dashboard.button(
          "c",
          "  " .. " Config",
          "<cmd> lua require('lazyvim.util').telescope.config_files()() <cr>"
        ),
        dashboard.button("x", " " .. " Lazy Extras", "<cmd> LazyExtras <cr>"),
        dashboard.button("l", "󰒲 " .. " Lazy", "<cmd> Lazy <cr>"),
        dashboard.button("q", " " .. " Quit", "<cmd> qa <cr>"),
      }
      _Gopts = {
        positon = "center",
        hl = "Type",
        --wrap = "overflow";
      }

      local function footer()
        return "Programmin is an art of patience not talent 💡"
      end

      dashboard.section.footer.val = footer()

      dashboard.opts.opts.noautocmd = true
      alpha.setup(dashboard.opts)
    end,
  },
}
