require('mini.animate').setup()
require('mini.comment').setup()
require('mini.basics').setup()
require('mini.bufremove').setup()

-- Better tab behavior for completion 
require('mini.completion').setup()
vim.keymap.set('i', '<Tab>',   [[pumvisible() ? "\<C-n>" : "\<Tab>"]],   { expr = true })
vim.keymap.set('i', '<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]], { expr = true })

