local api = vim.api
local g = vim.g

-- Window & Buffer moving
for i = 1, 9, 1
do
  local num = tostring(i)
  api.nvim_set_keymap('n', g.mapleader..num, ':'..num..'wincmd w<cr>', { noremap = true, silent = true })
  api.nvim_set_keymap('n', g.altleader..num, ':BufferLineGoToBuffer '..num..'<cr>', { noremap = true, silent = true })
end

api.nvim_set_keymap('n', g.mapleader..'<Left>', ':wincmd h<cr>', { noremap = true, silent = true })
api.nvim_set_keymap('n', g.mapleader..'<Down>', ':wincmd j<cr>', { noremap = true, silent = true })
api.nvim_set_keymap('n', g.mapleader..'<Up>', ':wincmd k<cr>', { noremap = true, silent = true })
api.nvim_set_keymap('n', g.mapleader..'<Right>', ':wincmd l<cr>', { noremap = true, silent = true })

api.nvim_set_keymap('n', '<C-M-Right>', ':bn<cr>', { noremap = true, silent = true })
api.nvim_set_keymap('n', '<C-M-Left>', ':bp<cr>', { noremap = true, silent = true })

api.nvim_set_keymap('n', '<Esc><Esc>', ':noh<cr>', { noremap = true, silent = true })

api.nvim_set_keymap('n', g.winleader..'s', ':split<cr>', { noremap = true, silent = true })
api.nvim_set_keymap('n', g.winleader..'v', ':vsplit<cr>', { noremap = true, silent = true })
