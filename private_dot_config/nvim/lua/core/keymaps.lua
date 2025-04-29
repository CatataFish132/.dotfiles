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

map('n', '<leader>lk', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
map('n', '<leader>lgd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
map('n', '<leader>lgD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
map('n', '<leader>lgi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
map('n', '<leader>lgo', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
map('n', '<leader>lgr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
map('n', '<leader>lgs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
map('n', '<leader>l<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
map('n', '<leader>lr', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
map({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
map({'n', 'x'}, '<leader>lf', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
map('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
map('n', '<leader>ll', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)


-- GIT Command
map("n", "<leader>gg", "<cmd>LazyGit<cr>", opts)

-- Buffers
map("n", "<leader>bb", "<cmd>:bn<CR>", opts) -- Next buffer
map("n", "<leader>bv", "<cmd>:bp<CR>", opts) -- Previous buffer
map("n", "<leader>bc", "<cmd>:bd<CR>", opts) -- Close buffer

-- Overseer
map("n", "<leader>or", "<cmd>OverseerRun<cr>", opts)   -- Search text
map("n", "<leader>oo", "<cmd>OverseerToggle<cr>", opts)   -- Search text
