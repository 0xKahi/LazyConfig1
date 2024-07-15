-- personal keymaps
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', { noremap = true })
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', 'U', '<C-r>', { noremap = true, desc = 'Redo' })

--- Plugin Remaps --

-- Telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', telescope.git_files, {})
vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<leader>lg', telescope.live_grep, {})
vim.keymap.set('n', '<leader>fw', telescope.grep_string, { desc = '[S]earch current [W]ord' })

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
end, { desc = 'Format file or range (in visual mode)' })

-- Harpoon
local harpoonMark = require('harpoon.mark')
local harpoonUi = require('harpoon.ui')

vim.keymap.set('n', '<leader>anc', harpoonMark.add_file)
vim.keymap.set('n', '<leader>ha', harpoonUi.toggle_quick_menu)

-- NeoTree
vim.api.nvim_set_keymap('n', '<leader>oe', ':Neot reveal<CR>', { noremap = true, silent = true })

-- NeoGit
vim.api.nvim_set_keymap('n', '<leader>ng', ':Neogit<CR>', { noremap = true, silent = true })

-- copilot
vim.keymap.set('i', '<right>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true

-- Trouble
vim.keymap.set('n', '<leader>ot', '<cmd>Trouble diagnostics toggle<cr>', { silent = true, noremap = true })

-- gitsigns
vim.keymap.set('n', '<leader>gbl', ':Gitsigns blame<cr>', { silent = true, noremap = true })
