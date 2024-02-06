require('plugins')
require("toggleterm").setup{}
require('treesitter')
local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(vimrc)






--
--				THEME
--

vim.cmd [[colorscheme kanagawa]]
vim.cmd [[set termguicolors]]
vim.cmd [[let g:airline_theme='base16']]






--
--				AIRLINE
--

vim.cmd[[let g:airline#extensions#tabline#enabled = 1]]


--
--				CURSORLINE
--

vim.cmd[[let g:airline_colornum_enabled = 1]]
vim.cmd[[set cursorline]]
vim.cmd[["hi clear CursorLine]]


--
--				TELESCOPE
--


vim.cmd[[nnoremap <leader>t :Telescope<cr>]]
vim.cmd[[nnoremap <leader>f :Telescope find_files<cr>]]
vim.cmd[[nnoremap <leader>b :Telescope buffers<cr>]]
