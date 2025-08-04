local min_version = "nvim-0.8"

if vim.fn.has(min_version) ~= 1 then
  vim.notify(string.format("open.nvim requires Neovim %s or newer.", min_version), vim.log.levels.ERROR)
end
