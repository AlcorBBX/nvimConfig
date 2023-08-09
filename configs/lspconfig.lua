local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
-- local lspconfig_configs = require "lspconfig.configs"
-- local lspconfig_util = require "lspconfig.util"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "svelte", "volar", "vuels" }

lspconfig.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ["rust-analyzer"] = {},
  },
}

lspconfig.svelte.setup {
  filetypes = { "svelte" },
}

lspconfig.tsserver.setup {
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
  },
}

lspconfig.vuels.setup {
  -- filetypes = { "vue" },
  capabilities = capabilities,
  --   -- handlers = handlers,
  on_attach = require("custom.configs.lsp.servers.vuels").on_attach,
  settings = require("custom.configs.lsp.servers.vuels").settings,
  -- filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
}
lspconfig.volar.setup {
  filetypes = { "vue" },
  -- filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
}

lspconfig.eslint.setup {
  capabilities = capabilities,
  --   -- handlers = handlers,
  on_attach = require("custom.configs.lsp.servers.eslint").on_attach,
  settings = require("custom.configs.lsp.servers.eslint").settings,
}

-- lspconfig.angularls.setup {filetypes: { }}
-- lspconfig.denols.setup{}

lspconfig.tailwindcss.setup {
  filetypes = {
    "aspnetcorerazor",
    "astro",
    "astro-markdown",
    "blade",
    "clojure",
    "django-html",
    "htmldjango",
    "edge",
    "eelixir",
    "elixir",
    "ejs",
    "erb",
    "eruby",
    "gohtml",
    "haml",
    "handlebars",
    "hbs",
    "html",
    "html-eex",
    "heex",
    "jade",
    "leaf",
    "liquid",
    "markdown",
    "mdx",
    "mustache",
    "njk",
    "nunjucks",
    "php",
    "razor",
    "slim",
    "twig",
    "css",
    "less",
    "postcss",
    "sass",
    "scss",
    "stylus",
    "sugarss",
    "javascript",
    "javascriptreact",
    "reason",
    "rescript",
    "typescript",
    "typescriptreact",
    "vue",
    "svelte",
  },
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

--
-- lspconfig.pyright.setup { blabla}
