return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")

        harpoon:setup({
            global_settings = {
                save_on_toggle = true,
                save_on_change = true
            }
        })

        vim.keymap.set("n", "<C-a>", function() harpoon:list():add() end, { desc = "Harpoon: Add file" })
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)


        vim.keymap.set("n", "<C-v>", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<C-b>", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<C-m>", function() harpoon:list():select(4) end)

        vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
        vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
    end,
}
