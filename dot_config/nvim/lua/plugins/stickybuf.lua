return {
  'stevearc/stickybuf.nvim',
  opts = {},
  config = function()
    -- auto-pin neo-tree, aerial, harpoon when their window opens
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "neo-tree", "aerial", "harpoon" },
      callback = function()
        require("stickybuf").pin()
      end,
    })
  end,
}
