return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      javascript = { { 'prettier', 'prettierd' } },
      typescript = { { 'prettier', 'prettierd' } },
      javascriptreact = { { 'biome', 'prettier', 'prettierd' } },
      typescriptreact = { { 'biome', 'prettier', 'prettierd' } },
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
