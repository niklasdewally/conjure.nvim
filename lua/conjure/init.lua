local M = {}

---@tag conjure.nvim
---@config { ["name"] = "INTRODUCTION" }

--- Setup function to be run by user. 
function M.setup(opts)
  vim.lsp.enable('conjure')
end


return M
