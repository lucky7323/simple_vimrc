" 현재 커서 표시
set cursorline

" line number
set nu

" smart 들여쓰기
set smartindent

" tab을 4space 로 변환
set tabstop=4
set expandtab
set shiftwidth=4

" backspace 사용
set backspace=indent,eol,start

" syntax on 
: syntax on

" 검색 하이라이팅
set hls

" 검색 dynamically highligting
set incsearch

" 검색 대소문자 무시
set ignorecase

" OS 시스템 클립보드 사용하기
set cb=unnamed

" wildcards ignore
set wildignore=*.swp,*.swo,*.class

" Folding (zc & zo)
set foldenable
set foldmethod=indent
set foldlevel=99
set foldopen-=search
set foldopen-=undo

" Mouse Functions
set mouse=a
set mousehide

" Timeout Delay 변경 (default: 1000ms)
set timeoutlen=250

" tab pannel 활성화
set showtabline=2

" show command typing
set showcmd

" 괄호 매칭 하이라이팅
set showmatch

" relative line number 를 이용해 해당 위치로 한번에 이동 가능 (insert 중에는 비활성)
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END

" 중괄호 사용하는 언어들을 위한 키보드 매핑
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}

" << vim 참고기능들 >>
" (1) register 이용한 yank
" ex)
" : 5, 10 yank a  ( 'a' register 에 5~10 line 저장 )
" : put a ( 현재 커서 위치에 'a' register 에 저장된거 붙여넣기 )
" : echo @a ( 'a' register 내용 확인 )
"
" register 는 a~z, A~Z 를 사용할 수 있는데, 소문자는 덮어쓰고, 대문자는 append 됨
