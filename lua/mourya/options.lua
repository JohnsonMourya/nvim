-- [[ Setting options ]]

vim.o.guicursor = ''

vim.o.number = true
vim.o.relativenumber = true

vim.o.mouse = 'a'
vim.o.showmode = true

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.smartindent = true
vim.o.clipboard = 'unnamedplus'
vim.g.clipboard = "xclip"

vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME").."/.vim/undodir"
vim.o.undofile = true

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.scrolloff = 10
vim.o.signcolumn = 'yes'

vim.o.updatetime = 250

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.cursorline = true

vim.o.confirm = true

