# open.nvim

A simple Neovim plugin that lets you search Google directly from your editor with a custom `:SearchGoogle` command. Works across macOS, Linux, and Windows (including WSL).

More features coming soon!

---

## Features

- Open a Google search for any query from Neovim.
- Cross-platform support:
  - macOS (`open`, with optional Google Chrome support)
  - Linux (`google-chrome`, `chromium`, or `xdg-open`)
  - Windows & WSL (`start` / `cmd.exe`)
- Minimal dependencies. Just needs a web browser.

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

## Usage

```sh
:SearchGoogle your search terms here
```

## Requirements

- Neovim ≥ 0.8.0
- A supported web browser installed:
  - macOS: Safari or Google Chrome
  - Linux: google-chrome, chromium, or xdg-open
  - Windows / WSL: Browser accessible via start or cmd.exe

