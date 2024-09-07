local opts = function ()
    local builtin = require("telescope.builtin")

    -- preferred remaps
    vim.keymap.set("n", "<leader>pf", builtin.find_files, {});
    vim.keymap.set("n", "<C-p>", builtin.git_files, {});
    vim.keymap.set("n", "<leader>ps", builtin.live_grep, {});
    vim.keymap.set("n", "<leader>pb", builtin.buffers, {});
    vim.keymap.set("n", "<leader>h", builtin.help_tags, {});
    vim.keymap.set("n", "<leader>ts", builtin.treesitter, {});

    local defaults = {
        vimgrep_arguments = {
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "--hidden",     -- show hidden files
            "--glob",       -- hide .git files
            "!**/.git/*",
        },
    };

    local pickers = {
        find_files = {
            find_command = {
                "rg",
                "--files",
                "--hidden",     -- show hidden files
                "--glob",       -- hide .git files
                "!**/.git/*",
            },
        },
    };
    return {
        defaults = defaults,
        pickers = pickers,
    };
end;

return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = opts,
};

