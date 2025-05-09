return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    sources = { "filesystem", "harpoon", "buffers", "git_status", },
    auto_open = false,
    open_on_start = false,
    filesystem = {
      follow_current_file = { enabled = true },
      hijack_netrw_behavior = "disabled"
    },
    source_selector = {
      winbar = true,
      statusline = false,
      sources = {
        { source = "filesystem", display_name = " Files" },
        { source = "harpoon", display_name = "Harpoon" },
        { source = "buffers", display_name = "Buffers" },
        { source = "git_status", display_name = " Git" },
      },
    },
    git_status = {
      group_empty_dirs = false,
    },
  },
  config = function()
    require("custom-plugins.neotree-harpoon").setup()
  end
}
