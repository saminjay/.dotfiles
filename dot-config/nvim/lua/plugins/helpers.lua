local todo_comments = {
    "folke/todo-comments.nvim",
    event = "BufRead",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        signs = false,
    },
}

local highlight_colors = {
    "brenoprata10/nvim-highlight-colors",
    opts = {},
}

-- TODO: remove after getting comfortable
local hardtime = {
   "m4xshen/hardtime.nvim",
    event = "BufRead",
   dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
   opts = {}
};

local which_key = {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        triggers = {
            { "<leader>?", mode = "nixsotc" }
        }
    },
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
        },
    },
}

return {
    todo_comments,
    highlight_colors,
    hardtime,
    -- which_key,   -- FIXIT: doesn't open properly in files
}

