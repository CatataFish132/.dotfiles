return {
  { "folke/lazy.nvim" }, -- Self-manage Lazy
  { "nvim-telescope/telescope.nvim", tag = "0.1.6", dependencies = { "nvim-lua/plenary.nvim" } },
  { "catppuccin/nvim", name = "catppuccin" }, -- Color scheme
    { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "neovim/nvim-lspconfig" },
  { "hrsh7th/nvim-cmp", dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    }
  },
    { "L3MON4D3/LuaSnip" },                   -- Snippets engine
      { "ray-x/lsp_signature.nvim" },
}
