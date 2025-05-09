return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "SmiteshP/nvim-navic",               lazy = false },
    { "williamboman/mason.nvim",           config = true }, -- Ensure Mason is installed
    { "williamboman/mason-lspconfig.nvim", config = true }, -- Mason LSP integration
  },
  config = function()
    local lspconfig = require("lspconfig")
    local navic = require("nvim-navic")

    -- Common on_attach function
    local on_attach = function(client, bufnr)
      navic.attach(client, bufnr)
    end
    -- Language server configurations
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          completion = { callSnippet = "Replace" },
          workspace = { checkThirdParty = false },
        },
      },
    })
    lspconfig.gopls.setup({})
    lspconfig.ruby_lsp.setup({
      cmd = { vim.fn.expand("~/.rbenv/shims/ruby-lsp") }, -- Correct the command to use the ruby shim
    })
    lspconfig.markdown_oxide.setup({})
    lspconfig.rust_analyzer.setup({})
    lspconfig.gopls.setup({})
    lspconfig.astro.setup({})
  end,
}
