vim.cmd('packadd packer.nvim')

return require('packer').startup(
		function()
				use {
						 'nvim-telescope/telescope.nvim',
						requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
				}

				use {
  "folke/todo-comments.nvim",
  requires = "nvim-lua/plenary.nvim",
  config = function()
    require("todo-comments").setup {}
  end
}

use {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

use {
  'glepnir/galaxyline.nvim',
    branch = 'main',
    -- some optional icons
		config = function() require "galaxyline" end,
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
}

use { "glepnir/zephyr-nvim", }
		end
		)
