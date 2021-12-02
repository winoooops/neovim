return require('packer').startup(
    function()
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'
        -- gruvbox theme
        use {
            "ellisonleao/gruvbox.nvim",
            requires = {"rktjmp/lush.nvim"}
        }
        -- tokyonight theme use 'folke/tokyonight.nvim'

        
        -- which-key
        use {
            "folke/which-key.nvim", 
            event = "VimEnter", 
            config = [[require('config.which-key')]]
        }    
        -- alpha nvim
        use {
            'goolord/alpha-nvim', 
            event = 'VimEnter',
            config = function() 
                require('config.alpha')
            end
        }

        -- Auto format tools
        use({ "sbdchd/neoformat", cmd = { "Neoformat" } })

        -- A list of colorscheme plugin you may want to try. Find what suits you.
        use "lifepillar/vim-gruvbox8"
        use "navarasu/onedark.nvim"
        use "sainnhe/edge"
        use "sainnhe/sonokai"
        use "sainnhe/gruvbox-material"
        use "shaunsingh/nord.nvim"
        use "NTBBloodbath/doom-one.nvim"
        use "sainnhe/everforest"
        use "EdenEast/nightfox.nvim"

        -- use({ "akinsho/bufferline.nvim", event = "VimEnter", config = [[require('config.bufferline')]] })

        -- Highlight URLs inside vim
        use({"itchyny/vim-highlighturl", event = "VimEnter"})
        
        -- show git change
        use({"mhinz/vim-signify", event = 'BufEnter'})
        -- colorful status line and theme
        use({"vim-airline/vim-airline-themes", after = 'vim-signify',})
        use({"vim-airline/vim-airline", after = 'vim-airline-themes',})
        use({ "akinsho/bufferline.nvim", event = "VimEnter", config = [[require('config.bufferline')]] })
    end
)
