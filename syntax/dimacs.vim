" Vim syntax file for Dimacs
" Language: Dimacs
" Author:   Marcel Simader (marcel0simader@gmail.com)
" Date:     22.06.2023
" (c) Marcel Simader 2023

" quit when a syntax file was already loaded
if exists('b:current_syntax')
    finish
endif

" ~~~~~~~~~~~~~~~~~~~~ Syntax ~~~~~~~~~~~~~~~~~~~~

" ~~~~~~~~~~ Specifier
syntax match   DimacsSpecifier  /^\s*p.*$/
            \ contains=DimacsPrefix,DimacsKeyword,DimacsSpecNumber
syntax keyword DimacsPrefix     p
            \ contained
syntax keyword DimacsKeyword    cnf CNF dnf DNF nnf NNF
            \ contained
syntax match   DimacsSpecNumber /\d\+/
            \ contained

" ~~~~~~~~~~ Clause lines
syntax match   DimacsLiteral /-\?\d\+/
            \ contains=DimacsZero
syntax keyword DimacsZero    0
            \ contained

" ~~~~~~~~~~ Other features
syntax match DimacsComment /^\s*c.*$/

" ~~~~~~~~~~~~~~~~~~~~ Highlight ~~~~~~~~~~~~~~~~~~~~

" ~~~~~~~~~~ Specifier
highlight default link DimacsPrefix     Keyword
highlight default link DimacsKeyword    Keyword
highlight default link DimacsSpecNumber Constant

" ~~~~~~~~~~ Clause lines
highlight default link DimacsLiteral Normal
highlight default link DimacsZero    Special

" ~~~~~~~~~~ Other features
highlight default link DimacsComment Comment

let b:current_syntax = 'dimacs'

