return {
    { 
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,       -- load on startup
        priority = 1000,    -- high priority, load before everything else
        config = function()
            -- load the colorscheme here
            vim.cmd([[colorscheme rose-pine]])
        end,

    },
}
