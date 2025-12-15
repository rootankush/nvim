-- ~/.config/nvim/lua/plugins/bufferline.lua
return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",

    config = function()
        require("bufferline").setup({
            options = {
                separator_style = "slant",
                always_show_bufferline = true,
                color_icons = true,
            },
            highlights = {
                -- The background of the entire line (Darker gray)
                fill = { bg = "#1d2021" },

                -- Active buffer (Gruvbox Dark0_hard)
                buffer_selected = {
                    fg = "#ebdbb2", -- Light foreground for text
                    bg = "#282828", -- Active background color (Dark0_hard)
                    bold = true,
                },

                -- Inactive buffer (Gruvbox Dark2)
                buffer = {
                    fg = "#a89984", -- Gray foreground for text
                    bg = "#3c3836", -- Inactive background color (Dark2)
                },

                -- The separators (use the inactive tab color for seamless blending)
                separator = {
                    fg = "#3c3836",
                    bg = "#3c3836",
                },
                separator_selected = {
                    fg = "#282828",
                    bg = "#282828"
                },
            },
        })
    end,
}
