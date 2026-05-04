vim.pack.add({
	"https://github.com/nvim-tree/nvim-tree.lua"
})

vim.opt.termguicolors = true

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

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle NvimTree" })
