require("plugins.plugins")
utils = require("utils")


-- [[ Setting Options ]]
utils.set.mouse = 'a'
utils.set.number = true
utils.set.splitbelow = true
utils.set.splitright = true
utils.set.relativenumber = true
utils.set.shiftwidth = 4
utils.set.showmode = false
utils.set.wrap = true
utils.set.showbreak = '↪'
utils.set.cmdheight = 1
utils.set.updatetime = 300
utils.set.undofile = true
utils.set.undodir = vim.fn.expand('~/.nvim/undo')
utils.set.tabstop = 4 
utils.set.expandtab = true
utils.set.cursorline = true
utils.set.cursorlineopt = 'number'
-- utils.set.iskeyword:remove{"_"}
utils.set.autoread = true
-- utils.set.ignorecase = true
-- utils.set.smartcase = true
utils.set.scrolloff = 8 

-- [[ Key Mapping ]]
utils.map("<F2>", ":mksession! ~/.nvim/session.vim <CR>:echo 'Session Saved.' <CR>", {utils.silent})
utils.map("<F3>", ":source ~/.nvim/session.vim <CR>:echo 'Session Loaded.' <CR>", {utils.silent})

utils.inoremap("jj", "<Esc>", {utils.silent})
utils.inoremap('""', '""<Left>')
utils.inoremap("''", "''<Left>")
utils.inoremap('\\"\\"', '\\"\\"<Left><Left>')
utils.inoremap("\\'\\'", "\\'\\'<Left><Left>")
utils.inoremap("(", "()<Left>")
utils.inoremap("()", "()")
utils.inoremap("(;", "();<left><left>")
utils.inoremap("[", "[]<left>")
utils.inoremap("[]", "[]")
utils.inoremap("{", "{}<left>")
utils.inoremap("{<Space>", "{")
utils.inoremap("{}", "{}")
utils.inoremap("{<CR>", "{<CR>}<ESC>O")
utils.inoremap("{;<CR>", "{<CR>};<ESC>O")
utils.inoremap(",", ",<c-g>u")
utils.inoremap(".", ".<c-g>u")
utils.inoremap("!", "!<c-g>u")
utils.inoremap("?", "?<c-g>u")
utils.inoremap(":", ":<c-g>u")
utils.inoremap(";", ";<c-g>u")
utils.inoremap("=", "=<c-g>u")
utils.inoremap("'", "'<c-g>u")
utils.inoremap('"', '"<c-g>u')
utils.inoremap("|", "|<c-g>u")
utils.inoremap("<Space>", "<C-]><Space><c-g>u")

utils.nnoremap("tt", ":10sp|:terminal<CR>", {utils.silent})
utils.nnoremap("<leader>d", '"0d')
utils.nnoremap("<leader>x", '"0x')
utils.nnoremap("<leader>c", '"0c') 
utils.nnoremap("<leader>s", 's') 
utils.nnoremap("<leader>D", '"0D') 
utils.nnoremap("<leader>X", '"0X') 
utils.nnoremap("<leader>C", '"0C') 
utils.nnoremap("<leader>S", '"0S') 
utils.nnoremap("p", '"0p')
utils.nnoremap("P", '"0P')
utils.nnoremap("<leader>y", '"+y') 
utils.nnoremap("<leader>Y", '"+y$') 
utils.nnoremap("Y", "y$")
utils.nnoremap("o<Space>", "o")
utils.nnoremap("O<Space>", "O")
utils.nnoremap("oo", "o<ESC>")
utils.nnoremap("OO", "O<ESC>")
utils.nnoremap('""', 'ciw""<Esc>P') 
utils.nnoremap("''", "ciw''<Esc>P") 
utils.nnoremap("((", "ciw()<Esc>PF(")
utils.nnoremap("))", "ciw()<Esc>P")
utils.nnoremap("<leader>[[", "ciw[]<Esc>PF[")
utils.nnoremap("<leader>]]", "ciw[]<Esc>P") 
utils.nnoremap("<leader>**", "ciw**<Esc>P") 
utils.nnoremap("``", "ciw``<Esc>P")
utils.nnoremap('<leader>""', 'ciw\\"\\"<Esc><Left>P')
utils.nnoremap("<leader>''", "ciw\\'\\'<Esc><Left>P")
utils.nnoremap("<leader>s", ":%s/")
utils.nnoremap("<leader>(", "ciw()<Esc>PF(")
utils.nnoremap("<c-J>", "i<CR><ESC>")
utils.nnoremap("ZQ", ":q<CR>")
utils.nnoremap("ZQQ", ":q!<CR>")
utils.nnoremap("gt", ":bnext<CR>", {utils.silent})
utils.nnoremap("gT", ":bprev<CR>", {utils.silent})
utils.nnoremap("<C-l>", ":nohl<CR><C-l>")
utils.nnoremap("<F6>", ":call BufferWindowToggle()<CR>", {utils.silent})
utils.nnoremap("<F7>", ":MundoToggle<CR>")
-- utils.nnoremap("<F5>", ":source ~/.config/nvim/lua/init.lua<CR>:echo 'Refresh Config'<CR>")
utils.nnoremap("<leader>e", ":NvimTreeToggle<CR>", {utils.silent}) 
--utils.nnoremap("<leader>/", "/\\c") 
local builtin = require('telescope.builtin')
utils.nnoremap('<leader>ff', builtin.find_files, {})
utils.nnoremap('<leader>fg', builtin.live_grep, {})
utils.nnoremap('<leader>fb', builtin.buffers, {})
utils.nnoremap('<leader>fh', builtin.help_tags, {})

