local cmp = require("cmp")
cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(), -- Trigger completion
    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm selection
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" }, -- LSP-based completions
    { name = "buffer" },   -- Current buffer text
    { name = "path" },     -- File paths
  }),
})
