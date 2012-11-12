
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

hi Normal			guifg=#0000FF	guibg=white
hi Comment			guifg=#008000
hi Constant			term=underline	ctermfg=black			guifg=black
hi Special			ctermfg=DarkMagenta                     guifg=Red
hi Identifier		term=underline	ctermfg=Cyan		 	guifg=#40ffff
hi Statement    	ctermfg=Yellow                          guifg=#FF0000 gui=NONE
hi PreProc			term=underline	ctermfg=LightBlue		guifg=#963200
hi Operator			ctermfg=Red                             guifg=Red
hi Error			term=reverse	ctermbg=Red			ctermfg=White guibg=Red		guifg=White
hi Todo				term=standout 	ctermbg=Yellow 		ctermfg=Black guifg=Blue	guibg=Yellow

hi link String		Constant
hi link Character	Constant
hi link Number		Constant
hi link Boolean		Statement
hi link Float		Number
hi link Keyword		Statement
