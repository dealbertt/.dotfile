return
{
	"nvim-treesitter/nvim-treesitter", 
		build = ":TSUpdate",
		config = function () 
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = { "c","cpp","rust","java", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
				sync_install = false,
                auto_install = true,
				highlight = { enable = true },
                 additional_vim_regex_highlighting = false,
			})

		end,
}

