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

api.nvim_set_keymap('n', '<C-a>', '<C-o>0', { noremap = true, silent = true })
api.nvim_set_keymap('n', '<C-z>', '<C-o>$', { noremap = true, silent = true })

api.nvim_set_keymap('n', g.mapleader..'y', [["*y]], { noremap = true, silent = true })
api.nvim_set_keymap('v', g.mapleader..'y', [["*y]], { noremap = true, silent = true })
api.nvim_set_keymap('n', g.mapleader..'x', [["*x]], { noremap = true, silent = true })
api.nvim_set_keymap('v', g.mapleader..'x', [["*x]], { noremap = true, silent = true })
api.nvim_set_keymap('n', g.mapleader..'p', [["*p]], { noremap = true, silent = true })
api.nvim_set_keymap('v', g.mapleader..'p', [["*p]], { noremap = true, silent = true })

api.nvim_set_keymap('n', g.mapleader..'a', 'ggVG', { noremap = true, silent = true })

api.nvim_set_keymap('n', g.mapleader..'bd', ':bd<cr>', { noremap = true, silent = true })

api.nvim_set_keymap('t', g.mapleader..'<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })

api.nvim_set_keymap('n', g.mapleader..'gg', ':enew', { noremap = true, silent = true })
api.nvim_set_keymap('n', 'Q', '<Nop>', { noremap = true, silent = true })

-- winshift
api.nvim_set_keymap('n', g.winleader..'mm', ':WinShift<cr>', { noremap = true, silent = true })
api.nvim_set_keymap('n', g.winleader..'m<Up>', ':WinShift up<cr>', { noremap = true, silent = true })
api.nvim_set_keymap('n', g.winleader..'m<Down>', ':WinShift down<cr>', { noremap = true, silent = true })
api.nvim_set_keymap('n', g.winleader..'m<Left>', ':WinShift left<cr>', { noremap = true, silent = true })
api.nvim_set_keymap('n', g.winleader..'m<Right>', ':WinShift right<cr>', { noremap = true, silent = true })
api.nvim_set_keymap('n', g.winleader..'mf<Up>', ':WinShift far_up<cr>', { noremap = true, silent = true })
api.nvim_set_keymap('n', g.winleader..'mf<Down>', ':WinShift far_down<cr>', { noremap = true, silent = true })
api.nvim_set_keymap('n', g.winleader..'mf<Left>', ':WinShift far_left<cr>', { noremap = true, silent = true })
api.nvim_set_keymap('n', g.winleader..'mf<Right>', ':WinShift far_right<cr>', { noremap = true, silent = true })

