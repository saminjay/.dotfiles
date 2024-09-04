local builtin = require('telescope.builtin')
local telescopeConfig = require("telescope.config")

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>h', builtin.help_tags, {})

return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
        defaults = {
            -- `hidden = true` is not supported in text grep commands.
            vimgrep_arguments = {
                unpack(telescopeConfig.values.vimgrep_arguments), -- default config
                "--hidden",
                "--glob",
                "!**/.git/*",
            },
        },
        pickers = {
            find_files = {
                -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
                find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
            },
        },
    },
}
