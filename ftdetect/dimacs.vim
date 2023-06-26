" Author: Marcel Simader (marcel0simader@gmail.com)
" Date: 22.06.2023
" (c) Marcel Simader 2023

augroup DimacsFiletype
    autocmd!
    autocmd BufNewFile,BufRead *.dimacs,*.cnf,*.in,*.qdimacs set filetype=dimacs
augroup END

