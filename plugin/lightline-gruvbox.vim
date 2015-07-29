" File: lightline-gruvbox.vim
" Description: lightline.vim theme for gruvbox colorscheme
" Author: shinchu <shinchu@outlook.com>
" Source: https://github.com/shinchu/lightline-gruvbox

let s:is_dark=(&background == 'dark')

if s:is_dark
	let s:mono0   = '#282828'
	let s:mono1   = '#3c3836'
	let s:mono2   = '#504945'
	let s:mono3   = '#665c54'
	let s:mono4   = '#7c6f64'
	let s:mono5   = '#928374'
	let s:c_mono0 = 234
	let s:c_mono1 = 0
	let s:c_mono2 = 236
	let s:c_mono3 = 8
	let s:c_mono4 = 7
	let s:c_mono5 = 15

	let s:red      = '#fb4934'
	let s:green    = '#b8bb26'
	let s:blue     = '#83a598'
	let s:orange   = '#fe8019'
	let s:c_red    = 9
	let s:c_green  = 10
	let s:c_blue   = 12
	let s:c_orange = 3
else
	let s:mono0   = '#fbf1c7'
	let s:mono1   = '#ebdbb2'
	let s:mono2   = '#d5c4a1'
	let s:mono3   = '#bdae93'
	let s:mono4   = '#a89984'
	let s:mono5   = '#928374'
	let s:c_mono0 = 234
	let s:c_mono1 = 0
	let s:c_mono2 = 236
	let s:c_mono3 = 8
	let s:c_mono4 = 7
	let s:c_mono5 = 15

	let s:red      = '#9d0006'
	let s:green    = '#79740e'
	let s:blue     = '#076678'
	let s:orange   = '#af3a03'
	let s:c_red    = 9
	let s:c_green  = 10
	let s:c_blue   = 12
	let s:c_orange = 3
endif

let s:p = {
			\ 'normal':   {},
			\ 'inactive': {},
			\ 'insert':   {},
			\ 'replace':  {},
			\ 'visual':   {},
			\ 'tabline':  {}}

let s:style = exists('g:lightline_gruvbox_style')
			\ ? g:lightline_gruvbox_style
			\ : ''

if s:style == 'plain'
	let s:p.normal.middle = [
				\ [s:mono3, s:mono4, s:c_mono3, s:c_mono4]]
	let s:p.normal.left = [
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4],
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
	let s:p.normal.right = [
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4],
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
else
	let s:p.normal.middle = [
				\ [s:mono4, s:mono1, s:c_mono4, s:c_mono1]]
	let s:p.normal.left = [
				\ [s:mono0, s:green, s:c_mono0, s:c_green],
				\ [s:mono5, s:mono3, s:c_mono5, s:c_mono3]]
	let s:p.normal.right = [
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4],
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
endif

let s:p.inactive.middle = [
			\ [s:mono4, s:mono2, s:c_mono4, s:c_mono2]]
let s:p.inactive.right = [
			\ s:p.inactive.middle[0],
			\ s:p.inactive.middle[0]]
let s:p.inactive.left = [
			\ s:p.inactive.middle[0],
			\ s:p.inactive.middle[0]]

let s:p.insert.left = [
			\ [s:mono0, s:blue, s:c_mono0, s:c_blue],
			\ s:p.normal.left[1]]
let s:p.replace.left = [
			\ [s:mono0, s:red, s:c_mono0, s:c_red],
			\ s:p.normal.left[1]]
let s:p.visual.left = [
			\ [s:mono0, s:orange, s:c_mono0, s:c_orange],
			\ s:p.normal.left[1]]

if s:style == 'plain'
	let s:p.tabline.middle = [
				\ [s:mono0, s:mono5, s:c_mono0, s:c_mono5]]
	let s:p.tabline.right = [
				\ [s:mono0, s:mono5, s:c_mono0, s:c_mono2]]
	let s:p.tabline.left = [
				\ [s:mono0, s:mono5, s:c_mono0, s:c_mono5]]
	let s:p.tabline.tabsel = [
				\ [s:mono0, s:mono5, s:c_mono0, s:c_mono5]]
else
	let s:p.tabline.middle = [
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
	let s:p.tabline.right = [
				\ [s:mono4, s:mono1, s:c_mono4, s:c_mono1],
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
	let s:p.tabline.left = [
				\ [s:mono4, s:mono1, s:c_mono4, s:c_mono1]]
	let s:p.tabline.tabsel = [
				\ [s:mono5, s:mono0, s:c_mono5, s:c_mono0]]
endif

let g:lightline#colorscheme#gruvbox#palette = s:p
