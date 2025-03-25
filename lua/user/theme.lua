-- Temporarily disable transparent plugin
vim.g.transparent_enabled = false

-- Set the colorscheme
vim.cmd("colorscheme dracula")

-- Create a local function for setting highlights
local function set_highlight(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- Background override
local bg = "#110F26"
set_highlight("Normal", { bg = bg })
set_highlight("NormalNC", { bg = bg })
set_highlight("EndOfBuffer", { bg = bg })
set_highlight("LineNr", { bg = bg })
set_highlight("SignColumn", { bg = bg })
set_highlight("VertSplit", { bg = bg })
set_highlight("StatusLine", { bg = bg })

-- Customize indent guide
set_highlight("IblIndent", { fg = "#3a3a80", blend = 0 })

-- Comments
set_highlight("Comment", { fg = "#6272a4", italic = true }) -- keep as-is

-- Strings (green is fine here)
set_highlight("String", { fg = "#50fa7b" })

-- Keywords (like if, else, export, etc.)
set_highlight("Keyword", { fg = "#ff79c6", bold = true })

-- Functions (use teal to differentiate)
set_highlight("Function", { fg = "#8be9fd", italic = true })

-- Numbers (make more orangey to break up the purples)
set_highlight("Number", { fg = "#ffb86c" })

-- Operators (leave pink if you like, or use yellow for contrast)
set_highlight("Operator", { fg = "#f1fa8c" })

-- Types (use cyan-ish but brighter)
set_highlight("Type", { fg = "#8be9fd", bold = true })

-- Constants (change from purple to yellow)
set_highlight("Constant", { fg = "#f1fa8c" })

-- Identifiers (like variable names — maybe orange)
set_highlight("Identifier", { fg = "#ffb86c" })

-- Special symbols (use green for now)
set_highlight("Special", { fg = "#50fa7b" })

-- Preprocessor (e.g., `#export` or `source`)
set_highlight("PreProc", { fg = "#ff79c6", bold = true })

-- Underlined text
set_highlight("Underlined", { fg = "#8be9fd", underline = true })

-- Diagnostics
set_highlight("Error", { fg = "#ff5555", bold = true })
set_highlight("WarningMsg", { fg = "#ffb86c", bold = true })

-- Search highlights
set_highlight("Search", { bg = "#44475a", fg = "#f8f8f2", bold = true })
set_highlight("IncSearch", { bg = "#ffb86c", fg = "#282a36", bold = true })

-- Visual selection
set_highlight("Visual", { bg = "#6272a4" })


-- Force syntax refresh
vim.cmd("syntax sync fromstart")
