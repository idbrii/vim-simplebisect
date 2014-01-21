vim-simplebisect
================

A dumb unidirectional bisection plugin.

Move halfway from the current cursor position to the direction you choose
(up/down/left/right).

* Left/right is limited by beginning and end of line.
* Up/down is limited by visible lines.

These commands let you quickly move a large distance and then move
progressively smaller amounts. For finer control (bisecting in both directions
until you're at the right spot), try
[vim-bisect](https://github.com/mikezackles/Bisect). Unlike vim-bisect,
simplebisect is stateless. It uses your cursor position and window borders to
determine the bisection endpoints.


Configuration
=============

`let g:simple_bisect_no_mappings = 1` to prevent simplebisect from defining mappings.

You can define mappings like these (these are the defaults):

	nmap <C-Up>    <Plug>(simplebisect-up)
	nmap <C-Down>  <Plug>(simplebisect-down)
	nmap <C-Left>  <Plug>(simplebisect-left)
	nmap <C-Right> <Plug>(simplebisect-right)
	imap <C-Up>    <C-o><Plug>(simplebisect-up)
	imap <C-Down>  <C-o><Plug>(simplebisect-down)
	imap <C-Left>  <C-o><Plug>(simplebisect-left)
	imap <C-Right> <C-o><Plug>(simplebisect-right)
