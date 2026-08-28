return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    opts = {
        ensure_installed = {
            "c", "cpp", "rust", "zig", "java",
            "lua", "vim", "vimdoc", "query",
            "markdown", "markdown_inline",
        },
        sync_install = false,
        auto_install = true,
        highlight = {
            enable = true,
        },
    },
    config = function(_, opts)
        require("nvim-treesitter").setup(opts)
    end,
}
