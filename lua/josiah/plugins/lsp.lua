return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    -- Mason setup ------------------------------------------------------------
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = { "pyright", "ts_ls", "clangd", "omnisharp", "cmake" },
    })

    -- Common on_attach -------------------------------------------------------
    local on_attach = function(client, bufnr)
      local opts = { noremap = true, silent = true, buffer = bufnr }
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
      vim.keymap.set("n", "K",  vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
      vim.keymap.set("n", "<leader>o", vim.diagnostic.goto_next, opts)
      vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, opts)

      client.server_capabilities.semanticTokensProvider = nil

      vim.o.updatetime = 500
      vim.api.nvim_create_autocmd("CursorHold", {
        buffer = bufnr,
        callback = function()
          vim.diagnostic.open_float(nil, { focusable = false })
        end,
      })
    end

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- Define LSP configurations ---------------------------------------------
    vim.lsp.config["pyright"] = {
      on_attach = on_attach,
      capabilities = capabilities,
      flags = { debounce_text_changes = 150 },
    }

    vim.lsp.config["clangd"] = {
      cmd = { "clangd", "--header-insertion=never", "--clang-tidy" },
      on_attach = on_attach,
      capabilities = capabilities,
    }

    vim.lsp.config["omnisharp"] = {
      on_attach = on_attach,
      capabilities = capabilities,
    }

    vim.lsp.config["ts_ls"] = {
      on_attach = on_attach,
      capabilities = capabilities,
    }

    vim.lsp.config["cmake"] = {
      on_attach = on_attach,
      settings = {
        cmake = { configureArgs = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=YES" } },
      },
    }

    -------------------------------------------------------------------------
    -- Start each installed LSP manually (since setup_handlers is gone)
    -------------------------------------------------------------------------
    local mason_lspconfig = require("mason-lspconfig")
    for _, server in ipairs(mason_lspconfig.get_installed_servers()) do
      local cfg = vim.lsp.config[server]
      if cfg then vim.lsp.start(cfg) end
    end

    -------------------------------------------------------------------------
    -- nvim-cmp setup
    -------------------------------------------------------------------------
    local cmp = require("cmp")
    cmp.setup({
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
      }),
    })
  end,
}

