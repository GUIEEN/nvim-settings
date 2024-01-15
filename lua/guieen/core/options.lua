-------------------------------
-- Access to the Vim Global variables
-------------------------------
local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
local tab_size = 2
opt.tabstop = tab_size
opt.shiftwidth = tab_size
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = true -- prevent text from wrapping

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true -- color scheme can work like iterm2
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start" -- makes backspace key work properly

-- clipboard
-- force neovim to use the system clipboard when you paste
-- anything with the yank/delete/etc operator
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- opt.iskeyword:append("-") -- make dash as a part of the word
