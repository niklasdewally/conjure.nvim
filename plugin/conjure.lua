if 1 ~= vim.fn.has "nvim-0.11.0" then
  vim.api.nvim_err_writeln "conjure.nvim requires at least nvim-0.11.0."
  return
end

if vim.g.conjure_use_oxide_lsp then
  vim.lsp.enable('conjure-oxide')
else
  vim.lsp.enable('conjure')
end
