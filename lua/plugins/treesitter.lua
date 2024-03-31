-- Syntax highlighting
-- https://github.com/nvim-treesitter/nvim-treesitter

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")

    config.setup({
      ensure_installed = {
        "css",
        "scss",
        "csv",
        "tsx",
        "gdscript",
        "html",
        "json",
        "markdown",
        "prisma",
        "sql",
        "yaml",
        "xml",
        "python",
        "javascript",
        "typescript",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "ruby",
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
    })
  end,
}
