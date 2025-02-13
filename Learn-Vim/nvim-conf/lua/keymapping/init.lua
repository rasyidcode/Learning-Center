-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
map('n', '<C-b>', ':NvimTreeToggle<CR>', {noremap=true, silent=true})
map('n', '<C-p>', ':Telescope find_files<CR>', {noremap=true, silent=true})
