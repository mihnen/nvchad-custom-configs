local cmp = require ("cmp")

return {
  "hrsh7th/nvim-cmp",
  requires = {
    "quangnguyen30192/cmp-nvim-ultisnips",
    config = function()
      -- optional call to setup (see customization section)
      require("cmp_nvim_ultisnips").setup{}
    end,
    -- If you want to enable filetype detection based on treesitter:
    -- requires = { "nvim-treesitter/nvim-treesitter" },
  },
  opts = {
    snippet = {
      expand = function(args)
        vim.fn["UltiSnips#Anon"](args.body)
      end,
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<CR>'] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Replace,
        select = true,
      },
      ['<tab>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
          press("<ESC>:call UltiSnips#JumpForwards()<CR>")
        else
          fallback()
        end
      end, { 'i', 's' }),
      ['<S-tab>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        elseif vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
          press("<ESC>:call UltiSnips#JumpBackwards()<CR>")
        else
          fallback()
        end
      end, { 'i', 's' }),
    }),
    sources = {
      { name = "nvim_lsp" },
      -- { name = "luasnip" },
      { name = "ultisnips" }, 
      { name = "buffer" },
      { name = "nvim_lua" },
      { name = "path" },
    },
  },
}