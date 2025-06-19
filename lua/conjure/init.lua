local M = {}

---@tag conjure.nvim
---@config { ["name"] = "INTRODUCTION" }

--- Setup function to be run by user. 
function M.setup(opts)

  -- keeping this for comptability with lazy.nvim
  --
  -- place things in ftplugin/conjure.lua (to be ran when conjure file type is
  -- detected) or plugin/conjure.lua (to be ran when nvim is started) instead.
  --
  -- see: https://zignar.net/2022/11/06/structuring-neovim-lua-plugins/
  -- https://mrcjkb.dev/posts/2023-08-22-setup.html

return M
