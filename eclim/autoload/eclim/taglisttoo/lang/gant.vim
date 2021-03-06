" Author:  Eric Van Dewoestine
"
" Description: {{{
"
" License:
"
" Copyright (C) 2005 - 2010  Eric Van Dewoestine
"
" This program is free software: you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation, either version 3 of the License, or
" (at your option) any later version.
"
" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.
"
" You should have received a copy of the GNU General Public License
" along with this program.  If not, see <http://www.gnu.org/licenses/>.
"
" }}}

" Parse(file, settings) {{{
function! eclim#taglisttoo#lang#gant#Parse(file, settings)
  return taglisttoo#util#Parse(a:file, a:settings, [
      \ ['t', "\\s*target\\s*\\(\\s*(?:name\\s*:)?\\s*['\"]?([^'\",: ]+)", 1],
      \ ['f', "\\s*def\\s+(\\w+)\\s*\\(", 1],
      \ ['f', "\\s*(?:final|def)?\\s*(\\w+)\\s*=\\s*\\{", 1],
    \ ])
endfunction " }}}

" vim:ft=vim:fdm=marker
