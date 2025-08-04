local M = {}

function M.setup()
  local gs = require("open.google-search")
  local oie = require("open.file_explorer")

  vim.api.nvim_create_user_command("GoogleSearch", function(opts)
    local query = table.concat(opts.fargs, " ")

    if query == "" then
      print("Please enter a search query.")
      return
    end

    gs.google_search(query)
  end, {
    nargs = "+",
    complete = "file",
  })

  vim.api.nvim_create_user_command("OpenInExplorer", oie.file_explorer, {})
end

return M
