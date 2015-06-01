# vim-pandoc-after

Handles vim-pandoc's integration with third-party plugins.

## plugins supported

(The names used to enable the corresponding modules [see below] are in italics)

* [ultisnips](https://github.com/SirVer/ultisnips) - *ultisnips*
* [neosnippet](https://github.com/Shougo/neosnippet.vim) - *neosnippets*
* [vim-snipsmate](https://github.com/garbas/vim-snipmate) - *snipmate*
* [unite.vim](https://github.com/Shougo/unite.vim) - *unite*
* [supertab](https://github.com/ervandew/supertab) - *supertab*
* [nrrwrgn](https://github.com/chrisbra/NrrwRgn) - *nrrwrgn*
* [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode/) - *tablemode*
* [vimcompletesme](https://github.com/ajh17/VimCompletesMe) - *vimcompletesme*

## Configuration

To enable plugins' support, you must set the variable
`g:pandoc#after#modules#enabled`. For example, to enable NrrwRgn and ultisnips
support, add the following to your vimrc:

    let g:pandoc#after#modules#enabled = ["nrrwrgn", "ultisnips"]

## Other projects worth checking out

- [unite-bibtext](https://github.com/msprev/unite-bibtex)
