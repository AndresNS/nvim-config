-- Fuzzy finder
-- https://github.com/nvim-telescope/telescope.nvim

-- Uses telescope ui to select list prompts
-- https://github.com/nvim-telescope/telescope-ui-select.nvim

return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")

      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<Space><space>", builtin.oldfiles, {})
      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      --vim.keymap.set("n", "<C-p>", builtin.git_files, {})
      --vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
      --vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
      --vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, opts)
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
