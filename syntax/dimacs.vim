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

" ~~~~~~~~~~ General
syntax keyword DimacsKeywords p cnf CNF dnf DNF nnf NNF e a s v V
            \ contained
syntax match DimacsComment /^\s*c.*$/

" ~~~~~~~~~~ Problem specifier
syntax match   DimacsProblemSpecifier /^\s*p.*$/
            \ contains=DimacsKeywords,DimacsSpecNumber
syntax match   DimacsSpecNumber /\d\+/
            \ contained

" ~~~~~~~~~~ Quantifier prefix
syntax match DimacsQPrefix /^\s*[ea].*$/
            \ contains=DimacsKeywords,DimacsQPrefixNumber,DimacsZero
syntax match DimacsQPrefixNumber /\d\+/
            \ contained

" ~~~~~~~~~~ Clause lines
syntax match   DimacsLiteral /-\?\d\+/
            \ contains=DimacsZero
syntax keyword DimacsZero    0
            \ contained

" ~~~~~~~~~~ Traces
syntax match  DimacsSolutionSpecifier /^\s*s.*$/
            \ contains=DimacsKeywords
syntax match  DimacsSolutionLine      /^\s*[vV].*$/
            \ contains=DimacsKeywords,DimacsLiteral

" ~~~~~~~~~~~~~~~~~~~~ Highlight ~~~~~~~~~~~~~~~~~~~~

" ~~~~~~~~~~ General
highlight default link DimacsKeywords Keyword
highlight default link DimacsComment  Comment

" ~~~~~~~~~~ Problem specifier
highlight default link DimacsSpecNumber Constant

" ~~~~~~~~~~ Quantifier prefix
highlight default link DimacsQPrefixNumber Constant

" ~~~~~~~~~~ Clause lines
highlight default link DimacsLiteral Normal
highlight default link DimacsZero    Special

let b:current_syntax = 'dimacs'

