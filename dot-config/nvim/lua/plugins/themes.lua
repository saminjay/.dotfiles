local rose_pine = {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,    -- load on startup
    priority = 1000, -- high priority, load before everything else
    config = function()
        require("rose-pine").setup({
            enable = {
                terminal = true,
                legacy_highlights = true,
            },
            styles = {
                bold = true,
                italic = true,
                transparency = true,
            },
            highlight_groups = {
                Whitespace = { fg = "overlay" },
            },
        })
        -- load the colorscheme here
        vim.cmd.colorscheme("rose-pine-moon")
    end,
}

local lualine = {
    'nvim-lualine/lualine.nvim',
    event = "VeryLazy",
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

local fidget = {
    'j-hui/fidget.nvim',
    event = "VeryLazy",
    opts = {
        notification = {
            poll_rate = 10,                   -- How frequently to update and render notifications
            filter = vim.log.levels.INFO,     -- Minimum notifications level
            override_vim_notify = true,       -- Automatically override vim.notify() with Fidget

            -- Options related to the notification window and buffer
            window = {
                normal_hl = "Comment",     -- Base highlight group in the notification window
                winblend = 0,              -- Background color opacity in the notification window
                border = "rounded",        -- Border around the notification window
                zindex = 45,               -- Stacking priority of the notification window
                x_padding = 1,             -- Padding from right edge of window boundary
                y_padding = 1,             -- Padding from bottom edge of window boundary
                align = "bottom",          -- How to align the notification window
                relative = "editor",       -- What the notification window position is relative to
            },
        },
    },
}

return {
    rose_pine,
    lualine,
    fidget,
}
