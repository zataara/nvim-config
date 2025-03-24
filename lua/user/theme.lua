vim.cmd("colorscheme dracula")

-- Background override
local bg = "#110F26"
vim.cmd("hi Normal guibg=" .. bg)
vim.cmd("hi NormalNC guibg=" .. bg)
vim.cmd("hi EndOfBuffer guibg=" .. bg)
vim.cmd("hi LineNr guibg=" .. bg)
vim.cmd("hi SignColumn guibg=" .. bg)
vim.cmd("hi VertSplit guibg=" .. bg)
vim.cmd("hi StatusLine guibg=" .. bg)

-- Customize indent guide
vim.cmd("highlight IblIndent guifg=#3a3a80 gui=nocombine")
