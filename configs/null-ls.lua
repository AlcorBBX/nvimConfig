local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- webdev stuff
  b.formatting.deno_fmt.with { extra_args = { "--single-quote" } }, -- choosed deno for ts/js files cuz its very fast!

  b.formatting.prettierd.with {
    filetypes = {
      "html",
      "markdown",
      "css",
      "scss",
      -- "typescript",
      -- "javascript",
      "typescriptreact",
      "javascriptreact",
      "tsx",
      "jsx",
    },
  }, -- so prettier works only on these filetypes

  -- b.formatting.prettier.with {
  --   filetypes = {
  --     "html",
  --     "markdown",
  --     "css",
  --     "scss",
  --     -- "typescript",
  --     -- "javascript",
  --     -- "typescriptreact",
  --     -- "javascriptreact",
  --     -- "tsx",
  --     -- "jsx",
  --   },
  -- }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,
}

local lsp_formatting = function(bufnr)
  vim.lsp.buf.format {
    filter = function(client)
      -- apply whatever logic you want (in this example, we'll only use null-ls)
      return client.name == "null-ls"
    end,
    bufnr = bufnr,
  }
end

-- if you want to set up formatting on save, you can use this as a callback
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- add to your shared on_attach callback
local on_attach = function(client, bufnr)
  if client.supports_method "textDocument/formatting" then
    vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        lsp_formatting(bufnr)
      end,
    })
  end
end

null_ls.setup {
  debug = false,
  sources = sources,
  debounce = 300,
  on_attach = on_attach,
  -- format on save
  -- on_attach = function()
  --   vim.api.nvim_create_autocmd("BufWritePre", {
  --     callback = function()
  --       vim.lsp.buf.format()
  --     end,
  --   })
  -- end,
}
