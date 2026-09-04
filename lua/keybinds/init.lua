local all_modes = { 'n', 'i', 'v', 'c' } -- "all" could be wrong

local super_command = '<C'
if jit.os == 'OSX' then
	super_command = '<D'
end

vim.keymap.set(all_modes, super_command..'-s>', '<Cmd>w<CR>') -- Ctrl + S saves
vim.keymap.set(all_modes, super_command..'-z>', '<Cmd>undo<CR>') -- Ctrl + Z undos
vim.keymap.set(all_modes, super_command..'-S-z>', '<Cmd>redo<CR>') -- Cmd + Shift + Z redos
vim.keymap.set({ 'i', 'v' }, super_command..'-x>', '<C-o>dd') -- Cmd + X deletes a line
vim.keymap.set('i', super_command..'-c>', '<C-o>yy') -- Cmd + C in insert mode copies a line
vim.keymap.set('v', super_command..'-c>', '<C-o>y') -- Cmd + C in visual mode copies selection
vim.keymap.set(all_modes, super_command..'-v>', '<C-o>p') -- Cmd + V pastes
vim.keymap.set(all_modes, super_command..'-d>', '<Cmd>t.<CR>') -- Cmd + D in insert mode duplicates line
vim.keymap.set(all_modes, super_command..'-S-Down>', '<Cmd>move +1<CR>')
vim.keymap.set(all_modes, super_command..'-S-Up>', '<Cmd>move -2<CR>')

vim.keymap.set(all_modes, super_command..'-S-c>', '<Cmd>q<CR>')

return { super_c = super_command }
