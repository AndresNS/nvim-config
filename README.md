# Neovim Configuration

This document serves as a guide to my Neovim configuration, including keybindings, plugins, and other customizations. Use it as a reference for navigating and maintaining the setup.

---

## Table of Contents

1. [Installation](#installation)
2. [Keybindings](#keybindings)
3. [Theme and Appearance](#theme-and-appearance)
4. [LSP and Code Features](#lsp-and-code-features)
5. [Troubleshooting and Notes](#troubleshooting-and-notes)

---

## Installation

1. **Clone Configuration Repository**

```bash
git clone <your-repo-url> ~/.config/nvim
```

## Keybindings

### General

- Editing

  - `P`: pastes before the cursor
  - `p`: pastes after the cursor
  - [VISUAL] `Shift + J/K` Move highlighted lines up or down.

### Telescope

- Search Files and Text:
  - `<leader>ff`: Open Telescope to search for files.
  - `<leader>fg`: Open Telescope for live grep (search within file contents).
  - `<Space><space>`: Open recently used files with Telescope.

### File Explorer (Neo-Tree)

- File Tree Navigation:
  - `<C-n>`: Toggle the Neo-Tree file explorer.

### Linting and Formatting (none-ls)

- Format Current Buffer:
  - `<leader>gf`: Format the current file using the configured formatted.

### LSP (Language Server Protocol)

- Navigation:
  - `gd`: Go to definition.
  - `gi`: Go to implementation.
  - `K`: Show hover information.
  - `<leader>rn`: Rename symbol.
  - `<leader>ca`: Show available code actions.
- Diagnostics:
  - `<space>e`: Display full warning and error messages.

### Completion and Snippets

- Completions:
  - `<C-b>`: Scroll documentation up.
  - `<C-f>`: Scroll documentation down.
  - `<C-Space>`: Trigger completion menu.
  - `<C-e>`: Abort completion.
  - `<CR>`: Confirm the selected completion.
