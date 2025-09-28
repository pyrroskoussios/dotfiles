

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.4',
	-- or                            , branch = '0.1.x',
  	requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
	  "loctvl842/monokai-pro.nvim",
	  config = function()
	    require("monokai-pro").setup()
	  end
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use("mbbill/undotree")

  use("tpope/vim-fugitive")

  use({
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
	    -- LSP Support
	    {'neovim/nvim-lspconfig'},             -- Required
	    {                                      -- Optional
	      'williamboman/mason.nvim',
	      run = function()
		pcall(vim.cmd, 'MasonUpdate')
	      end,
	    },
	    {'williamboman/mason-lspconfig.nvim'}, -- Optional

	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},     -- Required
	    {'hrsh7th/cmp-nvim-lsp'}, -- Required
	    {'L3MON4D3/LuaSnip'},     -- Required
	  }
  })

  use("eandrju/cellular-automaton.nvim")

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }


   use {
     "goolord/alpha-nvim",
     config = function ()
         local alpha = require'alpha'
         local dashboard = require'alpha.themes.dashboard'

         dashboard.section.header.val = {          
             [[                                                                     ]], 
             [[@@@@@@@   @@@@@@@    @@@@@@    @@@@@@@   @@@@@@   @@@  @@@  @@@@@@@@ ]], 
             [[@@@@@@@@  @@@@@@@@  @@@@@@@@  @@@@@@@@  @@@@@@@@  @@@@ @@@  @@@@@@@@ ]], 
             [[@@!  @@@  @@!  @@@  @@!  @@@  !@@       @@!  @@@  @@!@!@@@  @@!      ]], 
             [[!@!  @!@  !@!  @!@  !@!  @!@  !@!       !@!  @!@  !@!!@!@!  !@!      ]], 
             [[@!@  !@!  @!@!!@!   @!@!@!@!  !@!       @!@!@!@!  @!@ !!@!  @!!!:!   ]], 
             [[!@!  !!!  !!@!@!    !!!@!!!!  !!!       !!!@!!!!  !@!  !!!  !!!!!:   ]],  
             [[!!:  !!!  !!: :!!   !!:  !!!  :!!       !!:  !!!  !!:  !!!  !!:      ]], 
             [[:!:  !:!  :!:  !:!  :!:  !:!  :!:       :!:  !:!  :!:  !:!  :!:      ]],
             [[ :::: ::  ::   :::  ::   :::   ::: :::  ::   :::   ::   ::   :: :::: ]], 
             [[:: :  :    :   : :   :   : :   :: :: :   :   : :  ::    :   : :: ::  ]], 
             [[                                                                     ]]
         }
             
         dashboard.section.buttons.val = {
             dashboard.button("n", "New File", ":ene <BAR> startinsert <CR>"),
             dashboard.button("f", "Browse Files", ":e ~/  <CR>"),
             dashboard.button("c", "Configuration", ":e ~/.config/nvim/ <CR>"),
             dashboard.button("q", "Quit Neovim", ":qa<CR>"),
         }

         --dashboard.section.buttons.opts.hl = "MoreMsg"
         dashboard.section.header.opts.hl = "Keyword"

         alpha.setup(dashboard.config)
     end
   }
    
   use('nvim-tree/nvim-web-devicons')

   use {
       'nvim-tree/nvim-tree.lua',
       requires = {
           'nvim-tree/nvim-web-devicons', -- optional
       },
       config = function()
           require("nvim-tree").setup {}
       end
   }
end)
