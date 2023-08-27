" Vim syntax file
" Language: Carbon ASM file
" Maintainer: funnsam
" Latest Revision: 27 Aug 2023

if exists("b:current_syntax")
	finish
endif

let b:current_syntax = "carbon"
let b:lace_case_insensitive = 1

syn case ignore
syn keyword carbonInst hlt add sub bsub or adc and nand xor lia ldi adr rld rst mst mls ics jid brc dec cmp bsr bsl pst pld inc
syn keyword carbonConds even jmp eq neq lt gt gteq lteq
syn match carbonComment "#.*$"
syn match carbonComment "//.*$"
syn match carbonPage ">.*$"
syn match carbonReg "[r\$]\d\+"
syn match carbonLabelDef "\.[a-z]\+"
syn match carbonLabelUse "\[[a-z]\+\]"
syn match carbonNumber "\d\+"
syn match carbonNumber "0x[0-9a-f]\+"
syn match carbonNumber "0b[01]\+"

hi def link carbonInst Identifier
hi def link carbonConds Constant
hi def link carbonComment Comment
hi def link carbonPage PreProc
hi def link carbonReg Type
hi def link carbonLabelDef Label
hi def link carbonLabelUse Constant
hi def link carbonNumber Number
