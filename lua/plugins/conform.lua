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
    formatters = {
      prettier = {
        condition = function(ctx)
          return vim.fs.find(
            {
              '.prettierrc',
              '.prettierrc.json',
              '.prettierrc.yml',
              '.prettierrc.yaml',
              '.prettierrc.json5',
              '.prettierrc.js',
              '.prettierrc.cjs',
              'prettier.config.js',
              'prettier.config.cjs',
            },
            { path = ctx.filename, upward = true }
          )[1]
        end,
      },
      biome = {
        condition = function(ctx)
          return vim.fs.find({ 'biome.json', 'biome.jsonc' }, { path = ctx.filename, upward = true })[1]
        end,
      },
    },
  },
}
