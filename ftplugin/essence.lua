vim.opt_local.commentstring= '$ %s'

vim.lsp.start({
  name = "conjure",
  cmd = {'conjure','lsp'},
})
