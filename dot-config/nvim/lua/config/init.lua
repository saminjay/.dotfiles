require("config.set")
require("config.remap")
require("config.autocmd")
require("config.lazy")

function R(name)
    require("plenary.reload").reload_module(name)
end
