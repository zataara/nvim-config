local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- File explorer
map("n", "<C-n>", ":NvimTreeToggle<CR>", opts)

-- Bufferline cycling
map("n", "<Tab>", ":BufferLineCycleNext<CR>", opts)
map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", opts)

-- Line movement (normal mode)
map("n", "<Home>", "^", opts)
map("n", "<End>", "$", opts)

-- Line movement (insert mode)
map("i", "<Home>", "<C-o>^", opts)
map("i", "<End>", "<C-o>$", opts)

-- Select all
map("n", "<leader>a", "ggVG", opts)


