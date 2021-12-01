return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- gruvbox theme
    use {
        "ellisonleao/gruvbox.nvim",
        requires = {"rktjmp/lush.nvim"}
    }
    use {
	"folke/which-key.nvim",
	config=function()
		require('which-key').setup {
		}
	end
	}
end)
