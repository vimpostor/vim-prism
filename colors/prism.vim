set background=dark
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

let s:dark_red = '#ba000d'
let s:dark_pink = '#b0003a'
let s:dark_purple = '#6a0080'
let s:dark_deeppurple = '#320b86'
let s:dark_indigo = '#002984'
let s:dark_blue = '#0069c0'
let s:dark_lightblue = '#007ac1'
let s:dark_cyan = '#008ba3'
let s:dark_teal = '#008ba3'
let s:dark_green = '#087f23'
let s:dark_lightgreen = '#5a9216'
let s:dark_lime = '#99aa00'
let s:dark_yellow = '#c8b900'
let s:dark_amber = '#c79100'
let s:dark_orange = '#c66900'
let s:dark_deeporange = '#c41c00'
let s:dark_brown = '#4b2c20'
let s:dark_grey = '#707070'
let s:dark_bluegrey = '#34515e'

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

let s:white = '#fafafa'
let s:black = '#212121'
let s:darker_grey = '#424242'

let s:none = 'NONE'

func s:hls(name, ...)
	if a:0 > 0
		let l:fg = a:1
	else
		" default foreground color
		let l:fg = s:white
	endif
	if a:0 > 1
		let l:bg = a:2
	else
		" default background color
		let l:bg = s:none
	endif
	if a:0 > 2
		let l:em = a:3
	else
		let l:em = s:none
	endif
	return printf('hi %s guifg=%s guibg=%s gui=%s cterm=%s', a:name, l:fg, l:bg, l:em, l:em)
endfunc


exec s:hls('Comment', s:light_grey)
exec s:hls('Constant', s:pink)
exec s:hls('Cursor', s:none, s:none, 'inverse')
exec s:hls('CursorLine', s:none, s:darker_grey)
exec s:hls('CursorLineNr', s:deeporange)
exec s:hls('DiffAdd', s:black, s:lightgreen)
exec s:hls('DiffChange', s:yellow)
exec s:hls('DiffDelete', s:black, s:red)
exec s:hls('DiffText', s:grey)
exec s:hls('Directory', s:green)
exec s:hls('Error', s:red)
exec s:hls('ErrorMsg', s:red)
exec s:hls('FoldColumn', s:grey)
exec s:hls('Folded', s:grey, s:none, 'italic')
exec s:hls('Identifier', s:light_blue)
exec s:hls('Keyword', s:red)
exec s:hls('LineNr', s:grey)
exec s:hls('MatchParen', s:accent_pink)
exec s:hls('ModeMsg', s:yellow)
exec s:hls('MoreMsg', s:yellow)
exec s:hls('NonText')
exec s:hls('Normal', s:white, s:black)
exec s:hls('Pmenu', s:black, s:grey)
exec s:hls('PmenuSbar', s:black, s:grey)
exec s:hls('PmenuSel', s:black, s:pink)
exec s:hls('PmenuThumb', s:black, s:grey)
exec s:hls('PreProc', s:orange)
exec s:hls('Question', s:deeporange)
exec s:hls('Search', s:black, s:deeporange)
exec s:hls('SignColumn', s:none, s:black)
exec s:hls('Special', s:orange)
exec s:hls('SpellBad', s:red, s:none, 'underline')
exec s:hls('SpellCap', s:white, s:none, 'underline')
exec s:hls('SpellLocal', s:white, s:none, 'underline')
exec s:hls('SpellRare', s:white, s:none, 'underline')
exec s:hls('Statement', s:red)
exec s:hls('StatusLine', s:light_grey)
exec s:hls('StatusLineNC', s:light_grey)
exec s:hls('String', s:light_green)
exec s:hls('TabLine', s:white, s:none)
exec s:hls('TabLineSel', s:orange, s:none)
exec s:hls('Title', s:green)
exec s:hls('Todo', s:light_grey)
exec s:hls('Type', s:green)
exec s:hls('Underlined', s:blue, s:none, 'underline')
exec s:hls('VertSplit', s:cyan)
exec s:hls('Visual', s:none, s:dark_grey, 'italic')
exec s:hls('WarningMsg', s:yellow)
exec s:hls('WildMenu', s:accent_pink)

hi! link CursorColumn CursorLine
hi! link IncSearch Search
hi! link SpecialKey Special
hi! link TabLineFill TabLine
hi! link diffAdded DiffAdd
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete
