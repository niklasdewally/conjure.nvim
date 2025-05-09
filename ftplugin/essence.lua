vim.opt_local.commentstring= '$ %s'

vim.lsp.start({
  name = "conjure",
  cmd = {'conjure','lsp'},
})

-- comments and formatting stuff
vim.o.commentstring="$ %s"
vim.o.comments="b:$"
vim.o.shiftwidth=2
vim.o.expandtab=true
