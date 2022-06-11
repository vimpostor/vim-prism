hi clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = 'prism'


" palette
let s:red = '#f44336'
let s:pink = '#e91e63'
let s:purple = '#9c27b0'
let s:deeppurple = '#673ab7'
let s:indigo = '#3f51b5'
let s:blue = '#2196f3'
let s:lightblue = '#03a9f4'
let s:cyan = '#00bcd4'
let s:teal = '#009688'
let s:green = '#4caf50'
let s:lightgreen = '#8bc34a'
let s:lime = '#cddc39'
let s:yellow = '#ffeb3b'
let s:amber = '#ffc107'
let s:orange = '#ff9800'
let s:deeporange = '#ff5722'
let s:brown = '#795548'
let s:grey = '#9e9e9e'
let s:bluegrey = '#607d8b'

let s:light_red = '#ff7961'
let s:light_pink = '#ff6090'
let s:light_purple = '#d05ce3'
let s:light_deeppurple = '#9a67ea'
let s:light_indigo = '#757de8'
let s:light_blue = '#6ec6ff'
let s:light_lightblue = '#67daff'
let s:light_cyan = '#62efff'
let s:light_teal = '#52c7b8'
let s:light_green = '#80e27e'
let s:light_lightgreen = '#bef67a'
let s:light_lime = '#ffff6e'
let s:light_yellow = '#ffff72'
let s:light_amber = '#fff350'
let s:light_orange = '#ffc947'
let s:light_deeporange = '#ff8a50'
let s:light_brown = '#a98274'
let s:light_grey = '#cfcfcf'
let s:light_bluegrey = '#8eacbb'

let s:dark_red = '#d32f2f'
let s:dark_pink = '#c2185b'
let s:dark_purple = '#7b1fa2'
let s:dark_deeppurple = '#512da8'
let s:dark_indigo = '#303f9f'
let s:dark_blue = '#1976d2'
let s:dark_lightblue = '#0288d1'
let s:dark_cyan = '#0097a7'
let s:dark_teal = '#00796b'
let s:dark_green = '#388e3c'
let s:dark_lightgreen = '#689f38'
let s:dark_lime = '#afb42b'
let s:dark_yellow = '#fbc02d'
let s:dark_amber = '#ffa000'
let s:dark_orange = '#f57c00'
let s:dark_deeporange = '#e64a19'
let s:dark_brown = '#5d4037'
let s:dark_grey = '#616161'
let s:dark_bluegrey = '#455a64'

let s:accent_red = '#ff1744'
let s:accent_pink = '#f50057'
let s:accent_purple = '#d500f9'
let s:accent_deeppurple = '#651fff'
let s:accent_indigo = '#3d5afe'
let s:accent_blue = '#2979ff'
let s:accent_lightblue = '#00b0ff'
let s:accent_cyan = '#00e5ff'
let s:accent_teal = '#1de9b6'
let s:accent_green = '#00e676'
let s:accent_lightgreen = '#76ff03'
let s:accent_lime = '#c6ff00'
let s:accent_yellow = '#ffea00'
let s:accent_amber = '#ffc400'
let s:accent_orange = '#ff9100'
let s:accent_deeporange = '#ff3d00'

let s:white = '#fefefe'
let s:black = '#202020'
let s:darker_grey = '#424242'
let s:darkest_grey = '#363636'
let s:lighter_grey = '#dedede'
let s:lightest_grey = '#e9e9e9'

let s:none = 'NONE'

" inverts a color definition from dark mode to light mode
func s:flip(name)
	let res = a:name

	if res == 'white'
		let res = 'black'
	elseif res == 'black'
		let res = 'white'
	elseif strpart(res, 0, 6) == 'light_'
		let res = 'dark_' . strpart(res, 6)
	elseif strpart(res, 0, 5) == 'dark_'
		let res = 'light_' . strpart(res, 5)
	elseif strpart(res, 0, 7) == 'darker_'
		let res = 'lighter_' . strpart(res, 7)
	elseif strpart(res, 0, 8) == 'darkest_'
		let res = 'lightest_' . strpart(res, 8)
	elseif strpart(res, 0, 7) == 'accent_'
		let res = 'dark_' . strpart(res, 7)
	elseif res != 'none'
		" normal color, without any prefix
		let res = 'dark_' . res
	endif

	return res
