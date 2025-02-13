require("formatter").setup({
    logging = false,
    filetype = {
        cpp = {
            require("formatter.filetypes.cpp").clangformat
        },
        python = {
            require("formatter.filetypes.python").black
        },
        javascript = {
            require("formatter.filetypes.javascript").prettier
        },
        typescript = {
            require("formatter.filetypes.typescript").prettier
        },
        html = {
            require("formatter.filetypes.html").prettier
        },
        css = {
            require("formatter.filetypes.css").prettier
        },
        -- Default formatter for unsupported filetypes
        ["*"] = {
            require("formatter.filetypes.any").remove_trailing_whitespace
        }
    }
})

