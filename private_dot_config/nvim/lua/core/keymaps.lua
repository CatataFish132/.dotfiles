local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader key (Space)
vim.g.mapleader = " "

-- File navigation
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)  -- Find files
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)   -- Search text

-- Basic commands
map("n", "<leader>w", "<cmd>w<cr>", opts)   -- Save file
map("n", "<leader>q", "<cmd>q<cr>", opts)   -- Quit

-- Toggle nvim-tree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", opts)

-- LSP Keymaps
map("n", "gd", vim.lsp.buf.definition, opts) -- Go to definition
map("n", "K", vim.lsp.buf.hover, opts)       -- Show documentation
map("n", "<leader>rn", vim.lsp.buf.rename, opts) -- Rename symbol

-- GIT Command
map("n", "<leader>gg", "<cmd>LazyGit<cr>", opts)
