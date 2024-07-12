return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      javascript = { { 'prettierd', 'prettier', 'biome' } },
      typescript = { { 'prettierd', 'prettier', 'biome' } },
      javascriptreact = { { 'prettierd', 'prettier', 'biome' } },
      typescriptreact = { { 'prettierd', 'prettier', 'biome' } },
      css = { 'prettier' },
      html = { 'prettier' },
      json = { 'prettier' },
      yaml = { 'prettier' },
      markdown = { 'prettier' },
      lua = { 'stylua' },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
  },
}
