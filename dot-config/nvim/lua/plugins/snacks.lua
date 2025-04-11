local M = {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    keys = {},
}

local function insertKeys(obj)
    table.insert(M.keys, obj)
end

insertKeys({
    "<leader>n",
    function()
        Snacks.scratch()
    end,
    desc = "Toggle Scratch Buffer",
})

insertKeys({
    "<leader>N",
    function()
        Snacks.scratch.select()
    end,
    desc = "Select Scratch Buffer",
})

insertKeys({
    "<leader>bd",
    function()
        Snacks.bufdelete()
    end,
    desc = "Delete Buffer",
})

insertKeys({
    "gn",
    function()
        Snacks.words.jump(vim.v.count1)
    end,
    desc = "Next Reference",
})

insertKeys({
    "gN",
    function()
        Snacks.words.jump(-vim.v.count1)
    end,
    desc = "Prev Reference",
})

M.opts = {
    bigfile = { enabled = true },
    indent = {
        enabled = true,
        scope = {
            enabled = true,
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
}

return M
