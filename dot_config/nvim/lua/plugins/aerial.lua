return {
  'stevearc/aerial.nvim',
  -- Optional dependencies
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons"
  },
  opts = {
    max_width = { 40, 0.2 },
    width = nil,
    min_width = 10,
    default_direction = "prefer_right",
    placement = "edge",
    ignore = {
      -- Ignore unlisted buffers. See :help buflisted
      unlisted_buffers = false,

      -- Ignore diff windows (setting to false will allow aerial in diff windows)
      diff_windows = true,
    }
  },
}
