local _border = "rounded"

vim.lsp.enable({
    "bashls",
    "clangd",
    "css_variables",
    "cssls",
    "cssmodules_ls",
    "dockerls",
    -- "eslint",
    "gopls",
    "html",
    "jsonls",
    "lemminx",
    "lua_ls",
    "marksman",
    "pyright",
    -- "tailwindcss",
    "taplo",
    "ts_ls",
})

-- INFO: LSP keymaps
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
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
        map("gi", "lsp_implementations", "LSP: [g]oto [i]mplementation")
        map("gR", "lsp_references", "LSP: [g]oto [r]eferences")
        map("<leader>td", "lsp_type_definitions", "LSP: [t]ype [d]efinition")
        map("<leader>gd", "lsp_document_symbols", "LSP: [gd]ocument symbols")
        map(
            "<leader>ws",
            "lsp_dynamic_workspace_symbols",
            "LSP: [w]orkspace [s]ymbols"
        )

        map("K", vim.lsp.buf.hover, "LSP: hover")
        map("gD", vim.lsp.buf.declaration, "LSP: [g]oto [D]eclaration")
        map("<C-h>", vim.lsp.buf.signature_help, "LSP: signature help", "i")

        map("<leader>vd", vim.diagnostic.open_float, "Diagnostics: open float")
        map("]d", vim.diagnostic.goto_next, "Diagnostics: next")
        map("[d", vim.diagnostic.goto_prev, "Diagnostics: prev")

        -- INFO: LSP config
        local cmp_lsp = require("cmp_nvim_lsp")
        local capabilities = vim.tbl_deep_extend(
            "force",
            {},
            vim.lsp.protocol.make_client_capabilities(),
            cmp_lsp.default_capabilities()
        )
    end,
})

-- INFO: Diagnostics
vim.diagnostic.config({
    virtual_lines = true,
    virtual_text = true,
    float = {
        focusable = false,
        style = "minimal",
        border = _border,
        source = true,
        header = "",
        prefix = "",
    },
})

vim.lsp.handlers["textDocument/hover"] = vim.lsp.buf.hover({ border = _border })
-- vim.lsp.with(vim.lsp.handlers.hover, {
--     border = _border,
-- })

vim.lsp.handlers["textDocument/signatureHelp"] =
    vim.lsp.buf.signature_help({ border = _border })
-- vim.lsp.with(vim.lsp.handlers.signature_help, {
--     border = _border,
-- })
