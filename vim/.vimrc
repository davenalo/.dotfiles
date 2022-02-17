"Cheatsheet
" 
" Ctrl+y - yank (copy) visual mode      Ctrl+p - put (paste)     Ctrl+d - cut visual mode
"
" u - undo                              Ctrl+r - redo
"
" / - search pattern (n & N move)       :%s/old/new/gc - reemplazar con confirmación por caso
"
" Ctrl+v + arrows + Shift+i + # + ESC - comentar líneas
" Ctrl+v + arrows + x + ESC - borrar el primer caracter de las líneas (descomentar)

" Enter the current millenium
set nocompatible

" Números relativos laterales
set number
set relativenumber

" La opción packloadall es el módulo de vim nativo para soportar plugins,
" para que funcionen hay que crear la carpeta ~/.vim/pack/plugins/
" el directorio plugins puede llamarse de cualquier manera, yo lo he visto
" como vendor y como opt en vídeos y tal. Igualmente lo ideal es mirar la confi
" de cada plugin. Una vez hecho hay que clonar el repositorio de git, por ejemplo con:
" git clone URL.git ~/.vim/pack/plugins//nerdtree
packloadall

" Activa el resaltado de sintaxis
syntax enable

" Desactiva el mensaje de bienvenida de Vim
set shortmess+=I

" Muestra la barra de estado
set laststatus=2

" Muestra los comandos, útil para los snippets (más adelante)
set showcmd

" Backspace key behave more reasonably ¿?
set backspace=indent,eol,

" Allow hidden buffers ¿?
set hidden

" Search caseinsensitive, pero si usas caps y minúsculas entonces sí es
" sensible a esos cambios
set ignorecase
set smartcase

" Elimina la función de Q (Ex-mode)
nmap Q <Nop>

" Enable mouse support COMO BUEN NOOB
set mouse+=a

" Otros
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
"set noswapfile ¿?
set incsearch

" Display all matching files when we tab complete
set wildmenu

" via Max Cantor: github.com/maxcantor/no_plugins // youtube.com/watch?v=XA2WjJbmmoM 

" Search down into subfolders
" Provide tab-completion for all file-related tasks
set path+=**

" SNIPPETS 
" Read an empty *.md template and move the cursor where I want to  editing it.
" Recuerda CREAR la carpeta y poner los snippets necesarios,

nnoremap ,cnt :-1read $HOME/.vim/skelsnippets/codenote.md<CR>4j

nnoremap ,ztk :-1read $HOME/.vim/skelsnippets/ZettelkastenTemplate.md<CR>6j

" Copiar, cortar y pegar PARA QUE FUNCIONE HAY QUE INSTALAR vim-gtk3 (para xfc4)
" o hacer una compilación de vim que tenga activada la opcion +clipboard
" se puede comprobar con: vim --version | grep clipboard

set clipboard=unnamedplus

" this remaps Ctrl+p: ir hacia atrás (previous) en búsqueda de palabras clave en insert mode

vnoremap <C-y> "*y \| :let @+=@*<Enter><CR>0
vnoremap <C-d> "*d \| :let @+=@*<Enter><CR>0
nnoremap <C-p> "*pa
inoremap <C-p> <ESC>"*pa
vnoremap <C-p> <ESC>"*pa

" estas líneas envían el registro de x y de del/suprimir a _.
" lo que hace es escribir "_x 
" de esta forma ni x, ni del/suprimir copian o cortan contenido
" para que después no lo esté pegando sin querer por ahí.

nnoremap <x> "_x
vnoremap <x> "_x
nnoremap <del> "_x
vnoremap <del> "_x
inoremap <del> <ESC><del>


