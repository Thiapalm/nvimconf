require "nvchad.options"

-- add yours here!

-- enable line numbers
vim.opt.number = true

vim.opt.cursorline = true

-- enable relative line numbers
vim.opt.relativenumber = true

-- exoand tab to spaces
vim.opt.expandtab = true

-- enable auto ident
vim.opt.autoindent = true

-- number of spaces for identation
vim.opt.shiftwidth = 4

-- enable persistent undo
vim.opt.undofile = true

-- set clipboard to use system clipboard
vim.opt.clipboard:append("unnamedplus")
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
