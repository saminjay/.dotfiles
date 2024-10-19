return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        keys = {
            { "<leader>pf", ":Telescope find_files<CR>", desc = "[p]roject [f]iles" },
            { "<C-p>",      ":Telescope git_files<CR>",  desc = "git files vscode mapping" },
            { "<leader>ps", ":Telescope live_grep<CR>",  desc = "[p]roject [s]earch" },
            { "<leader>pb", ":Telescope buffers<CR>",    desc = "[p]roject [b]uffers" },
            { "<leader>h",  ":Telescope help_tags<CR>",  desc = "[h]elp" },
            { "<leader>ts", ":Telescope treesitter<CR>", desc = "[t]ree[s]itter" },
        },
        opts = {
            defaults = {
                vimgrep_arguments = {
                    "rg",
                    "--color=never",
                    "--no-heading",
                    "--with-filename",
                    "--line-number",
                    "--column",
                    "--smart-case",
                    "--hidden", -- show hidden files
                    "--glob",   -- hide .git files
                    "!**/.git/*",
                },
            },
            pickers = {
                find_files = {
                    find_command = {
                        "rg",
                        "--files",
                        "--hidden", -- show hidden files
                        "--glob",   -- hide .git files
                        "!**/.git/*",
                    },
                },
            },
        },
    },
    {
        'nvim-lua/plenary.nvim',
        lazy = true,
    },
};
