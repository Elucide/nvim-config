local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	use ("wbthomason/packer.nvim") -- Have packer manage itself	
	use ("sainnhe/everforest")
	use ("vim-airline/vim-airline")
	use ("vim-airline/vim-airline-themes")
	use ("dense-analysis/ale")
	use ("ntpeters/vim-airline-colornum")
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use ("myusuf3/numbers.vim")
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end}
	use "rebelot/kanagawa.nvim"
	use 'nvim-tree/nvim-web-devicons'

--	use("nathom/filetype.nvim")
	use{"HampusHauffman/block.nvim", config = function()
		require("block").setup()
	end}

	use { 'gen740/SmoothCursor.nvim',
  config = function()
    require('smoothcursor').setup()
  end
}
use 'eandrju/cellular-automaton.nvim' 


	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end


end)
