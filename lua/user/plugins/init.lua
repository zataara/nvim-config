-- This file exports all plugin configurations
local M = {}

function M.setup()
  -- Load all plugin configs
  require("user.plugins.whichkey")
  require("user.plugins.nvim-tree")
  require("user.plugins.bufferline")
  require("user.plugins.web-devicons")
  require("user.plugins.feline")
  require("user.plugins.treesitter")
  require("user.plugins.indent-blankline")
  require("user.plugins.colorscheme")
  
  -- Additional plugins
  require("user.plugins.telescope")
  require("user.plugins.lsp-config")
  require("user.plugins.completion")
  require("user.plugins.gitsigns")
  require("user.plugins.harpoon")
  require("user.plugins.oil")
  require("user.plugins.noice")
  require("user.plugins.flash")
  require("user.plugins.colorizer")
  require("user.plugins.mini")
  require("user.plugins.undotree")
end

return M 