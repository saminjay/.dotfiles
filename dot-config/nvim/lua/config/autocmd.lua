local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

autocmd("BufEnter", {
    pattern = "*.env",
    group = augroup("__env", { clear = true }),
    callback = function(args)
        vim.diagnostic.enable(false, { bufnr = args.buf })
    end,
})

autocmd("TextYankPost", {
    group = augroup("HighlightYank", { clear = true }),
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({
            higroup = "IncSearch",
            timeout = 400,
        })
    end,
})
