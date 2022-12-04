local wk = require("which-key")
local mappings={
  q={':q<cr>', 'Quit'},
  Q={':qw<cr>', 'Save & Quit'},
  e={':NvimTreeToggle<cr>', 'NvimTreeToggle'},
  w={':w<cr>', 'Save'},
  x={':bdelete<cr>', 'Close'},
  E={':e ~/.config/nvim/init.lua<cr>', 'Edit Config'}
}
local options = {prefix='<leader>'}
wk.register(mappings, options)
