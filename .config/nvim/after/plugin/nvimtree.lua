-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


-- empty setup using defaults
require("nvim-tree").setup({
    hijack_cursor = true,
    view = {
        adaptive_size = true,
        side = "right",
    },
    update_focused_file = {
        enable = true,
        update_root = true,
        ignore_list = {},
      },
})
