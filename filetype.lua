-- filetype detection for essence and nvim
-- https://neovim.io/news/2022/04#filetypelua

vim.filetype.add({
  extension = {
    essence = 'essence',
    eprime = 'essence',
    param = 'essence',
    rule = 'essence',
    solution = 'essence',
    minion = 'minion',
  },

  pattern = {
    ['.*%.essence%..*'] = 'essence',
    ['.*%.eprime%..*'] = 'essence',
    ['.*%.minion%..*'] = 'minion',
    -- fallback match on contents
    ['.*'] = {
      function(path,bufnr) 
        local content = vim.api.nvim_buf_get_lines(bufnr, 0, 1, false)[1] or ''
        -- recognise files starting with language Essence... / language ESSENCE...
        if vim.regex([[^language \(Essence\|ESSENCE\).*$]]):match_str(content) ~= nil then
          return 'essence'
        -- recognise files with first line MINION 3
        elseif vim.regex([[^MINION 3 *$]]):match_str(content) ~= nil then
          return 'minion'
        end
      end,
    { priority = -math.huge },
    }
  }
})
