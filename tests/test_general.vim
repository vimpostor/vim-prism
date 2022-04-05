func Read_color(name, attr)
	return synIDattr(synIDtrans(hlID(a:name)), a:attr)
endfunc

func Is_dark(color)
	return max(map([1, 3, 5], {_, x -> a:color[x] < '8'}))
endfunc

func Test_loaded()
	call assert_equal('prism', g:colors_name)
endfunc

func Test_darktheme_change()
	set background=dark
	let clr = Read_color('Normal', 'bg')
	call assert_true(Is_dark(clr))

	set background=light
	let clr = Read_color('Normal', 'bg')
	call assert_false(Is_dark(clr))
endfunc
