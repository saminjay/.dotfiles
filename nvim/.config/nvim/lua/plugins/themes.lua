-- tokyonight CONFIG
local tokyo_night = {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        -- load the colorscheme here
        vim.cmd.colorscheme("tokyonight-night")
    end,
}

-- rose-pine CONFIG
local rose_pine = { 
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,       -- load on startup
    priority = 1000,    -- high priority, load before everything else
    config = function()
        -- load the colorscheme here
        vim.cmd.colorscheme("rose-pine")
    end,
}

-- Lualine CONFIG
local colors = {
    blue   = '#80a0ff',
    cyan   = '#79dac8',
    black  = '#080808',
    white  = '#c6c6c6',
    red    = '#ff5189',
    violet = '#d183e8',
    grey   = '#303030',
}

local bubbles_theme = {
    normal = {
        a = { fg = colors.black, bg = colors.violet },
        b = { fg = colors.white, bg = colors.grey },
        c = { fg = colors.white },
    },

    insert = { a = { fg = colors.black, bg = colors.blue } },
    visual = { a = { fg = colors.black, bg = colors.cyan } },
    replace = { a = { fg = colors.black, bg = colors.red } },

    inactive = {
        a = { fg = colors.white, bg = colors.black },
        b = { fg = colors.white, bg = colors.black },
        c = { fg = colors.white },
    },
}

local lualine_config = {
    options = {
        theme = bubbles_theme,
        component_separators = '',
        section_separators = {
            left = '',
            right = '',
        },
    },
    sections = {
        lualine_a = {
            { 
                'mode',
                -- separator = { left = '' },
                right_padding = 2,
            },
        },
        lualine_b = { 'filename', 'branch' },
        lualine_c = {
            '%=', --[[ add your center compoentnts here in place of this comment ]]
        },
        lualine_x = {},
        lualine_y = { 'filetype', 'progress' },
        lualine_z = {
            {
                'location',
                -- separator = { right = '' },
                left_padding = 2,
            },
        },
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

local lualine = {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = lualine_config,
}

return {
    -- tokyo_night,
    rose_pine,
    lualine,
}
