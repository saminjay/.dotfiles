return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        cmd = "Telescope",
        keys = {
            {
                "<leader>pf",
                function()
                    require("telescope.builtin").find_files()
                end,
                desc = "[p]roject [f]iles",
            },
            {
                "<leader>ps",
                function()
                    require("telescope.builtin").live_grep()
                end,
                desc = "[p]roject [s]earch",
            },
            {
                "<leader>pb",
                function()
                    require("telescope.builtin").buffers()
                end,
                desc = "[p]roject [b]uffers",
            },
            {
                "<leader>h",
                function()
                    require("telescope.builtin").help_tags()
                end,
                desc = "[h]elp",
            },
            {
                "<leader>ts",
                function()
                    require("telescope.builtin").treesitter()
                end,
                desc = "[t]ree[s]itter",
            },
            {
                "<leader>tb",
                function()
                    require("telescope.builtin").builtin()
                end,
                desc = "[t]elescope [b]uiltin pickers",
            },
            {
                "<leader>cf",
                function()
                    require("telescope.builtin").find_files({
                        cwd = vim.fn.stdpath("config"),
                    })
                end,
                desc = "nvim [c]onfig [f]iles",
            },
        },
        config = function()
            require("telescope").setup({
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
                        "--glob",
                        "!**/.git/*", -- hide .git files
                    },
                },
                pickers = {
                    find_files = {
                        find_command = {
                            "rg",
                            "--files",
                            "--hidden", -- show hidden files
                            "--glob",
                            "!**/.git/*", -- hide .git files
                        },
                    },
                    buffers = {
                        mappings = {
                            i = {
                                ["<M-d>"] = require("telescope.actions").delete_buffer,
                            },
                        },
                    },
                },
            })
            require("telescope").load_extension("fzf")
        end,
    },
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        lazy = true,
        build = "make",
    },
}
