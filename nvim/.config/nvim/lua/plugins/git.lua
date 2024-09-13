return {
    {
        "tpope/vim-fugitive",
        keys = {
            { "<leader>gs", vim.cmd.Git, desc = "Git Fugitive" },
        },
    },
    {
        'lewis6991/gitsigns.nvim',
        event = "BufRead",
        opts = {},
    },
}
