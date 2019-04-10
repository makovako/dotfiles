set nu					" line numbers
set relativenumber		" relative line numbers
set backspace=indent,eol,start
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set splitright
set splitbelow
set nowrap				"don't wrap lines
set history=500
set hlsearch			" highlight search
set showcmd				" display incomplete commands
set incsearch			" do inscemental search
set mouse=a				" enable mouse
set clipboard=unnamed
set wildmenu


" Commenting, use ,cc and ,cu
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>


nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
