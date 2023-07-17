
vim.o.encoding = 'utf-8'
vim.o.scrolloff = 0
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.laststatus = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.smartindent = true
vim.o.smartcase = true
vim.o.undofile = true
vim.o.incsearch = true
vim.o.clipboard = 'unnamed'
vim.o.termguicolors = true
vim.o.splitbelow = true

vim.cmd [[set noshowmode]]
--vim.cmd [[set guifont=Cousine\ NF:h14]]
--vim.cmd [[set guifont=GohuFont\ Nerd\ Font\ Mono\:h14]]
vim.cmd [[set guifont=Cousine\ Nerd\ Font\ Mono\:h11]]
vim.cmd [[filetype plugin on]]
vim.cmd [[filetype on]]
vim.cmd [[autocmd BufEnter * lcd %:p:h]]

vim.cmd [[colorscheme oxocarbon]]

require('lualine').setup({})
require('luatab').setup({}) 
