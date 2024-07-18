-- personal keymap
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', { noremap = true })
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', 'U', '<C-r>', { noremap = true, desc = 'Redo' })

--- Plugin Remaps --

-- Telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', telescope.git_files, { desc = 'find files in git', noremap = true })
vim.keymap.set(
  'n',
  '<C-f>',
  telescope.current_buffer_fuzzy_find,
  { desc = 'fuzzy find in current buffer', noremap = true }
)
vim.keymap.set('n', '<leader>ff', function()
  telescope.find_files({ no_ignore = false, hidden = true })
end, { desc = '[F]ind all [F]iles', noremap = true })
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = '[F]ind [G]rep in directory', noremap = true })
vim.keymap.set(
  'n',
  '<leader>fw',
  telescope.grep_string,
  { desc = '[F]ind current [W]ord in directory', noremap = true }
)
vim.keymap.set('n', '<leader>fp', telescope.oldfiles, { desc = '[F]ind [P]ast files', silent = false, noremap = true })
vim.keymap.set(
  'n',
  '<leader>fr',
  ':Telescope lsp_references<CR>',
  { desc = '[F]ind lsp [R]eference', silent = false, noremap = true }
)
vim.keymap.set(
  'n',
  '<leader>tt',
  telescope.treesitter,
  { desc = '[T]oggle [T]reesitter', silent = false, noremap = true }
)

-- Conform (Formatter)
local conform = require('conform')
-- Keybinding for manual formatting
-- in normal mode format whole file
-- in visual mode format selected buffer only
vim.keymap.set({ 'n', 'v' }, '<leader>fm', function()
  conform.format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  })
end, { desc = '[F]or[M]at file or range (in visual mode)' })

-- Harpoon
-- personal config to setup webdev icons
local harpoonConfig = require('config.harpoon')
harpoonConfig.setup()

local harpoon = require('harpoon')

vim.keymap.set('n', '<leader>anc', function()
  harpoon:list():add()
end)
vim.keymap.set('n', '<leader>ha', function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

-- NeoTree
vim.api.nvim_set_keymap(
  'n',
  '<leader>oe',
  ':Neot reveal<CR>',
  { desc = '[O]pen [E]xplorer', noremap = true, silent = true }
)

-- LazyGit
vim.api.nvim_set_keymap('n', '<leader>lg', '<cmd>LazyGit<CR>', { desc = '[L]azy [G]it', noremap = true, silent = true })

-- Oil
vim.keymap.set('n', '<leader>oo', '<CMD>Oil --float<CR>', { desc = '[O]pen [O]il window', noremap = true })

-- copilot
vim.keymap.set('i', '<right>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true

-- Trouble
vim.keymap.set(
  'n',
  '<leader>ot',
  '<cmd>Trouble diagnostics toggle<cr>',
  { desc = '[O]pen [T]rouble', silent = true, noremap = true }
)

-- gitsigns
vim.keymap.set('n', '<leader>ob', ':Gitsigns blame<cr>', { desc = '[O]pen git [B]lame', silent = true, noremap = true })
