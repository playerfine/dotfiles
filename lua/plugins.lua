local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path}
)

end

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'navarasu/onedark.nvim'
  use {
	'nvim-treesitter/nvim-treesitter',
	run = ':TSUpdate'
	}

  use {
    'nvim-lualine/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
  use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim',} }
	}

	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use {'neovim/nvim-lspconfig' }
	use "jose-elias-alvarez/null-ls.nvim"
	use "jose-elias-alvarez/nvim-lsp-ts-utils"

	use {'kyazdani42/nvim-web-devicons', run = 'make' }

  if packer_boostrap then 
    require('packer').sync()
  end
end)
