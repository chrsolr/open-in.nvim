local M = {}

function M.file_explorer()
  local dirPath = vim.fn.expand("%:p:h")
  local cmd = nil

  if vim.fn.has("win32") == 1 then
    cmd = 'start "" "' .. dirPath .. '"'
  elseif vim.fn.has("mac") == 1 then
    cmd = 'open "' .. dirPath .. '"'
  elseif vim.fn.has("unix") == 1 then
    cmd = 'xdg-open "' .. dirPath .. '"'
  else
    print("Unsupported OS")
  end

  os.execute(cmd)
end

return M
