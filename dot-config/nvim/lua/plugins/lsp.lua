return {
    {
        -- Main LSP Configuration
        "neovim/nvim-lspconfig",
        event = "BufReadPre",
        config = function()
            -- INFO: LSP keymaps
            vim.api.nvim_create_autocmd("LspAttach", {
                group = vim.api.nvim_create_augroup(
                    "lsp-attach",
                    { clear = true }
                ),
                callback = function(e)
                    local function map(keys, func, desc, mode)
                        local opts = { buffer = e.buf, desc = desc }
                        mode = mode or "n"
                        if type(func) == "string" then
                            func = require("telescope.builtin")[func]
                        end
                        vim.keymap.set(mode, keys, func, opts)
                    end

                    map("gd", "lsp_definitions", "LSP: [g]oto [d]efinition")
                    map(
                        "gi",
                        "lsp_implementations",
                        "LSP: [g]oto [i]mplementation"
                    )
                    map("gr", "lsp_references", "LSP: [g]oto [r]eferences")
                    map(
                        "<leader>td",
                        "lsp_type_definitions",
                        "LSP: [t]ype [d]efinition"
                    )
                    map(
                        "<leader>gd",
                        "lsp_document_symbols",
                        "LSP: [gd]ocument symbols"
                    )
                    map(
                        "<leader>ws",
                        "lsp_dynamic_workspace_symbols",
                        "LSP: [w]orkspace [s]ymbols"
                    )

                    map("K", vim.lsp.buf.hover, "LSP: hover")
                    map(
                        "gD",
                        vim.lsp.buf.declaration,
                        "LSP: [g]oto [D]eclaration"
                    )
                    map(
                        "<leader>ca",
                        vim.lsp.buf.code_action,
                        "LSP: [c]ode [a]ction"
                    )
                    map("<leader>rn", vim.lsp.buf.rename, "LSP: [r]e[n]ame")
                    map(
                        "<C-h>",
                        vim.lsp.buf.signature_help,
                        "LSP: signature help",
                        "i"
                    )

                    map(
                        "<leader>vd",
                        vim.diagnostic.open_float,
                        "Diagnostics: open float"
                    )
                    map("]d", vim.diagnostic.goto_next, "Diagnostics: next")
                    map("[d", vim.diagnostic.goto_prev, "Diagnostics: prev")
                end,
            })

            -- INFO: LSP config
            local cmp_lsp = require("cmp_nvim_lsp")
            local capabilities = vim.tbl_deep_extend(
                "force",
                {},
                vim.lsp.protocol.make_client_capabilities(),
                cmp_lsp.default_capabilities()
            )

            local servers = {
                lua_ls = {},
                gopls = {},
                ts_ls = {},
                cssls = {},
                html = {},
                clangd = {},
                bashls = {},
                marksman = {},
                jsonls = {},
                pyright = {},
                taplo = {
                    -- INFO: this is required for taplo LSP to work in non-git repositories
                    root_dir = require("lspconfig.util").root_pattern(
                        "*.toml",
                        ".git"
                    ),
                },
                lemminx = {},
                eslint = {},
                tailwindcss = {},
            }

            local ensure_installed = vim.tbl_keys(servers)
            require("mason-tool-installer").setup({
                ensure_installed = ensure_installed,
            })

            require("mason-lspconfig").setup({
                handlers = {
                    function(server_name)
                        local server = servers[server_name] or {}
                        -- This handles overriding only values explicitly passed
                        -- by the server configuration above. Useful when disabling
                        -- certain features of an LSP (for example, turning off formatting for tsserver)
                        server.capabilities = vim.tbl_deep_extend(
                            "force",
                            {},
                            capabilities,
                            server.capabilities or {}
                        )
                        require("lspconfig")[server_name].setup(server)
                    end,
                },
            })

            -- INFO: Diagnostics
            vim.diagnostic.config({
                virtual_text = {
                    source = "if_many",
                },
                float = {
                    focusable = false,
                    style = "minimal",
                    border = "rounded",
                    source = true,
                    header = "",
                    prefix = "",
                },
            })

            -- Borders
            local _border = "rounded"

            vim.lsp.handlers["textDocument/hover"] =
                vim.lsp.with(vim.lsp.handlers.hover, {
                    border = _border,
                })

            vim.lsp.handlers["textDocument/signatureHelp"] =
                vim.lsp.with(vim.lsp.handlers.signature_help, {
                    border = _border,
                })

            vim.diagnostic.config({
                float = { border = _border },
            })

            require("lspconfig.ui.windows").default_options = {
                border = _border,
            }
        end,
    },
    -- INFO: Dependencies
    {
        "williamboman/mason.nvim",
        lazy = true,
        opts = {
            ui = {
                border = "rounded",
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        },
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = true,
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        lazy = true,
    },
    {
        -- Allows extra capabilities provided by nvim-cmp
        "hrsh7th/cmp-nvim-lsp",
        lazy = true,
    },
}