utils.vnoremap('<leader>d', '"0d')
utils.vnoremap('<leader>x', '"0x')
utils.vnoremap('<leader>c', '"0c')
--utils.vnoremap <leader>s "0s
utils.vnoremap("<leader>s", ":s/")
utils.vnoremap('<leader>D', '"0D')
utils.vnoremap('<leader>X', '"0X')
utils.vnoremap('<leader>C', '"0C')
utils.vnoremap('<leader>S', '"0S')
utils.vnoremap('p', '"0p')
utils.vnoremap('P', '"0P')
utils.vnoremap("J", ":m '>+1<CR>gv=gv", {utils.silent})
utils.vnoremap("K", ":m '<-2<CR>gv=gv", {utils.silent})
utils.vnoremap('""', 'c""<Esc>P')
utils.vnoremap("''", "c''<Esc>P")
utils.vnoremap("((", "c()<Esc>PF(") 
utils.vnoremap("))", "c()<Esc>P")
utils.vnoremap("<leader>[[", "c[]<Esc>PF[") 
utils.vnoremap("<leader>]]", "c[]<Esc>P") 
utils.vnoremap("<leader>**", "c**<Esc>P") 
utils.vnoremap("``", "c``<Esc>P")

utils.tnoremap("<Esc>", "<C-\\><C-n>")
utils.tnoremap("<Esc><Esc>", "<C-\\><C-n>:bd!<CR>", {utils.silent})
utils.tnoremap("<C-W>", "<C-\\><C-n><C-W>")

--[[ ColorScheme ]]
utils.set.termguicolors = true
-- utils.colorscheme("molokai")
-- require('github-theme').setup({
--   options = {
--     styles = {
--       comments = 'italic',
--       keywords = 'bold',
--       types = 'italic,bold',
--     }
--   }
-- })
-- utils.colorscheme("github_dark_tritanopia")
require("catppuccin").setup {
  color_overrides = {
      mocha = {
          base = "#17171a",
          mantle = "#1b1b1e",
          crust = "#000000",
      },
  },
}
utils.colorscheme("catppuccin-mocha")

-- [[ Terminal Autocmd ]]
utils.au("BufWinEnter", "term://*", "startinsert")
utils.au("WinEnter", "term://*", "startinsert")
utils.au("TermOpen", "term://*", "startinsert")

-- [[ Remember Last Position ]]
utils.au("BufReadPost", "*", [[if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"zz" | endif]])

-- [[ Lualine ]]
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'catppuccin-mocha',
    section_separators = { left = '', right = '' },
    component_separators = { left = '|', right = '|' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
      'packer', 
      'NvimTree',
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    },
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

--[[ better-escape ]]
-- require("better_escape").setup {
--     mapping = {"jk", "kj", "jj"}, -- a table with mappings to use
--     timeout = 200, -- the time in which the keys must be hit in ms. Use option timeoutlen by default
--     clear_empty_lines = false, -- clear line after escaping if there is only whitespace
--     keys = "<Esc>", -- keys used for escaping, if it is a function will use the result everytime
--     -- example(recommended)
--     -- keys = function()
--     --   return vim.api.nvim_win_get_cursor(0)[2] > 1 and '<esc>l' or '<esc>'
--     -- end,
-- }

--[[ Nvim Tree-Sitter ]]
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "cpp", "lua", "python", "javascript", "html" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = { "c", "rust" },
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

