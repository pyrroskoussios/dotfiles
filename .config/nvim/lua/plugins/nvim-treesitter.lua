vim.pack.add({
  "https://github.com/nvim-treesitter/nvim-treesitter"
})

require("nvim-treesitter").setup({})

require("nvim-treesitter").install({
  "python",
  "c",
  "cpp",
  "javascript",
  "markdown",
  "markdown_inline",
  "json",
  "jsonc",
  "yaml",
  "toml",
  "bash",
  "vim",
  "lua",
  "query",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function(args)
    local bufnr = args.buf
    local ft = vim.bo[bufnr].filetype
    local lang = vim.treesitter.language.get_lang(ft)

    if not lang or lang == "" then
      return
    end

    local ok = vim.treesitter.language.add(lang)
    if ok then
      vim.treesitter.start(bufnr, lang)
    end
  end,
})
