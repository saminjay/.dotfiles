return {
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        branch = "main",
        event = "BufReadPre",
        -- init = function()
        --     -- Disable entire built-in ftplugin mappings to avoid conflicts.
        --     -- See https://github.com/neovim/neovim/tree/master/runtime/ftplugin for built-in ftplugins.
        --     vim.g.no_plugin_maps = true
        --
        --     -- Or, disable per filetype (add as you like)
        --     -- vim.g.no_python_maps = true
        --     -- vim.g.no_ruby_maps = true
        --     -- vim.g.no_rust_maps = true
        --     -- vim.g.no_go_maps = true
        -- end,
        config = function()
            require("nvim-treesitter-textobjects").setup({
                select = { lookahead = true },
                move = { set_jumps = true },
            })

            -- INFO: Selection
            local select = require("nvim-treesitter-textobjects.select")
            vim.keymap.set({ "x", "o" }, "aa", function()
                select.select_textobject("@parameter.outer", "textobjects")
            end)
            vim.keymap.set({ "x", "o" }, "ia", function()
                select.select_textobject("@parameter.inner", "textobjects")
            end)
            vim.keymap.set({ "x", "o" }, "af", function()
                select.select_textobject("@function.outer", "textobjects")
            end)
            vim.keymap.set({ "x", "o" }, "if", function()
                select.select_textobject("@function.inner", "textobjects")
            end)
            vim.keymap.set({ "x", "o" }, "ac", function()
                select.select_textobject("@class.outer", "textobjects")
            end)
            vim.keymap.set({ "x", "o" }, "ic", function()
                select.select_textobject("@class.inner", "textobjects")
            end)
            vim.keymap.set({ "x", "o" }, "ai", function()
                select.select_textobject("@conditional.outer", "textobjects")
            end)
            vim.keymap.set({ "x", "o" }, "ii", function()
                select.select_textobject("@conditional.inner", "textobjects")
            end)
            vim.keymap.set({ "x", "o" }, "al", function()
                select.select_textobject("@loop.outer", "textobjects")
            end)
            vim.keymap.set({ "x", "o" }, "il", function()
                select.select_textobject("@loop.inner", "textobjects")
            end)

            -- INFO: Move
            local move = require("nvim-treesitter-textobjects.move")
            vim.keymap.set({ "n", "x", "o" }, "]f", function()
                move.goto_next_start("@function.outer", "textobjects")
            end)
            vim.keymap.set({ "n", "x", "o" }, "]]", function()
                move.goto_next_start("@class.outer", "textobjects")
            end)
            vim.keymap.set({ "n", "x", "o" }, "]F", function()
                move.goto_next_end("@function.outer", "textobjects")
            end)
            vim.keymap.set({ "n", "x", "o" }, "][", function()
                move.goto_next_end("@class.outer", "textobjects")
            end)
            vim.keymap.set({ "n", "x", "o" }, "[f", function()
                move.goto_previous_start("@function.outer", "textobjects")
            end)
            vim.keymap.set({ "n", "x", "o" }, "[[", function()
                move.goto_previous_start("@class.outer", "textobjects")
            end)
            vim.keymap.set({ "n", "x", "o" }, "[F", function()
                move.goto_previous_end("@function.outer", "textobjects")
            end)
            vim.keymap.set({ "n", "x", "o" }, "[]", function()
                move.goto_previous_end("@class.outer", "textobjects")
            end)

            -- INFO: Swap
            local swap = require("nvim-treesitter-textobjects.swap")
            vim.keymap.set("n", "<leader>a", function()
                swap.swap_next("@parameter.inner")
            end)
            vim.keymap.set("n", "<leader>A", function()
                swap.swap_previous("@parameter.outer")
            end)
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        build = ":TSUpdate",
        event = "BufReadPre",
        config = function()
            local nvim_treesitter = require("nvim-treesitter")
            nvim_treesitter.setup({
                install_dir = vim.fn.stdpath("data") .. "/site",
            })

            local languages = {
                "bash",
                "c",
                "commonlisp",
                "cpp",
                "css",
                "diff",
                "dockerfile",
                "editorconfig",
                "gitattributes",
                "gitcommit",
                "git_config",
                "gitignore",
                "git_rebase",
                "go",
                "html",
                "javascript",
                "jsdoc",
                "json",
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "query",
                "regex",
                "sql",
                "toml",
                "typescript",
                "vim",
                "vimdoc",
                "yaml",
            }
            nvim_treesitter.install(languages)

            vim.api.nvim_create_autocmd("FileType", {
                group = vim.api.nvim_create_augroup(
                    "EnableTreesitterHighlighting",
                    { clear = true }
                ),
                pattern = "*",
                callback = function()
                    pcall(vim.treesitter.start)
                end,
            })
        end,
    },
}
