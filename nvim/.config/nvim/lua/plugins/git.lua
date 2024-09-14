return {
    {
        "tpope/vim-fugitive",
        keys = {
            { "<leader>gs", vim.cmd.Git, desc = "[g]it [s]tatus" },
            {
                "<leader>gb",
                ":Git blame<CR>",
                desc = "[g]it [b]lame",
            },
        },
    },
    {
        'lewis6991/gitsigns.nvim',
        event = "BufRead",
        opts = {
            current_line_blame = true,
            preview_config = { border = "rounded" },
            on_attach = function()
                vim.keymap.set(
                    "n",
                    "<leader>gp",
                    ":Gitsigns preview_hunk<CR>",
                    { desc = "[g]it [p]review hunk" }
                )
            end,
        },
    },
}
