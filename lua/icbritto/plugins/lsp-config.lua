return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "rust_analyzer",
          "powershell_es",
          "tsserver",
          "cssls",
          "html",
          "marksman"
        },
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").lua_ls.setup {}
      require("lspconfig").rust_analyzer.setup {}
      require("lspconfig").powershell_es.setup {}
      require("lspconfig").tsserver.setup {}
      require("lspconfig").cssls.setup {}
      require("lspconfig").html.setup {}
      require("lspconfig").marksman.setup {}

      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
