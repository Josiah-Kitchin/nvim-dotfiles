return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim", -- LSP server installer
    "williamboman/mason-lspconfig.nvim", -- Automatically configure LSPs with Mason
    "hrsh7th/nvim-cmp", -- Completion plugin
    "hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
  },
  config = function()
    -- Setup Mason
    require("mason").setup()

    -- Setup Mason-LSPConfig to automatically configure LSP servers
    require("mason-lspconfig").setup({
      ensure_installed = { "pyright", "ts_ls", "clangd", "omnisharp"},  -- Add the LSPs you need here
    })

    -- Setup LSPConfig
    local lspconfig = require("lspconfig")

    -- Function for common LSP keybindings
    local on_attach = function(client, bufnr)
      local bufopts = { noremap = true, silent = true, buffer = bufnr }
      -- Set key mappings for LSP functions
              -- LSP keymaps
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
      vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)

      vim.keymap.set("n", "<leader>o", vim.diagnostic.goto_next, bufopts)
      
      vim.o.updatetime = 500

      vim.api.nvim_create_autocmd("CursorHold", {
        buffer = bufnr,
        callback = function()
          vim.diagnostic.open_float(nil, { focusable = false })
        end,
      })

    end

    -- Setup LSP servers (Pyright, TSServer, and Clangd)

    -- Python LSP (Pyright)
    lspconfig.pyright.setup({
      on_attach = on_attach,
      capabilities = vim.lsp.protocol.make_client_capabilities(),  -- Ensure the capabilities are passed
      flags = { debounce_text_changes = 150 },
    })

    -- C/C++ LSP (clangd)
    lspconfig.clangd.setup({
      on_attach = on_attach,
      capabilities = vim.lsp.protocol.make_client_capabilities(),
      flags = { debounce_text_changes = 150 },
    })

    lspconfig.omnisharp.setup({
      on_attach = on_attach, 
      capabilities = vim.lsp.protocol.make_client_capabilities(),  -- Ensure the capabilities are passed
      flags = { debounce_text_changes = 150 },
    })

    lspconfig.ts_ls.setup({
      on_attach = on_attach, 
      capabilities = vim.lsp.protocol.make_client_capabilities(),  -- Ensure the capabilities are passed
      flags = { debounce_text_changes = 150 },
    })

    lspconfig.cmake.setup({
      on_attach = on_attach, 
      settings = {
        cmake = {
          configureArgs = {"-DCMAKE_EXPORT_COMPILE_COMMANDS=YES"},
        },
      },
    })

    local cmp = require("cmp")
    cmp.setup({
      sources = cmp.config.sources({
        { name = "nvim_lsp" },  -- Enable LSP source for autocompletion
      }),
    })
  end,
}

