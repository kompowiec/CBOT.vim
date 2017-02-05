" Vim syntax file
" Language:     CBOT
" Maintainer:   Kompowiec2 <diasp@o2.pl>
" Filenames:    none (activated manually)
" URL:		      http://www.kompowiec.github.io/
" Created:      2017 January 05
" Revision:     1.0

if !exists("main_syntax")
if version < 600
syntax clear
elseif exists("b:current_syntax")
finish
endif

syntax case match

syn match HelpImg /\image;*/
syn match HelpMono /\c;*/
syn match HelpHeading /\b;*/
syn match HelpYellow /\t;*/
syn match HelpOrange /\s;*/
syn match HelpSpecial /\tab;*/
syn match HelpLink /\l;/
syn match HelpU /\u;/
syn match HelpN /\n;/

if version >= 508 || !exists("did_xxd_syntax_inits")
  if version < 508
    let did_xxd_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  endif

 HiLink HelpImg          TODO 
 HiLink HelpMono         TODO
 HiLink HelpYellow       TODO
 HiLink HelpOrange       TODO
 HiLink HelpSpecia       TODO
 HiLink HelpLink         TODO
 HiLink HelpU            TODO
 HiLink HelpN            TODO
 delcommand HiLink
endif
