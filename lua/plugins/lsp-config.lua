-- LSP (Language Server Protocol)
-- The LSP configuration allow us to install language servers on our system and configure neovim to talk to the language servers

-- Mason: Manages LSP in our system
-- https://github.com/williamboman/mason.nvim

-- mason-lspconfig: Bridge between Mason and the lspconfig plugin
-- https://github.com/williamboman/mason-lspconfig.nvim

-- nvim-lspconfig: Sets up the communication between neovim and language servers and allow us to set keybinding for LSP actions
-- https://github.com/neovim/nvim-lspconfig

local language_servers = { "lua_ls", "html", "tsserver", "angularls", "ruby_ls", "tailwindcss" }

return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = language_servers,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local on_attach = function(_, bufnr)
        local opts = { buffer = bufnr, noremap = true, silent = true }
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
      end

      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      for _, server_name in ipairs(language_servers) do
        lspconfig[server_name].setup({
          on_attach = on_attach,
          capabilities = capabilities
        })
      end
    end,
  },
}
