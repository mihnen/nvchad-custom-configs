return {
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