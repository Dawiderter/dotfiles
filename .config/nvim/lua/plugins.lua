return require('packer').startup(function(use)
    --Packer
    use 'wbthomason/packer.nvim'

    --Status lines
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
	    'kdheepak/tabline.nvim',
	    requires = { 'nvim-lualine/lualine.nvim', opt = true }
    }

    --Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { 'nvim-lua/plenary.nvim' }
    }
    use "nvim-telescope/telescope-file-browser.nvim"

    --LSP
    use 'neovim/nvim-lspconfig'
    use "williamboman/mason-lspconfig.nvim"
    use 'williamboman/mason.nvim'

    --Completion and snippets
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use 'onsails/lspkind.nvim'

    --Themes
    use 'tanvirtin/monokai.nvim'
    use 'rebelot/kanagawa.nvim'
end)

