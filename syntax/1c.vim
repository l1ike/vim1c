
if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish 
endif

syntax sync fromstart

syn case ignore

syn keyword Statement1c_ru Если Тогда ИначеЕсли Иначе КонецЕсли Для Каждого Из По Пока Цикл КонецЦикла Процедура Функция КонецПроцедуры КонецФункции Перем Перейти Возврат Продолжить Прервать И Или Не Попытка Исключение ВызватьИсключение КонецПопытки Новый Выполнить 
syn keyword If Then ElsIf Else EndIf For Each IN To While Do EndDo Procedure Function EndProcedure EndFunction Var Goto Return Continue Break And Or Not Try Except Raise EndTry New Execute

syn keyword Boolean1c Истина Ложь
syn match Operator1c	 "\([*/%+=()?<>:;,.]\|<=\|\[\|\]\|>=\|-\)" 
syn match String1c "[\"|]\([^\"]\|\"\"\)*\(\"\|$\)"
syn match Digits1c "-\=\<\d*\.\=[0-9_]\>"
syn match Float1c "\%(\%(\w\|[]})\"']\s*\)\@<!-\)\=\<\%(0\|[1-9]\d*\%(_\d\+\)*\)\.\d\+\%(_\d\+\)*\>" "contained


syn region PreProc1c    start="#" end="$"
syn region Comment1c	start="//" end="$" keepend contains=@CommentGroup,@Spell

if version >= 508 || !exists("did_w3af_syn_inits")

	let did_w3af_syn_inits = 1
	
	hi def link Statement1c_ru	Statement
	hi def link Statement1c_en	Statement
	hi def link Operator1c		Operator
	hi def link String1c		String
	hi def link Digits1c		String
	hi def link Float1c         String
	hi def link Comment1c		Comment
	hi def link Boolean1c       Boolean
	hi def link PreProc1c       PreProc

endif

let b:current_syntax = '1c'
let shiftwidth=4
