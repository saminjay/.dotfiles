--  rose-pine CONFIG
local rose_pine = {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,    -- load on startup
    priority = 1000, -- high priority, load before everything else
    config = function()
        require("rose-pine").setup({
            enable = {
                terminal = true,
            },
            styles = {
                bold = true,
                italic = true,
                transparency = true,
            },
        })
        -- load the colorscheme here
        vim.cmd.colorscheme("rose-pine-moon")
    end,
}


local lualine = {
    'nvim-lualine/lualine.nvim',
    event = "ColorScheme",
    config = function()
        local custom_rose_pine = require("lualine.themes.rose-pine")
        custom_rose_pine.insert.c.bg = "None"
        custom_rose_pine.command.c.bg = "None"
        custom_rose_pine.replace.c.bg = "None"
        custom_rose_pine.visual.c.bg = "None"
        custom_rose_pine.normal.c.bg = "None"

        require "lualine".setup {
            options = {
                theme = custom_rose_pine,
                component_separators = '',
                section_separators = {
                    left = '',
                    right = '',
                },
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'branch', 'diagnostics' },
                lualine_c = { 'filename' },
                lualine_x = { 'encoding' },
                lualine_y = { 'filetype', 'progress' },
                lualine_z = { 'location' },
            },
            inactive_sections = {
                lualine_a = { 'filename' },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = { 'location' },
            },
            tabline = {},
            extensions = {},
        };
    end
}

return {
    -- tokyo_night,
    rose_pine,
    lualine,
    -- Status updates for LSP
    -- FIX: not working properly, test and fix
    { 'j-hui/fidget.nvim', opts = {} },

    -- INFO: Dependencies
    {
        'nvim-tree/nvim-web-devicons',
        lazy = true,
    },
}
