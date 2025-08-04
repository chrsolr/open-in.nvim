# open-in.nvim

Open your browser or file explorer — all from Neovim.

open-in.nvim is a lightweight Neovim plugin that helps you jump from code to context. Whether you want to Google a term or open your file's directory, this plugin lets you do it instantly — in your default browser or native file explorer.

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
  "chrsolr/open-in.nvim",
  config = function()
    require("open-in").setup()
  end,
}


# Packer
use {
  "chrsolr/open-in.nvim",
  config = function()
    require("open-in").setup()
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

