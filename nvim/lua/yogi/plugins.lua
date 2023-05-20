vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use "nvim-lua/plenary.nvim"
	use 'nvim-telescope/telescope.nvim'


	use {
		'nvim-treesitter/nvim-treesitter',
		run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
    
    use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
    use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
    use 'hrsh7th/nvim-cmp' -- Completion
    use 'hrsh7th/cmp-path' 

    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'rafamadriz/friendly-snippets'


    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    
    use 'neovim/nvim-lspconfig'

    use 'onsails/lspkind-nvim'
    use({
        "glepnir/lspsaga.nvim",
        branch = "main",
    })


    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
end)
