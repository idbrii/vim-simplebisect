" A simple unidirectional bisection
"
let simplebisect#UP = -1
let simplebisect#DOWN = 1
let simplebisect#LEFT = -1
let simplebisect#RIGHT = 1

function! simplebisect#BisectGetRowDirection(positive, negative, direction)
	if a:direction > 0
		let direction = a:positive
	else
		let direction = a:negative
	endif
	return getpos(direction)
endf

function! simplebisect#BisectGetColDirection(direction)
	if a:direction > 0
		return col('$')
	else
		return 0
	endif
endf

function! simplebisect#BisectHorizontal(direction)
	let COL = 2
	let destination = simplebisect#BisectGetColDirection(a:direction)
	call simplebisect#Bisect(destination, COL)
endf
function! simplebisect#BisectVertical(direction)
	let ROW = 1
	let destination = simplebisect#BisectGetRowDirection('w$', 'w0', a:direction)[ROW]
	call simplebisect#Bisect(destination, ROW)
endf

function! simplebisect#Bisect(destination, pos_type)
	let current_pos = getpos('.')
	let current_row = current_pos[a:pos_type]
	let desired = current_row + (a:destination - current_row) / 2
	let current_pos[a:pos_type] = desired
	call setpos('.', current_pos)
endf
