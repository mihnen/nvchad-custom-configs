local plugins = {
	{
		"jose-elias-alvarez/null-ls.nvim",
		event = "VeryLazy",
		opts = function()
			return require "custom.configs.null-ls"
		end,
	},
	{
		"f-person/git-blame.nvim",
	  event = "BufRead",
	  config = function()
	    vim.cmd "highlight default link gitblame SpecialComment"
	    vim.g.gitblame_enabled = 1
	    vim.g.gitblame_virtual_text_column = 100
	    vim.g.gitblame_message_template = "<author> • <date> • <sha> • <summary>"
	  end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			require "plugins.configs.lspconfig"
			require "custom.configs.lspconfig"
		end,
	},
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"clangd",
				"clang-format",
			}
		}
	},
	{
		"nvim-tree/nvim-tree.lua",
		opts = {
			git = {
				enable = true,
			},
			renderer = {
				highlight_git = true,
				icons = {
					show = {
						git = true,
					},
				},
			},
			view = {
				adaptive_size = true
			},
		}
	},
	{
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",

        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        -- "vue", "svelte",

       -- low level
        "c",
        "cpp",
        "rust",
        "zig",
        "go",

        "python",
        "markdown",
        "markdown_inline",
        "c_sharp",
        "doxygen",
        "latex",
        "rst",
        "yaml",
      },
      indent = {
      	enable = true
      },
    },
  }
}
return plugins