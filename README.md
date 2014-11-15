# vim-pandoc-after

Handles vim-pandoc's integration with third-party plugins.

## plugins supported

* [ultisnips](https://github.com/SirVer/ultisnips)
* [neosnippet](https://github.com/Shougo/neosnippet.vim)
* [vim-snipsmate](https://github.com/garbas/vim-snipmate)
* [unite.vim](https://github.com/Shougo/unite.vim)
* [supertab](https://github.com/ervandew/supertab)
* [nrrwrgn](https://github.com/chrisbra/NrrwRgn) 
* [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode/)

## Configuration

By default, vim-pandoc-after does nothing. To enable plugins' support, you must
set the variable `g:pandoc#after#modules#enabled`. For example, to enable
NrrwRgn and ultisnips support, add the following to your vimrc:

    let g:pandoc#after#modules#enabled = ["nrrwrgn", "ultisnips"]

