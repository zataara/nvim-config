return {
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        "*"; -- Highlight all files
        css = { css = true; }; -- Enable CSS features in CSS files
        html = { css = true; }; -- Enable CSS features in HTML files
      })
    end,
  }
} 