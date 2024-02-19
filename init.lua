
-- if vim.fn.has("gui_running") then
--   vim.opt.guifont = "JetBrains Mono"
-- end

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"
vim.opt.listchars:append "tab:«»"

vim.opt.cursorline = true
vim.opt.cursorlineopt = "both"

-- For some reason overrides of highlights from nvchad doesn't work
-- so use this for now, see:
-- https://github.com/NvChad/NvChad/issues/863
vim.cmd [[
   augroup ilikecursorline
      autocmd VimEnter * :highlight CursorLine guibg=#1d1e1f
   augroup END
]]

vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#404040 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#404040 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#404040 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#404040 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#404040 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#404040 gui=nocombine]]

if vim.fn.has("gui_running") then
-- vim.opt.guifont = {"ProggyVector:h12:#h-slight"}
vim.opt.guifont = {"Fira Mono:h12:#h-slight"}
-- vim.opt.guifont = {"Hack:h12:#h-slight"}
-- vim.opt.guifont = {"mononoki:h12:#h-slight"}
end

vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
vim.keymap.set("n", "gt", function() vim.lsp.buf.type_definition() end, opts)
vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)

-- vim.g.vscode_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/snippets"