-- ~/.config/nvim/lua/plugins/markdown-preview.lua

return {
    "iamcco/markdown-preview.nvim",
    lazy = true,
    event = "VeryLazy",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && npm install",
    init = function()
        vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
}
