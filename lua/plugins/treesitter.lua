return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
        local configs = require('nvim-treesitter.configs')
    configs.setup({
            highlight = {
                enable = true,
            },
            ident = { enable = true },
            autotage = { enable = true },
            ensure_installed = {
                "lua",
                "rust",
                "c",
                "cpp",
                "make",
            },
            auto_install = false,
        })
    end
}
