-- Snippet engine and snippet template
return {
	"SirVer/ultisnips", dependencies = {
  	"honza/vim-snippets",
  },
  event = "InsertEnter",
  config = function()
		-- Expand snippets from UltiSnips with tab
		vim.g.UltiSnipsExpandTrigger="<tab>"
		vim.g.UltiSnipsJumpForwardTrigger="<tab>"
		vim.g.UltiSnipsJumpBackwardTrigger="<s-tab>"
		vim.g.UltiSnipsSnippetDirectories = vim.fn.stdpath "config" .. "/lua/custom/snippets"
  end,
}