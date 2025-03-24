local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load all plugin specs from the plugins directory
local plugin_modules = {
  "user.plugins.whichkey",
  "user.plugins.nvim-tree",
  "user.plugins.bufferline",
  "user.plugins.web-devicons",
  "user.plugins.feline",
  "user.plugins.treesitter",
  "user.plugins.indent-blankline",
  "user.plugins.colorscheme",
  "user.plugins.telescope",
  "user.plugins.lsp-config",
  "user.plugins.completion",
  "user.plugins.gitsigns",
  "user.plugins.harpoon",
  "user.plugins.oil",
  "user.plugins.noice",
  "user.plugins.flash",
  "user.plugins.colorizer",
  "user.plugins.mini",
  "user.plugins.undotree",
  "user.plugins.transperent",
  "user.plugins.myplugs",
  -- "user.plugins.dev", -- Commented out as it's for local development
  "user.plugins.avante"
}

local plugins = {}

for _, module_path in ipairs(plugin_modules) do
  local ok, module = pcall(require, module_path)
  if ok then
    if type(module) == "table" then
      for _, plugin in ipairs(module) do
        table.insert(plugins, plugin)
      end
    else
      vim.notify("Module " .. module_path .. " did not return a table", vim.log.levels.WARN)
    end
  else
    vim.notify("Could not load module: " .. module_path, vim.log.levels.ERROR)
  end
end

require("lazy").setup(plugins)

