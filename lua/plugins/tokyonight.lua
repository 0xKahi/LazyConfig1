return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  opts = {

    style = 'moon',
    transparent = true,
    styles = {
      -- Style to be applied to different syntax groups
      -- Value is any valid attr-list value for `:help nvim_set_hl`
      comments = { italic = true },
      keywords = { italic = true },
      functions = {},
      variables = {},
      -- Background styles. Can be "dark", "transparent" or "normal"
      sidebars = 'dark', -- style for sidebars, see below
      floats = 'transparent', -- style for floating windows
    },

    -- Change the "hint" color to the "orange" color, and make the "error" color bright red
    on_colors = function(colors)
      colors.border_highlight = '#8cf67a'
    end,

    on_highlights = function(highlights, colors)
      local function set_highlight(groups, style)
        for _, group in ipairs(groups) do
          highlights[group] = style
        end
      end

      -- interface purple
      set_highlight({ '@lsp.type.interface.typescriptreact' }, { fg = '#6095FF' })
      -- tky red/pink
      set_highlight({ '@keyword.operator', '@operator' }, { fg = '#fca7ea' })
      -- red
      set_highlight({ '@keyword.import', '@keyword.return' }, { fg = '#f97e9d' })
      -- html tag red
      set_highlight({ '@tag.builtin.tsx' }, { fg = '#ff757f' })
      -- yellow
      set_highlight({ '@lsp.type.type', '@type.builtin' }, { fg = '#E5D97D' })
      -- neon yellow
      set_highlight({ '@boolean', '@number', '@constant.builtin' }, { fg = '#ffe96c' })
      -- tky moon orange
      set_highlight({ '@tag.attribute.tsx' }, { fg = colors.orange })
      -- enum orange
      set_highlight({ '@lsp.type.enum' }, { fg = '#ffbfa6' })
      -- weird brown
      set_highlight({ '@lsp.type.namespace.typescriptreact' }, { fg = '#D1C5C0' })
      -- Neon blue
      set_highlight({ '@tag.tsx' }, 'PreProc')
      -- white
      set_highlight({ '@lsp.type.parameter' }, { fg = colors.fg, underline = true })
      -- light blue
      set_highlight({ '@string' }, { fg = '#a4d6ff' })
      -- tky purple
      set_highlight({ 'NeoTreeGitModified' }, { fg = colors.magenta })
      -- light class purple
      set_highlight({ '@lsp.typemod.class.defaultLibrary.typescriptreact', '@lsp.type.class' }, { fg = '#b4baff' })
      -- tky green1
      set_highlight({ '@lsp.type.enumMember' }, '@Property')
      -- tky green
      set_highlight({ 'NeoTreeGitUntracked' }, { fg = colors.green })
    end,
    plugins = {
      auto = true,
    },
  },
}
