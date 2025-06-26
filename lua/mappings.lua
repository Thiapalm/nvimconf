require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local builtin = require('telescope.builtin')
--vim.g.mapleader = " "
--vim.g.maplocalleader = " "

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- telescope
map('n', '<C-p>', builtin.git_files, {})
map('n', '<leader>pg', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)

-- move to next selection or previous in normal mode
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- move lines left or right in visual mode
map("v", "<", "<gv, opts")
map("v", ">", ">gv, opts")

-- move lines uo or down in visual mode
map("v", "J", ":m '>+1<CR>gv=gv", {desc = "moves lines down in visual selection"})
map("v", "K", ":m '<-2<CR>gv=gv", {desc = "moves lines up in visual selection"})

-- exit insert mode presing CTRL+c
map("i", "<C-c>", "<Esc>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Nvim DAP
map("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
map("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
map("n", "<Leader>dc>", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
map("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
map(
	"n",
	"<Leader>dd",
	"<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
	{ desc = "Debugger set conditional breakpoint" }
)
map("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset" })
map("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last" })

-- rustaceanvim
map("n", "<Leader>dt", "<cmd>lua vim.cmd('RustLsp testables')<CR>", { desc = "Debugger testables" })

