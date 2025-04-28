-- core/plugins.lua
return {
  -- ... existing plugins ...
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "python", "lua", "bash", "markdown" }, -- Add languages
        highlight = { enable = true }, -- Better syntax highlighting
        indent = { enable = true },    -- Smart indentation
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = "<C-s>",
            node_decremental = "<C-backspace>",
          },
        },
      })
    end,
  },
}
