local opt = require("utils").opt

local cmd = vim.cmd
local indent = 4

cmd "syntax enable"
-- cmd 'filetype plugin indent on'
opt("b", "expandtab", true)
opt("b", "shiftwidth", indent)
opt("b", "smartindent", true)
opt("b", "autoindent", true)
opt("b", "copyindent", true)
opt("b", "tabstop", indent)
opt("b", "softtabstop", indent)
opt("o", "hidden", true)
opt("o", "ignorecase", true)
opt("o", "scrolloff", 4)
opt("o", "shiftround", true)
opt("o", "smartcase", true)
opt("o", "splitbelow", true)
opt("o", "splitright", true)
opt("o", "wildmenu", true)
opt("o", "wildmode", "longest,full")
opt("o", "completeopt", "menuone,noselect")
opt("w", "number", true)
opt("w", "relativenumber", false)
opt("o", "clipboard", "unnamed,unnamedplus")
opt("o", "termguicolors", true)
opt("o", "mouse", "a")
opt("o", "timeoutlen", 300)

cmd "colorscheme miramare"
