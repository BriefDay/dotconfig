-- Global Settings --
vim.g.mapleader = " "
vim.keymap.set({ "n" }, "<Space>", "<Nop>")
-- vim.api.nvim_set_keymap('n', '<Space>', '<Nop>', { noremap = true, silent = true })


-- Key mappings --
-- vim.api.nvim_set_keymap('n', 'H', '^', { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "L", "g$")
vim.keymap.set({ "n", "v" }, "H", "g^")
vim.keymap.set({ "n", }, "J", "5jzz")
vim.keymap.set({ "n", }, "j", "gj")
vim.keymap.set({ "n", }, "K", "5kzz")
vim.keymap.set({ "n", }, "k", "gk")
vim.keymap.set({ "n" }, "W", ":w!<CR>")
vim.keymap.set({ "n" }, "Q", ":q<CR>")
vim.keymap.set({ "n" }, "X", ":x<CR>")
-- vim.keymap.set({ 'n' }, '<leader>ya', '"ayy')
-- vim.keymap.set({ 'n' }, '<leader>pa', '"ap')
-- vim.keymap.set({ 'n' }, '<leader>ca', [[:let @a = ''<CR>]])
vim.keymap.set({ "n" }, "ro", ":luafile ~/.config/nvim/init.lua<CR>")
vim.keymap.set({ "n", "i", "v" }, "<Left>", "<Nop>")
vim.keymap.set({ "n", "i", "v" }, "<Right>", "<Nop>")
vim.keymap.set({ "n", "i", "v" }, "<Up>", "<Nop>")
vim.keymap.set({ "n", "i", "v" }, "<Down>", "<Nop>")

vim.keymap.set("n", "<A-Tab>", "<cmd>bNext<CR>")
vim.keymap.set("n", "<leader>bc", "<cmd>bd<CR>")

-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set({ "v", "n" }, "<leader>y", "\"+y")

-- telescope mappings
local M = {}
function M.setup()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>j', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    vim.keymap.set('n', '<leader>?', builtin.oldfiles, { desc = '[?] Find recently opened files' })
    vim.keymap.set('n', '<leader>/', function()
        require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
            winblend = 10,
            previewer = false,
        })
    end, { desc = '[/] Fuzzily search in current buffer' })
end

return M
