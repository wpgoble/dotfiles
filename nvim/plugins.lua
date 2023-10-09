	use('tpope/vim-fugitive')
    -- comment plugin
    use {
        'numToStr/Comment.nvim',
        config = function ()
           require('Comment').setup()
        end
    }


    use{
        "startup-nvim/startup.nvim",
        requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
        config = function ()
            require"startup".setup({
                theme = "goble_theme",
            })
        end
    }
    -- Plugin the should help with generating doc-strings
    use {
        "danymat/neogen",
        config = function()
            require('neogen').setup {
                enabled = true,
                languages = {
                    python = {
                        template = {
                            annotation_convention = "numpydoc"
                        }
                    }
                }
            }
        end,
        requires = "nvim-treesitter/nvim-treesitter",
    }

    -- File Browsing
    use 'nvim-telescope/telescope-file-browser.nvim'

    -- Grammar checker
    use 'rhysd/vim-grammarous'
    -- Vim-wiki
    use 'vimwiki/vimwiki'

-- put this in the remap
vim.opt.scrolloff = 8

-- remap section
-- remap :Ex to be pv like in emacs
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "opens source directory" })
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {desc = "format file"})
-- Switches between open tabs. I do not see myself having 9 tabs, but 
-- this is just to have them all set at once. 
vim.keymap.set("n", "<leader>1", "1gt", {desc = "Goto tab 1"})
vim.keymap.set("n", "<leader>2", "2gt", {desc = "Goto tab 2"})
vim.keymap.set("n", "<leader>3", "3gt", {desc = "Goto tab 3"})
vim.keymap.set("n", "<leader>4", "4gt", {desc = "Goto tab 4"})
vim.keymap.set("n", "<leader>5", "5gt", {desc = "Goto tab 5"})
vim.keymap.set("n", "<leader>6", "6gt", {desc = "Goto tab 6"})
vim.keymap.set("n", "<leader>7", "7gt", {desc = "Goto tab 7"})
vim.keymap.set("n", "<leader>8", "8gt", {desc = "Goto tab 8"})
vim.keymap.set("n", "<leader>9", "9gt", {desc = "Goto tab 9"})
vim.keymap.set("n", "<leader>0", ":tablast<cr>", {desc = "Goto last tab"})

-- just need the emoji for the telescope set up
require('telescope').setup{
    defaults = {
        prompt_prefix = " "
    }
}