-- -- [[ Toggle Term ]]
-- local status_ok, toggleterm = pcall(require, "toggleterm")
-- if not status_ok then
-- 	return
-- end
-- 
-- toggleterm.setup({
-- 	size = 20,
-- 	open_mapping = [[tt]],
-- 	hide_numbers = true,
-- 	shade_filetypes = {},
-- 	shade_terminals = true,
-- 	shading_factor = 2,
-- 	start_in_insert = true,
-- 	insert_mappings = true,
-- 	persist_size = true,
-- 	direction = "horizontal",
-- 	close_on_exit = true,
-- 	shell = vim.o.shell,
-- 	float_opts = {
-- 		border = "curved",
-- 		winblend = 0,
-- 		highlights = {
-- 			border = "Normal",
-- 			background = "Normal",
-- 		},
-- 	},
-- })
-- 
-- local Terminal = require("toggleterm.terminal").Terminal
-- local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction= "float" })
-- 
-- function _LAZYGIT_TOGGLE()
-- 	lazygit:toggle()
-- end
-- 
-- vim.api.nvim_create_user_command('Git', _LAZYGIT_TOGGLE, {})


-- [[ Nvim Tree ]]
---- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    -- mappings = {
    --   list = {
    --     { key = "u", action = "dir_up" },
    --   },
    -- },
  },
  renderer = {
    group_empty = true,
  },
})
require'lspconfig'.tsserver.setup {}

utils.inoremap("<Tab>", 'pumvisible() ? "\\<C-N>" : "\\<Tab>"', {utils.expr})
utils.inoremap("<S-Tab>", 'pumvisible() ? "\\<C-P>" : "\\<C-H>"', {utils.expr})
utils.inoremap("<CR>", 'pumvisible() ? "\\<C-Y>" : "\\<CR>"', {utils.expr})

vim.g.preview_uml_url='http://localhost:8888'

-- Some servers have issues with backup files, see #649
vim.opt.backup = false
vim.opt.writebackup = false

-- Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
-- delays and poor user experience
vim.opt.updatetime = 300

-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appeared/became resolved
vim.opt.signcolumn = "yes"

local keyset = vim.keymap.set
-- Autocomplete
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- Use Tab for trigger completion with characters ahead and navigate
-- NOTE: There's always a completion item selected by default, you may want to enable
-- no select by setting `"suggest.noselect": true` in your configuration file
-- NOTE: Use command ':verbose imap <tab>' to make sure Tab is not mapped by
-- other plugins before putting this into your config
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

-- Make <CR> to accept selected completion item or notify coc.nvim to format
-- <C-g>u breaks current undo, please make your own choice
keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

