lightline-gruvbox
=================

Overview
-----------------
lightline-gruvbox is a [lightline.vim](https://github.com/itchyny/lightline.vim) theme for the fantastic [gruvbox](https://github.com/morhetz/gruvbox) colorscheme, deeply inspired by [lightline-hybrid](https://github.com/cocopon/lightline-hybrid.vim).

Installation
----------------
Use your favourite plugin manager.
```vim
Plug 'shinchu/lightline-gruvbox.vim'
```
Add the following lines to your `.vimrc`.
```vim
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
```

Configuration
----------------

Configure bar coloring with either `left`, `right`, `both` like so
```vim
let g:lightline_gruvbox_color = '<coloring>'
```
or set to empty for no coloring. Defaults to `left`.

Configure the style with `hard`, or `plain` (depricated) like so
```vim
let g:lightline_gruvbox_style = '<style>'
```
Defaults to neither

Screenshots
----------------
### Dark
![dark](https://raw.githubusercontent.com/shinchu/images/master/lightline-gruvbox/dark.png)

### Light
![light](https://raw.githubusercontent.com/shinchu/images/master/lightline-gruvbox/light.png)
