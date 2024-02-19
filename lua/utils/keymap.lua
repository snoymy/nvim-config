_G.switch = function(param, case_table)
    local case = case_table[param]
    if case then return case() end
    local def = case_table['default']
    return def and def() or nil
end

local function _map(mode)
    return function(lhs, rhs, opts)
        opts = opts or {}
        
        local options = {}
        options.noremap = false
        for _, v in ipairs(opts) do
            switch(v,{
                [1] = function() options.buffer  = true end, 
                [2] = function() options.nowait  = true end, 
                [3] = function() options.silent  = true end, 
                [4] = function() options.expr    = true end, 
                [5] = function() options.unique  = true end, 
                [6] = function() options.special = true end, 
                [7] = function() options.script  = true end, 
            })
        end

        vim.keymap.set(mode, lhs, rhs, options)
    end
end

local function _noremap(mode)
    return function(lhs, rhs, opts)
        opts = opts or {}

        local options = {}
        options.noremap = true
        for _, v in ipairs(opts) do
            switch(v,{
                [1] = function() options.buffer  = true end, 
                [2] = function() options.nowait  = true end, 
                [3] = function() options.silent  = true end, 
                [4] = function() options.expr    = true end, 
                [5] = function() options.unique  = true end, 
                [6] = function() options.special = true end, 
                [7] = function() options.script  = true end, 
            })
        end

        vim.keymap.set(mode, lhs, rhs, options)
    end
end

noremap = 0
buffer  = 1
nowait  = 2
silent  = 3
expr    = 4
unique  = 5
special = 6
script  = 7

map  = _map("")
nmap = _map("n")
vmap = _map("v")
smap = _map("s")
xmap = _map("x")
omap = _map("o")
imap = _map("i")
lmap = _map("l")
cmap = _map("c")
tmap = _map("t")

noremap  = _noremap("")
nnoremap = _noremap("n")
vnoremap = _noremap("v")
snoremap = _noremap("s")
xnoremap = _noremap("x")
onoremap = _noremap("o")
inoremap = _noremap("i")
lnoremap = _noremap("l")
cnoremap = _noremap("c")
tnoremap = _noremap("t")
