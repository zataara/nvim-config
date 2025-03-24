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
