local M = {}

function M.setup()
  local gs = require("open.google-search")

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
end

return M
