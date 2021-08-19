
vim.g.nvim_tree_width = 40
vim.g.nvim_tree_ignore = {".git", ".cache"}
--TODO: it would be nice if this just worked better, see
--https://github.com/kyazdani42/nvim-tree.lua/issues/528
vim.g.nvim_tree_auto_open = 0
vim.g.nvim_tree_highlight_opened_files = 1

WhichKey.register({
    t = {
        name = "nvim tree",
        t = {":NvimTreeToggle<CR>", "toggle", noremap=true},
        r = {":NvimTreeRefresh<CR>", "refresh", noremap=true},
        ["/"] = {":NvimTreeFindFile<CR>", "find file", noremap=true},
    }
}, {prefix="<leader>"})

sethighlight("NvimTreeWindowPicker", {fg=colors.bgdark, bg=colors.cyan})
sethighlight("NvimTreeFolderIcon", {fg=colors.purple})
sethighlight("NvimTreeIndentMarker", {fg=colors.pink})
sethighlight("NvimTreeExecFile", {fg=colors.green})
sethighlight("NvimTreeOpenedFile", {fg=colors.orange})
