return 	{
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
}