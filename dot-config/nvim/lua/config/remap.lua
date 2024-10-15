vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move selected lines up and down (":m" is move command)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- "J" appends the next line with a space. This keeps the cursor at the current position
vim.keymap.set("n", "J", "mzJ`z")

-- keeps the cursor in the middle (vertically) while running these commands
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- pastes from the clipboard/+ register
vim.keymap.set({ "n", "x" }, "<leader>P", [["+P]])

-- next greatest remap ever : asbjornHaland
-- yanks to the + register/clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+y$]]) -- 'Y' is remapped to 'y$' in nvim

-- deletes to the void register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set("n", "<leader>D", [["_D]])

-- TEST: check and test
-- vim.keymap.set("n", "Q", "<nop>")

-- TODO: Write a tmux-sessionizer
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replace the current word in entire file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>")

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/config/lazy.lua<CR>");

-- Treesitter playground
vim.keymap.set("n", "<leader>TS", function()
    vim.treesitter.inspect_tree({ command = "40vnew" })
end)
