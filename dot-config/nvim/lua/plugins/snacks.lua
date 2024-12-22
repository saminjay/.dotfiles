return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    keys = {
        {
            "<leader>n",
            function()
                Snacks.scratch()
            end,
            desc = "Toggle Scratch Buffer",
        },
        {
            "<leader>N",
            function()
                Snacks.scratch.select()
            end,
            desc = "Select Scratch Buffer",
        },
        {
            "<leader>bd",
            function()
                Snacks.bufdelete()
            end,
            desc = "Delete Buffer",
        },
        {
            "gn",
            function()
                Snacks.words.jump(vim.v.count1)
            end,
            desc = "Next Reference",
        },
        {
            "gN",
            function()
                Snacks.words.jump(-vim.v.count1)
            end,
            desc = "Prev Reference",
        },
    },
    opts = {
        bigfile = { enabled = true },
        indent = {
            enabled = true,
            only_scope = true,
            scope = {
                enabled = true,
                edge = false,
                cursor = false,
            },
        },
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
