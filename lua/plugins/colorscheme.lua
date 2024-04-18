return {
  {
    "catppuccin/nvim",
    enabled = true,
    lazy = true,
    priority = 1000,
    name = "catppuccin",
    opts = {
      transparent_background = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
