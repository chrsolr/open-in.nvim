local M = {}

function M.google_search(query)
  local encoded = query:gsub(" ", "+")
  local url = "https://www.google.com/search?q=" .. encoded

  local uname = vim.loop.os_uname().sysname
  local cmd = nil

  local function executable_exists(cmd)
    return vim.fn.executable(cmd) == 1
  end

  if uname == "Darwin" then
    if vim.fn.isdirectory("/Applications/Google Chrome.app") == 1 then
      cmd = string.format('open -a "Google Chrome" "%s"', url)
    else
      cmd = string.format('open "%s"', url)
    end
  elseif uname == "Linux" then
    if executable_exists("google-chrome") then
      cmd = string.format('google-chrome "%s" &', url)
    elseif executable_exists("chromium") then
      cmd = string.format('chromium "%s" &', url)
    elseif executable_exists("xdg-open") then
      cmd = string.format('xdg-open "%s" &', url)
    else
      print("No browser found.")
      return
    end
  elseif uname == "Windows_NT" then
    local is_wsl = vim.fn.has("wsl") == 1
    if is_wsl then
      cmd = string.format('cmd.exe /c start "" "%s"', url)
    else
      cmd = string.format('start "" "%s"', url)
    end
  else
    print("Unsupported OS: " .. uname)
    return
  end

  os.execute(cmd)
end

return M
