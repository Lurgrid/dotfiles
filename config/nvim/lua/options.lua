require "nvchad.options"

vim.opt.list = true
vim.opt.listchars = {
    space = "·",      -- Show spaces as dots
    tab = "⟶ ",       -- Show tabs as large arrows
    trail = "•",      -- Show trailing spaces
    eol = "↲",        -- Show end of line
}

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.c,*.h",
    callback = function()
        vim.cmd("silent! !uncrustify -c ~/.uncrustify072_c.cfg --replace --no-backup " .. vim.fn.expand("%"))
        vim.cmd("edit!")
    end,
})
