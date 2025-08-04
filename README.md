# open.nvim

A simple Neovim plugin that lets you search Google directly from your editor with a custom `:GoogleSearch` command. Works across macOS, Linux, and Windows (including WSL).

More features coming soon!

---

## Features

### Google Search
- Open a Google search for any query from Neovim.
- Cross-platform support:
  - macOS, Linux, Windows & WSL
- Minimal dependencies. Just needs a web browser.

### Open File Explorer
- Open the current file's directory in the file explorer.
- Cross-platform support:
  - macOS, Linux, Windows & WSL


---

## Installation

Use your favorite plugin manager.

```lua
# Lazy
{
  "chrsolr/open.nvim",
  config = function()
    require("open").setup()
  end,
}


# Packer
use {
  "chrsolr/open.nvim",
  config = function()
    require("open").setup()
  end,
}
```

## Commands

### GoogleSearch

Open a Google search for any query from Neovim.

```lua
:GoogleSearch your search terms here
```

### OpenFileExplorer

Open the current file's directory in the file explorer.

```lua
:OpenFileExplorer
```

or create a mapping:

```lua
vim.keymap.set("n", "<leader>gs", ":GoogleSearch ", { noremap = true, desc = "Search Google in browser" })
vim.keymap.set("n", "<leader>oie", ":OpenInExplorer<CR>", { noremap = true, desc = "Open file in file explorer" })
```

---

## Requirements

- Neovim ≥ 0.8.0
- A supported web browser installed:
  - macOS: Safari or Google Chrome
  - Linux: google-chrome, chromium, or xdg-open
  - Windows / WSL: Browser accessible via start or cmd.exe

