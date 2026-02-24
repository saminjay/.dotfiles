require("config.set")
require("config.remap")
require("config.autocmd")
require("config.lazy")
require("config.lsp")

function R(name)
    require("plenary.reload").reload_module(name)
end
