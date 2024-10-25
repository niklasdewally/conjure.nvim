vim.opt_local.commentstring= '$ %s'

vim.lsp.start({
  name = "conjure",
  cmd = {'conjure','lsp'},
})

-- load snippets
local ok,vscode_snipper_loader = pcall(require,"luasnip.loaders.from_vscode")
if ok then
  local dirname = vim.fs.dirname
  local package_dir = string.sub(dirname(dirname(debug.getinfo(1,'S').source)),2)
  local snippet_path = package_dir .. "/vscode-snippets"
  vscode_snipper_loader.load({paths = snippet_path})
end

-- comments and formatting stuff
vim.o.commentstring="$ %s"
vim.o.comments="b:$"
vim.o.formatoptions="croqnl1jpa"
vim.o.shiftwidth=2
vim.o.expandtab=true
