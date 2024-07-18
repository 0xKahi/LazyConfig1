-- plugins/telescope.lua:
return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  -- or                              , branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local actions = require('telescope.actions')
    require('telescope').setup({
      defaults = {
        layout_config = {
          preview_width = 0.65,
          horizontal = {
            size = {
              width = '95%',
              height = '95%',
            },
          },
        },
        mappings = {
          n = {
            ['q'] = actions.close,
          },
        },
      },
    })
    require('telescope').load_extension('noice')
  end,
}
