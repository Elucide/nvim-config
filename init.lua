require('plugins')
require("toggleterm").setup{}
require('treesitter')
local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(vimrc)
vim.loader.enable()


--
--				MY STUFF
--
--

vim.keymap.set("n", "<leader>e", "<cmd>Ex<cr>")
--vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })
vim.cmd [[set guicursor=t:ver25]]


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
vim.cmd[[let g:airline_powerline_fonts = 1]]


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
vim.cmd[[nnoremap <leader>g :Telescope live_grep<cr>]]


--
--				CELLULAR AUTOMATION
--

vim.keymap.set("n", "<leader>[", "<cmd>CellularAutomaton make_it_rain<CR>")
vim.keymap.set("n", "<leader>]", "<cmd>CellularAutomaton game_of_life<CR>")

---
---				ToggleTerm
---

vim.cmd[[nnoremap <leader><cr> :ToggleTerm direction=float<cr>]]
