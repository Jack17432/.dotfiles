return {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",

    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = { "vim", "lua", "bash" },
            auto_install = true,
            highlight = { enabled = true },
            indent = { enable = true }, 
        })
    end 
}
 
