local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

map('n', 'd', '"_d', opts)
map('v', 'd', '"_d', opts)
map('n', 'm', 'd', opts)
map('n', 'cw', '"_cw', opts)
map('v', '$', 'g_', opts)

-- hl search mappings
vim.cmd [[set hlsearch]]
vim.cmd [[let g:incsearch#auto_nohlsearch = 1]]
vim.cmd [[map n  <Plug>(incsearch-nohl-n)]]
vim.cmd [[map N  <Plug>(incsearch-nohl-N)]]
vim.cmd [[map *  <Plug>(incsearch-nohl-*)]]
vim.cmd [[map #  <Plug>(incsearch-nohl-#)]]
vim.cmd [[map g* <Plug>(incsearch-nohl-g*)]]
vim.cmd [[map g# <Plug>(incsearch-nohl-g#)]]
vim.cmd [[xmap <Leader>f <Plug>(prettier-format)]]

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
map('n', '<leader>fb', ':Telescope buffers<CR>', opts)
map('n', '<leader>fh', ':Telescope help_tags<CR>', opts)

-- Nvim-Tree
map('n', '\\', ':NvimTreeToggle<CR>', opts)

-- Bufferline
map('n', '<C-b>', ':tabprevious<CR>', opts)
map('n', '<C-n>', ':tabnext<CR>', opts)
map('n', '<C-q>', ':bdelete!<CR>', opts)
map('n', '<C-t>', ':split<CR>:ter<CR>resize 15<CR>', opts)

-- Trouble
map('n', '<leader>tt', '<cmd>TroubleToggle<cr>', opts)
map('n', '<leader>tw', '<cmd>TroubleToggle workspace_diagnostics<cr>', opts)
map('n', '<leader>td', '<cmd>TroubleToggle document_diagnostics<cr>', opts)
map('n', '<leader>tl', '<cmd>TroubleToggle loclist<cr>', opts)
map('n', '<leader>tq', '<cmd>TroubleToggle quickfix<cr>', opts)
map('n', '<leader>tr', '<cmd>TroubleToggle lsp_references<cr>', opts)
