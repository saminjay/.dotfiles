-- disabled Perl and Ruby support
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

vim.g.netrw_bufsettings = "noma nomod nu nobl nowrap ro rnu"
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 15

vim.g.editorconfig = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

vim.opt.mouse = "a"

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.sidescroll = 1
vim.opt.sidescrolloff = 4

vim.opt.list = true
vim.opt.listchars = {
    nbsp = "󱁐",
    trail = "",
    precedes = "◀",
    extends = "▶",
    tab = "│󱦰",
    leadmultispace = "│   ",
}

-- no backup but store undos
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.inccommand = "split"

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "81,101"

vim.opt.timeout = false
vim.opt.ttimeout = false

vim.opt.showmode = false

vim.opt.fillchars = { fold = " " }
vim.opt.foldtext = ""
vim.opt.foldenable = true
vim.opt.foldlevel = 2
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.g.markdown_folding = 1 -- enable markdown folding

vim.opt.spell = true
vim.opt.spelloptions = {
    "camel",
    "noplainbuffer",
}
vim.opt.spellcapcheck = ""