-- Use <c-j> to trigger snippets
keyset("i", "<c-j>", "<Plug>(coc-snippets-expand-jump)")
-- Use <c-space> to trigger completion
keyset("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})

-- Use `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
keyset("n", "[g", "<Plug>(coc-diagnostic-prev)", {silent = true})
keyset("n", "]g", "<Plug>(coc-diagnostic-next)", {silent = true})

-- GoTo code navigation
keyset("n", "gd", "<Plug>(coc-definition)", {silent = true})
keyset("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
keyset("n", "gi", "<Plug>(coc-implementation)", {silent = true})
keyset("n", "gr", "<Plug>(coc-references)", {silent = true})


-- Use K to show documentation in preview window
function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end
keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', {silent = true})


-- Highlight the symbol and its references on a CursorHold event(cursor is idle)
vim.api.nvim_create_augroup("CocGroup", {})
vim.api.nvim_create_autocmd("CursorHold", {
    group = "CocGroup",
    command = "silent call CocActionAsync('highlight')",
    desc = "Highlight symbol under cursor on CursorHold"
})


-- Symbol renaming
keyset("n", "<leader>rn", "<Plug>(coc-rename)", {silent = true})


-- Formatting selected code
keyset("x", "<leader>f", "<Plug>(coc-format-selected)", {silent = true})
keyset("n", "<leader>f", "<Plug>(coc-format-selected)", {silent = true})


-- Setup formatexpr specified filetype(s)
vim.api.nvim_create_autocmd("FileType", {
    group = "CocGroup",
    pattern = "typescript,json",
    command = "setl formatexpr=CocAction('formatSelected')",
    desc = "Setup formatexpr specified filetype(s)."
})

-- Update signature help on jump placeholder
vim.api.nvim_create_autocmd("User", {
    group = "CocGroup",
    pattern = "CocJumpPlaceholder",
    command = "call CocActionAsync('showSignatureHelp')",
    desc = "Update signature help on jump placeholder"
})

-- Apply codeAction to the selected region
-- Example: `<leader>aap` for current paragraph
local opts = {silent = true, nowait = true}
keyset("x", "<leader>a", "<Plug>(coc-codeaction-selected)", opts)
keyset("n", "<leader>a", "<Plug>(coc-codeaction-selected)", opts)

-- Remap keys for apply code actions at the cursor position.
keyset("n", "<leader>ac", "<Plug>(coc-codeaction-cursor)", opts)
-- Remap keys for apply code actions affect whole buffer.
keyset("n", "<leader>as", "<Plug>(coc-codeaction-source)", opts)
-- Remap keys for applying codeActions to the current buffer
keyset("n", "<leader>ac", "<Plug>(coc-codeaction)", opts)
-- Apply the most preferred quickfix action on the current line.
keyset("n", "<leader>qf", "<Plug>(coc-fix-current)", opts)

-- Remap keys for apply refactor code actions.
keyset("n", "<leader>re", "<Plug>(coc-codeaction-refactor)", { silent = true })
keyset("x", "<leader>r", "<Plug>(coc-codeaction-refactor-selected)", { silent = true })
keyset("n", "<leader>r", "<Plug>(coc-codeaction-refactor-selected)", { silent = true })

-- Run the Code Lens actions on the current line
keyset("n", "<leader>cl", "<Plug>(coc-codelens-action)", opts)


-- Map function and class text objects
-- NOTE: Requires 'textDocument.documentSymbol' support from the language server
keyset("x", "if", "<Plug>(coc-funcobj-i)", opts)
keyset("o", "if", "<Plug>(coc-funcobj-i)", opts)
keyset("x", "af", "<Plug>(coc-funcobj-a)", opts)
keyset("o", "af", "<Plug>(coc-funcobj-a)", opts)
keyset("x", "ic", "<Plug>(coc-classobj-i)", opts)
keyset("o", "ic", "<Plug>(coc-classobj-i)", opts)
keyset("x", "ac", "<Plug>(coc-classobj-a)", opts)
keyset("o", "ac", "<Plug>(coc-classobj-a)", opts)


-- Remap <C-f> and <C-b> to scroll float windows/popups
---@diagnostic disable-next-line: redefined-local
local opts = {silent = true, nowait = true, expr = true}
keyset("n", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', opts)
keyset("n", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', opts)
keyset("i", "<C-f>",
       'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(1)<cr>" : "<Right>"', opts)
keyset("i", "<C-b>",
       'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(0)<cr>" : "<Left>"', opts)
keyset("v", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', opts)
keyset("v", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', opts)


-- Use CTRL-S for selections ranges
-- Requires 'textDocument/selectionRange' support of language server
keyset("n", "<C-s>", "<Plug>(coc-range-select)", {silent = true})
keyset("x", "<C-s>", "<Plug>(coc-range-select)", {silent = true})


-- Add `:Format` command to format current buffer
vim.api.nvim_create_user_command("Format", "call CocAction('format')", {})

-- " Add `:Fold` command to fold current buffer
vim.api.nvim_create_user_command("Fold", "call CocAction('fold', <f-args>)", {nargs = '?'})

-- Add `:OR` command for organize imports of the current buffer
vim.api.nvim_create_user_command("OR", "call CocActionAsync('runCommand', 'editor.action.organizeImport')", {})

-- Add (Neo)Vim's native statusline support
-- NOTE: Please see `:h coc-status` for integrations with external plugins that
-- provide custom statusline: lightline.vim, vim-airline
vim.opt.statusline:prepend("%{coc#status()}%{get(b:,'coc_current_function','')}")

-- Mappings for CoCList
-- code actions and coc stuff
---@diagnostic disable-next-line: redefined-local
local opts = {silent = true, nowait = true}
-- Show all diagnostics
keyset("n", "<space>a", ":<C-u>CocList diagnostics<cr>", opts)
-- Manage extensions
keyset("n", "<space>e", ":<C-u>CocList extensions<cr>", opts)
-- Show commands
keyset("n", "<space>c", ":<C-u>CocList commands<cr>", opts)
-- Find symbol of current document
keyset("n", "<space>o", ":<C-u>CocList outline<cr>", opts)
-- Search workspace symbols
keyset("n", "<space>s", ":<C-u>CocList -I symbols<cr>", opts)
-- Do default action for next item
keyset("n", "<space>j", ":<C-u>CocNext<cr>", opts)
-- Do default action for previous item
keyset("n", "<space>k", ":<C-u>CocPrev<cr>", opts)
-- Resume latest coc list
keyset("n", "<space>p", ":<C-u>CocListResume<cr>", opts)
