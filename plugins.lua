local plugins = {
	{
		"jose-elias-alvarez/null-ls.nvim",
		event = "VeryLazy",
		opts = function()
			return require "custom.configs.null-ls"
		end,
	},
	{
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    event = "VeryLazy",
    opts = {},
	},
	{
  -- Rainbow brackets plugin
  	"lukas-reineke/indent-blankline.nvim",
    event = "BufRead",
    config = function()
      require("indent_blankline").setup {
        use_treesitter = true,
        char = '┆',
        space_char_blankline = " ",
        show_current_context_start = true,
        show_current_context = true,
        filetype_exclude = { "help", "dashboard", "dashpreview", "NvimTree", "vista", "sagahover" },
        buftype_exclude = { "terminal", "nofile" },
		    char_highlight_list = {
		        "IndentBlanklineIndent1",
		        "IndentBlanklineIndent2",
		        "IndentBlanklineIndent3",
		        "IndentBlanklineIndent4",
		        "IndentBlanklineIndent5",
		        "IndentBlanklineIndent6",
		    },
      }
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
	    vim.g.gitblame_highlight_group = "StatusLine"
	    vim.g.gitblame_set_extmark_options = {
			  hl_mode = "combine",
			}
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