endfunc

" resolves a color name to a final color, taking into account the light/dark theme
func s:resolve(name)
	let color = a:name
	if &background == 'light'
		let color = s:flip(color)
	endif
	return get(s:, color)
endfunc

func s:hls(name, ...)
	if a:0 > 0
		let fg = s:resolve(a:1)
	else
		" default foreground color
		let fg = s:white
	endif
	if a:0 > 1
		let bg = s:resolve(a:2)
	else
		" default background color
		let bg = s:none
	endif
	if a:0 > 2
		let em = a:3
	else
		let em = s:none
	endif
	return printf('hi %s guifg=%s guibg=%s gui=%s cterm=%s', a:name, fg, bg, em, em)
endfunc


exec s:hls('Comment', 'light_grey', 'none', 'italic')
exec s:hls('Conceal')
exec s:hls('Constant', 'pink')
exec s:hls('Cursor', 'none', 'none', 'inverse')
exec s:hls('CursorLine', 'none', 'darker_grey')
exec s:hls('CursorLineNr', 'deeporange')
exec s:hls('DiffAdd', 'black', 'lightgreen')
exec s:hls('DiffChange', 'yellow')
exec s:hls('DiffDelete', 'black', 'red')
exec s:hls('DiffText', 'black', 'lightgreen')
exec s:hls('Directory', 'green')
exec s:hls('Error', 'red')
exec s:hls('ErrorMsg', 'red')
exec s:hls('FoldColumn', 'grey')
exec s:hls('Folded', 'grey', 'none', 'italic')
exec s:hls('Identifier', 'light_blue')
exec s:hls('Keyword', 'red')
exec s:hls('LineNr', 'grey')
exec s:hls('MatchParen', 'accent_pink')
exec s:hls('ModeMsg', 'yellow')
exec s:hls('MoreMsg', 'yellow')
exec s:hls('NonText')
exec s:hls('Normal', 'white', 'black', 'none')
exec s:hls('Pmenu', 'white', 'darkest_grey')
exec s:hls('PmenuSbar', 'black', 'darkest_grey')
exec s:hls('PmenuSel', 'black', 'light_blue')
exec s:hls('PmenuThumb', 'black', 'light_grey')
exec s:hls('PreProc', 'orange')
exec s:hls('Question', 'deeporange')
exec s:hls('Search', 'black', 'deeporange')
exec s:hls('SignColumn', 'black')
exec s:hls('Special', 'orange')
exec s:hls('SpellBad', 'red', 'none', 'undercurl')
exec s:hls('SpellCap', 'white', 'none', 'undercurl')
exec s:hls('SpellLocal', 'white', 'none', 'underline')
exec s:hls('SpellRare', 'white', 'none', 'underline')
exec s:hls('Statement', 'red')
exec s:hls('StatusLine', 'light_grey')
exec s:hls('StatusLineNC', 'light_grey')
exec s:hls('String', 'light_green')
exec s:hls('TabLine', 'light_grey', 'bluegrey')
exec s:hls('TabLineSel', 'white', 'bluegrey')
exec s:hls('Title', 'green')
exec s:hls('Todo', 'light_grey')
exec s:hls('Type', 'green')
exec s:hls('Underlined', 'blue', 'none', 'underline')
exec s:hls('VertSplit', 'cyan')
exec s:hls('Visual', 'none', 'darker_grey', 'italic')
exec s:hls('WarningMsg', 'yellow')
exec s:hls('WildMenu', 'accent_pink')

hi! link CursorColumn CursorLine
hi! link IncSearch Search
hi! link SpecialKey Special
hi! link TabLineFill TabLine
hi! link diffAdded DiffAdd
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete


" ale
exec s:hls('ALEVirtualTextWarning', 'yellow', 'darker_grey', 'italic')
exec s:hls('ALEVirtualTextError', 'red', 'darker_grey', 'italic')
