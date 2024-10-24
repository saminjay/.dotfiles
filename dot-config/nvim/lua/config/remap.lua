-- setup leaders before
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set({ "n", "x", "o" }, "<leader>", "<nop>")
vim.keymap.set({ "n", "x", "o" }, "<localleader>", "<nop>")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

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
vim.keymap.set({ "n", "x" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+y$]]) -- 'Y' is remapped to 'y$' in nvim

-- deletes to the void register
vim.keymap.set({ "n", "x" }, "<leader>d", [["_d]])
vim.keymap.set("n", "<leader>D", [["_D]])

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

-- TODO:
-- Make these local function and pass the functions directly to set()
function MoveLineDown()
    local ok = pcall(
        vim.api.nvim_exec2,
        string.format([['<,'>m '>+%d]], vim.v.count1),
        {}
    )
    vim.cmd([[normal! gv=gv]])
    if not ok then
        vim.notify("On the last line of the file")
    end
end

function MoveLineUp()
    local ok = pcall(
        vim.api.nvim_exec2,
        string.format([['<,'>m '<-%d]], vim.v.count1 + 1),
        {}
    )
    vim.cmd([[normal! gv=gv]])
    if not ok then
        vim.notify("On the first line of the file")
    end
end

-- move selected lines up and down
vim.keymap.set("x", "J", ":<C-U>lua MoveLineDown()<CR>", { silent = true })
vim.keymap.set("x", "K", ":<C-U>lua MoveLineUp()<CR>", { silent = true })
