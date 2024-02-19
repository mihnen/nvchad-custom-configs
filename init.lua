
-- if vim.fn.has("gui_running") then
--   vim.opt.guifont = "JetBrains Mono"
-- end

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"
vim.opt.listchars:append "tab:«»"

vim.opt.cursorline = true
vim.opt.cursorlineopt = "both"

-- Locate python3 using PATH -----------------------------------------------------------------------

local python_path = vim.fn.exepath("python3")

if python_path == nil or python_path == "" then
  python_path = vim.fn.exepath("python")
end

vim.g.python3_host_prog = python_path

-- Needed to enable providers. nvchad defaults these to off ----------------------------------------

local enable_providers = {
   "python3_provider",
   -- and so on
}

for _, plugin in pairs(enable_providers) do
   vim.g["loaded_" .. plugin] = nil
   vim.cmd("runtime " .. plugin)
end

----------------------------------------------------------------------------------------------------

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

-- if has('macunix') then
--    vim.g.python3_host_prog = "/usr/local/bin/python3"
--    vim.g.python2_host_prog = "/usr/local/bin/python2"
-- elseif has('unix')
--    vim.g.python3_host_prog = "/usr/bin/python3"
--    vim.g.python2_host_prog = "/usr/bin/python2"
-- elseif has('win32') || has('win64')
--    vim.g.python3_host_prog = "python"
--    vim.g.python2_host_prog = "python2"
-- end
