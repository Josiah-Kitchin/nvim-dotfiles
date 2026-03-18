return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local languages = {
      "bash",
      "css",
      "dockerfile",
      "go",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "php",
      "python",
      "scss",
      "sql",
      "typescript",
      "vim",
      "vue",
      "yaml",
      "tsx",
    }

    -- Install the parsers
    require("nvim-treesitter").install(languages)

    -- Set up filetype detection for React files
    vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
      pattern = { "*.jsx", "*.tsx" },
      callback = function(args)
        if args.file:match("%.jsx$") then
          vim.bo[args.buf].filetype = "javascriptreact"
        elseif args.file:match("%.tsx$") then
          vim.bo[args.buf].filetype = "typescriptreact"
        end
      end,
    })

    -- Automatically start treesitter for React files
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "javascriptreact", "typescriptreact", "javascript", "typescript" },
      callback = function()
        -- Small delay to ensure buffer is ready
        vim.defer_fn(function()
          -- This is what worked manually
          pcall(vim.treesitter.start, 0)
        end, 10)
      end,
    })

    -- Also enable for other languages
    vim.api.nvim_create_autocmd("FileType", {
      pattern = languages,
      callback = function()
        vim.defer_fn(function()
          pcall(vim.treesitter.start, 0)
        end, 10)
      end,
    })

    -- Configure folding
    vim.api.nvim_create_autocmd("FileType", {
      pattern = languages,
      callback = function()
        vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
        vim.wo.foldmethod = "expr"
        vim.wo.foldlevel = 99
      end,
    })
  end,
}
