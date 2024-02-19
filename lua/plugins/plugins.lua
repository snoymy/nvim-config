-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use 'snoymy/molokai'
    use {
        'dstein64/nvim-scrollview', branch = 'main',
    }
    use 'vim-syntastic/syntastic'
    use 'octol/vim-cpp-enhanced-highlight'
    use 'simnalamburt/vim-mundo'
    use 'yuezk/vim-js'
    use 'maxmellon/vim-jsx-pretty'
    use 'alvan/vim-closetag'
    use 'yuttie/comfortable-motion.vim'
    use 'ap/vim-buftabline'
    use 'snoymy/buffer-window'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        -- tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use {
        "neoclide/coc.nvim",
        branch = 'release'
    }
    --use "hrsh7th/nvim-cmp"
    --use 'hrsh7th/cmp-nvim-lsp'
    --use 'hrsh7th/cmp-buffer'
    --use 'hrsh7th/cmp-path'
    --use 'hrsh7th/cmp-cmdline'

    use 'parkerault/onivim-theme-hybrid'
    use 'yorik1984/lualine-theme.nvim'
    use({
      'projekt0n/github-nvim-theme',
    })
    use 'wojciechkepka/vim-github-dark'
    use { "catppuccin/nvim", as = "catppuccin" }
    use {
      'gorbit99/codewindow.nvim',
      config = function()
        local codewindow = require('codewindow')
        codewindow.setup({})
        codewindow.apply_default_keybinds()
      end,
    }
    -- use {
    --   "max397574/better-escape.nvim",
    --   config = function()
    --     require("better_escape").setup()
    --   end,
    -- }
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.4',
    -- or                           , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- use {
    --   "akinsho/toggleterm.nvim", tag = '*', 
    --   config = function()
    --     require("toggleterm").setup()
    --   end
    -- }
    -- use 'habamax/vim-godot'
    use 'ziglang/zig.vim'
end)
