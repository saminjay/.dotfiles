local todo_comments = {
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        signs = false,
    },
}

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
    -- which_key,   -- FIXIT: doesn't open properly in files
}
