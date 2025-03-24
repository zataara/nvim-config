local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "nvim-tree/nvim-tree.lua", config = true },
  { "akinsho/bufferline.nvim", version = "*", config = function()
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
  },
  { "nvim-tree/nvim-web-devicons" },
  { "nvim-lualine/lualine.nvim", config = true },
  { "feline-nvim/feline.nvim", branch = "0.5-compat" },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "typescript", "tsx", "lua", "json", "markdown", "bash"
        },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", config = function()
      require("ibl").setup({
        indent = {
          char = "│",
        },
        scope = {
          enabled = true,
          show_start = false,
          show_end = false,
        },
      })
    end
  },
  { "folke/tokyonight.nvim" },
  { "dracula/vim", name = "dracula" }
})
