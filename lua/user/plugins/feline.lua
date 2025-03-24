local M = {
  { 
    "feline-nvim/feline.nvim", 
    branch = "0.5-compat"
  }
}

-- Configuration for feline
local setup = function()
  require("feline").setup({
    components = {
      active = {
        {
          -- Left section
          { provider = "vi_mode" },
          { provider = "file_info" },
          { provider = "git_branch" },
        },
        {
          -- Right section
          { provider = "position" },
          { provider = "line_percentage" },
        },
      },
    },
  })
end

vim.api.nvim_create_autocmd("User", {
  pattern = "LazyLoad",
  callback = function(event)
    if event.data == "feline.nvim" then
      setup()
    end
  end,
})

return M 