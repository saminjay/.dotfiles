return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        bigfile = { enabled = true },
        dashboard = {
            enabled = true,
            -- TODO:
            -- Add keybinding netrw, :Ex
            -- Add git status keybinding
            -- Change header
        },
        indent = { enabled = true },
        input = { enabled = true },
        quickfile = { enabled = true },
        statuscolumn = { enabled = true },
        words = {
            debounce = 300,
            enabled = true,
            modes = { "n" },
        },
    },
}
