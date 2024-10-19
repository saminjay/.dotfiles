return {
    {
        -- Autocompletion
        "hrsh7th/nvim-cmp",
        lazy = true,
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                window = {
                    documentation = cmp.config.window.bordered(),
                    completion = cmp.config.window.bordered(),
                },
                completion = { completeopt = "menu,menuone,noinsert" },
                mapping = {
                    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ["<C-p>"] = cmp.mapping.select_prev_item(),
                    ["<C-n>"] = cmp.mapping.select_next_item(),
                    ["<Tab>"] = cmp.mapping.confirm({ select = true }),
                    ['<C-e>'] = cmp.mapping.abort(),
                    ["<C-y>"] = cmp.mapping.complete(),
                },
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    {
                        name = "lazydev",
                        group_index = 0, -- Use first
                    },
                    { name = "path" },
                    { name = 'nvim_lsp_signature_help' },
                }, {
                    { name = "buffer" },
                })
            })
        end,
    },
    -- INFO: Dependencies
    {
        "hrsh7th/cmp-path",
        event = "InsertEnter",
    },
    {
        "hrsh7th/cmp-buffer",
        event = "InsertEnter",
    },
    {
        "hrsh7th/cmp-nvim-lsp-signature-help",
        event = "InsertEnter",
    },
    {
        -- Autocompletion for neovim config
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
            library = {
                "lazy.nvim",
                -- Only load luvit types when the `vim.uv` word is found
                { path = "luvit-meta/library", words = { "vim%.uv" } },
            },
            enabled = function(root_dir)
                return not vim.uv.fs_stat(root_dir .. "/.luarc.json")
            end,
        },
    },
    {
        'Bilal2453/luvit-meta',
        lazy = true,
    },
}
