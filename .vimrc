" empechee la compatibilite avec vi
set nocompatible

" fond de couleur noire
"
" " coloration syntaxique
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
"
"
set clipboard=unnamed
" auto indentation
set autoindent
" " numÃ©ro de ligne
set number
" " utilisation de la souris
set mouse=a
" " avertissement par flash (visual bell) plutÃ´t que par bip
" set vb
"
" " surbrillance de la recherche
set hlsearch "nolhsearch
" " recherche insensible Ã  la casse
set ignorecase
"
" " tabulation en espace
set expandtab
"
" " taille de la tabulation
set ts=4
set softtabstop=4
set shiftwidth=4
"
" " active les indentations en fonction du type de fichier
" " FIXME comment changer le tab size <ici>, lÃ  c'est 8
filetype plugin indent on
"
" " fait automatiquement les indentations
set ai
set si
"
" " ligne courante mise en valeur
" set cursorline
"
" " affiche la correspondance des parenthÃ¨ses
set showmatch
"
" " tabulations et espaces marquÃ©s
" set list
" set listchars=tab:>.,trail:.
"
" " affiche le numÃ©ro de colonne et de ligne en bas
set ruler
"
" " folding
set foldmethod=indent
set foldlevel=12
"
" " pas de coupure de ligne
" set nwrap
"
" " correction orthographique sur les fichiers .tex
augroup filetypedetect
au BufNewFile,BufRead *.tex setlocal spell spelllang=fr
augroup END
"
"
map Q <ESC>

