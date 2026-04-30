require("config.packages")
require("config.set")
require("config.remap")
require("config.autocmd")
require("config.lazy")
require("config.lsp")

function R(name)
    require("plenary.reload").reload_module(name)
end

--[[
-- :h standard-plugin-list
vim.cmd("packadd nvim.undotree")
vim.keymap.set("n", "<leader>u", require("undotree").open, "[u]ndotree")
--]]
