-- personal keymaps
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', { noremap = true })
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

--- Plugin Remaps --

-- Telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', telescope.git_files, {})
vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<leader>lg', telescope.live_grep, {})
vim.keymap.set('n', '<leader>fw', function()
  telescope.grep_string({ search = vim.fn.input('Grep > ') })
end)

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

-- copilot
vim.keymap.set('i', '<right>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true
