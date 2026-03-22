return {
  -- treesitter: add templ parser for syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "templ" },
    },
  },

  -- lsp: add templ language server
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        templ = {},
      },
    },
  },

  -- associate .templ files with the templ filetype
  {
    "LazyVim/LazyVim",
    opts = function()
      vim.filetype.add({
        extension = {
          templ = "templ",
        },
      })
    end,
  },
}
