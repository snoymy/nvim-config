require("utils.keymap")
require("utils.set")
require("utils.autocmd")
require("utils.color")

local utils = {}

utils.noremap = noremap
utils.buffer  = buffer
utils.nowait  = nowait
utils.silent  = silent
utils.expr    = expr
utils.unique  = unique
utils.special = special
utils.script  = script

utils.map  = map
utils.nmap = nmap
utils.vmap = vmap
utils.smap = smap
utils.xmap = xmap
utils.omap = omap
utils.imap = imap
utils.lmap = lmap
utils.cmap = cmap
utils.tmap = tmap

utils.noremap  = noremap
utils.nnoremap = nnoremap
utils.vnoremap = vnoremap
utils.snoremap = snoremap
utils.xnoremap = xnoremap
utils.onoremap = onoremap
utils.inoremap = inoremap
utils.lnoremap = lnoremap
utils.cnoremap = cnoremap
utils.tnoremap = tnoremap

utils.set = set

utils.autocmd     = autocmd
utils.au          = au

utils.colorscheme = colorscheme

return utils
