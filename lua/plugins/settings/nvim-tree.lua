local api = require("nvim-tree.api")

local function my_on_attach(bufnr)
  local function opts(desc)
    return {
      desc = "nvim-tree: " .. desc,
      buffer = bufnr,
      noremap = true,
      silent = true,
      nowait = true,
    }
  end

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set("n", "<C-t>", api.tree.toggle, opts("Toggle Tree"))
end

require("nvim-tree").setup({
  on_attach = my_on_attach,
})
