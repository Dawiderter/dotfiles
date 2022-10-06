local map = vim.keymap.set
local cmd = vim.cmd

-- leader key
map({'n','v'}, '<Space>', '', {})
vim.g.mapleader = ' '

-- visual block (for compatibility with win terminal)
map('n', '<Leader>v', '<C-v>', {})

-- clipboard support
map({'n','v'}, '<Leader>p', '"*p', {})
map({'n','v'}, '<Leader>P', '"*P', {})
map({'n','v'}, '<Leader>y', '"*y', {})
map({'n','v'}, '<Leader>Y', '"*Y', {})

-- buffer manegment
map('n', '<Leader>b<Right>', ':bnext<CR>', {silent = false})
map('n', '<Leader>b<Left>', ':bprev<CR>', {silent = false})
map('n', '<Leader>bq', ':bd<CR>', {silent = false})
map('n', '<Leader>bq!', ':bd!<CR>', {silent = false})

-- window manegment
map('n', '<Leader>wh', ':split<CR>', {silent = false})
map('n', '<Leader>wv', ':vsplit<CR>', {silent = false})
map('n', '<Leader>w<Right>', '<C-w><Right>', {silent = false})
map('n', '<Leader>w<Left>', '<C-w><Left>', {silent = false})
map('n', '<Leader>w<Up>', '<C-w><Up>', {silent = false})
map('n', '<Leader>w<Down>', '<C-w><Down>', {silent = false})
map('n', '<Leader>wq', ':q<CR>', {silent = false})
map('n', '<Leader>wq!', ':q!<CR>', {silent = false})
map('n', '<Leader>ws', ':w<CR>', {silent = false})
map('n', '<Leader>wsq', ':wq<CR>', {silent = false})

-- tab manegment
map('n', '<Leader>t<Right>', 'gt', {silent = false})
map('n', '<Leader>t<Left>', 'gT', {silent = false})
map('n', '<Leader>tn', ':tabnew<CR>', {silent = false})

-- telescope
local telescope = require('telescope')
local builtin = require('telescope.builtin')

map('n', '<Leader>ff', builtin.find_files, {})
map('n', '<Leader>fo', builtin.oldfiles, {})
map('n', '<Leader>fg', builtin.live_grep, {})
map('n', '<Leader>fb', builtin.buffers, {})
map('n', '<Leader>fh', builtin.help_tags, {})
map('n', '<Leader>fs', telescope.extensions.file_browser.file_browser, {})

-- lsp
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap = true, silent = true }
map('n', '<Leader>e', vim.diagnostic.open_float, opts)
map('n', '[d', vim.diagnostic.goto_prev, opts)
map('n', ']d', vim.diagnostic.goto_next, opts)
map('n', '<Leader>l', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local function lsp_attach(client, bufnr)
    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    map('n', 'gD', vim.lsp.buf.declaration, bufopts)
    map('n', 'gd', vim.lsp.buf.definition, bufopts)
    map('n', 'K', vim.lsp.buf.hover, bufopts)
    map('n', 'gi', vim.lsp.buf.implementation, bufopts)
    map('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    map('n', '<Leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    map('n', '<Leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    map('n', '<Leader>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    map('n', '<Leader>D', vim.lsp.buf.type_definition, bufopts)
    map('n', '<Leader>rn', vim.lsp.buf.rename, bufopts)
    map('n', '<Leader>ca', vim.lsp.buf.code_action, bufopts)
    map('n', 'gr', vim.lsp.buf.references, bufopts)
    map('n', '<Leader>f', vim.lsp.buf.formatting, bufopts)
end

return { lsp_attach = lsp_attach }
