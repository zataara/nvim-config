return {
  { 
    "akinsho/bufferline.nvim", 
    version = "*", 
    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers",
          diagnostics = "nvim_lsp",
          show_buffer_close_icons = false,
          show_close_icon = false,
          separator_style = "slant",
        }
      })
    end
  }
} 