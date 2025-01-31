vim.g.mapleader = " "

-- NeoTree
vim.keymap.set('n', '<leader>be', ':Neotree float focus<CR>')
vim.keymap.set('n', '<leader>bb', ':Neotree<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CR>')

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>bf', builtin.find_files, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '*', builtin.grep_string, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
vim.keymap.set('n', '<leader>ls', builtin.lsp_document_symbols, {})
vim.keymap.set('n', 'gr', builtin.lsp_references, { noremap = true, silent = true })
vim.keymap.set('n', 'gd', builtin.lsp_definitions, { noremap = true, silent = true })

-- Tabs
vim.keymap.set('n', '<leader>tn', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<leader>tp', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader>twl', ':BufferLineCloseLeft<CR>')
vim.keymap.set('n', '<leader>twr', ':BufferLineCloseRight<CR>')
vim.keymap.set('n', '<leader>tww', ':BufferLineCloseOthers<CR>')

-- Go lang
vim.keymap.set('n', '<leader>ga', ':GoAlt<CR>')
vim.keymap.set('n', '<leader>gv', ':GoAltV<CR>')
vim.keymap.set('n', '<leader>gm', ':GoCmt<CR>')
vim.keymap.set('n', '<leader>gti', ':GoToggleInlay<CR>')
vim.keymap.set('n', '<leader>gdb', ':GoBreakToggle<CR>')
vim.keymap.set('n', '<leader>gt', ':GoTestFunc<CR>')
vim.keymap.set('n', '<leader>go', ':GoRun %<CR>')
vim.keymap.set('n', '<leader>gd', ':GoDoc<CR>')
vim.keymap.set('n', '<leader>gfs', ':GoFillStruct<CR>')

-- Python

-- GitSigns
local gitsigns = require('gitsigns')
vim.keymap.set('n', '<leader>hp', gitsigns.preview_hunk)
vim.keymap.set('n', '<leader>hr', gitsigns.reset_hunk)
vim.keymap.set('n', '<leader>hd', gitsigns.diffthis)
vim.keymap.set('n', '<leader>hD', function() gitsigns.diffthis('~') end)
vim.keymap.set('n', '<leader>td', gitsigns.toggle_deleted)

-- Other
vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- ToggleTerm
vim.keymap.set('n', '<leader>tt', ':ToggleTerm direction=vertical size=100<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal size=10<CR>', { noremap = true, silent = true })

-- Macro
function DuplicateRow()
    vim.cmd('normal! yyp')
end

function SelectBuffer()
    local input = vim.fn.input('Select buffer: ')
    local buffer_index = tonumber(input)
    if buffer_index and buffer_index > 0 then
        vim.cmd('BufferLineGoToBuffer ' .. buffer_index)
    else
        print('Invalid buffer index')
    end
end

vim.api.nvim_set_keymap('n', '<leader>cc', ':lua DuplicateRow()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sb', ':lua SelectBuffer()<CR>', { noremap = true, silent = true })

-- Snippets
local ls = require("luasnip")

vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

vim.keymap.set({"i", "s"}, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})
--
