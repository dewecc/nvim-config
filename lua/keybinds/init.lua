local all_modes = { 'n', 'i', 'v', 'c' } -- "all" could be wrong

vim.keymap.set(all_modes, '<D-s>', '<Cmd>w<CR>') -- Ctrl + S saves
vim.keymap.set(all_modes, '<D-z>', '<Cmd>undo<CR>') -- Ctrl + Z undos
vim.keymap.set(all_modes, '<D-S-z>', '<Cmd>redo<CR>') -- Cmd + Shift + Z redos
vim.keymap.set('v', '<D-c>', '<C-o>"+y') -- Ctrl + C copies whatever is highlighted
vim.keymap.set({ 'i', 'v' }, '<D-x>', '<C-o>dd') -- Cmd + X deletes a line
vim.keymap.set('i', '<D-c>', '<C-o>yy') -- Cmd + C in insert mode copies a line
vim.keymap.set(all_modes, '<D-v>', '<C-o>p') -- Cmd + V pastes
vim.keymap.set(all_modes, '<D-d>', '<Cmd>t.<CR>') -- Cmd + D in insert mode duplicates line
vim.keymap.set(all_modes, '<D-S-Down>', '<Cmd>move +1<CR>')
vim.keymap.set(all_modes, '<D-S-Up>', '<Cmd>move -2<CR>')

vim.keymap.set(all_modes, '<D-S-c>', '<Cmd>q<CR>')

return {}
