local option = vim.opt
local buffer = vim.b
local global = vim.g

-- Globol Settings --
option.showmode = false
option.backspace = { "indent", "eol", "start" }
option.scrolloff = 5
option.tabstop = 4
option.shiftwidth = 4
option.expandtab = true
option.shiftround = true
option.autoindent = true
option.smartindent = true
option.number = true
option.relativenumber = true
option.wildmenu = true
option.hlsearch = false
option.ignorecase = true
option.smartcase = true
option.completeopt = { "menuone", "noselect" }
option.cursorline = true
option.termguicolors = true
option.signcolumn = "yes"
option.autoread = true
option.title = true
option.swapfile = false
option.backup = false
option.updatetime = 50
option.mouse = "a"
option.undofile = true
-- option.undodir = vim.fn.expand('$HOME/.local/share/nvim/undo')
vim.opt.undodir = vim.fn.expand('$HOME/.local/share/nvim/undo')
option.exrc = true
option.wrap = false
option.splitright = true
-- option.clipboard = "unnamedplus"
vim.cmd [[
autocmd ColorScheme * highlight Visual term=reverse cterm=reverse gui=reverse
]]

--vim.api.nvim_create_autocmd({'cterm=reverse'})

-- Buffer Settings --
-- buffer.fileenconding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- markdown
vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, { pattern = { '*.md', '*.txt' }, command = 'setlocal wrap' })

