local g = vim.g -- global variables
local o = vim.o -- global options
local wo = vim.wo -- window-local options
local bo = vim.bo -- buffer-local options

-- global variables
g.clipboard = { -- setup windows clipboard for wsl
    name = 'win32yank',
    copy = {
        ['+'] = 'win32yank.exe -i --crlf',
        ['*'] = 'win32yank.exe -i --crlf',
    },
    paste = {
        ['+'] = 'win32yank.exe -o --lf',
        ['*'] = 'win32yank.exe -o --lf',
    },
    cache_enabled = 0,
}

-- global options
-- o.clipboard = 'unnamed' -- use system clipboard [Depracated in favor of key mappings"
o.guifont = "JetBrainsMono Nerd Font:h12"

-- window-local options
o.number = true

-- buffer-local options
o.expandtab = true
o.tabstop = 4
o.shiftwidth = 4

