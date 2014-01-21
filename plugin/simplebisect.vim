" A simple unidirectional bisection
"
if exists('loaded_simple_bisect') || &cp || version < 700
	finish
endif
let loaded_simple_bisect = 1

if !exists("g:simple_bisect_no_mappings") || !g:simple_bisect_no_mappings
	nmap <C-Up>    <Plug>(simplebisect-up)
	nmap <C-Down>  <Plug>(simplebisect-down)
	nmap <C-Left>  <Plug>(simplebisect-left)
	nmap <C-Right> <Plug>(simplebisect-right)
	" TODO: Visual mode is exited. Maybe we can just save the start of the
	" previous selection?
	"xmap <C-Up>    <Plug>(simplebisect-up)
	"xmap <C-Down>  <Plug>(simplebisect-down)
	"xmap <C-Left>  <Plug>(simplebisect-left)
	"xmap <C-Right> <Plug>(simplebisect-right)
	imap <C-Up>    <C-o><Plug>(simplebisect-up)
	imap <C-Down>  <C-o><Plug>(simplebisect-down)
	imap <C-Left>  <C-o><Plug>(simplebisect-left)
	imap <C-Right> <C-o><Plug>(simplebisect-right)
endif

noremap <silent> <Plug>(simplebisect-up)    :<C-u>call simplebisect#BisectVertical(simplebisect#UP)<CR>
noremap <silent> <Plug>(simplebisect-down)  :<C-u>call simplebisect#BisectVertical(simplebisect#DOWN)<CR>
noremap <silent> <Plug>(simplebisect-left)  :<C-u>call simplebisect#BisectHorizontal(simplebisect#LEFT)<CR>
noremap <silent> <Plug>(simplebisect-right) :<C-u>call simplebisect#BisectHorizontal(simplebisect#RIGHT)<CR>

