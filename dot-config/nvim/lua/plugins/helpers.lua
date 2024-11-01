return {
    {
        "folke/todo-comments.nvim",
        event = "BufRead",
        opts = {
            signs = false,
        },
    },
    {
        "brenoprata10/nvim-highlight-colors",
        cmd = "HighlightColors",
        opts = {
            render = "virtual",
            virtual_symbol = '■',
            virtual_symbol_prefix = " ",
            virtual_symbol_suffix = "",
            virtual_symbol_position = "inline",
            enable_hex = true,
            enable_short_hex = true,
            enable_rgb = true,
            enable_hsl = true,
            enable_var_usage = true,
            enable_named_colors = true,
            enable_tailwind = true,
            exclude_filetypes = {},
            exclude_buftypes = {}
        },
    },
    -- INFO: removed after getting comfortable
    -- {
    --     "m4xshen/hardtime.nvim",
    --     event = "VeryLazy",
    --     opts = {}
    -- },
    -- INFO: Dependencies
    {
        "MunifTanjim/nui.nvim",
        lazy = true,
    },
};
