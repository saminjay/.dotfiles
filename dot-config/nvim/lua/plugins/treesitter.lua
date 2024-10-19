return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "BufRead",
    config = function()
        require("nvim-treesitter.configs").setup({
            modules = {},
            ignore_install = {},
            ensure_installed = {
                "c",
                "cpp",
                "python",
                "lua",
                "go",
                "vim",
                "vimdoc",
                "query",
                "javascript",
                "typescript",
                "html",
                "css",
                "sql",
                "bash",
                "markdown",
                "markdown_inline",
            },
            auto_install = true,
            sync_install = false,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = { enable = true },
        })
    end
}
