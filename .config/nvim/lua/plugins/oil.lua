vim.pack.add({
	"https://github.com/stevearc/oil.nvim"
})

require("oil").setup({
    default_file_explorer = true,
    columns = {
        "icon",
        "size",
        "mtime"
    },
    delete_to_trash = true,
    skip_confirm_for_simple_edits = true,
    view_options = {
        show_hidden = true,
        is_always_hidden = function(name, bufnr)
          return (name == "..")
        end,
    },
    float = {
        padding = 2,
        max_width = 0.8,
        max_height = 0.8,
        border = "rounded",
  },
})

vim.keymap.set("n", "<leader>md", function()
  local dir = require("oil").get_current_dir()
  if dir then
    vim.cmd.cd(dir)
  end
end, { desc = "cd to oil dir" })

vim.keymap.set("n", "<leader>o", function()
  require("oil").toggle_float()
end, { desc = "Toggle Oil float" })
