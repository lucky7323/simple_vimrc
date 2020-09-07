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

" register 이용한 yank
" ex)
" : 5, 10 yank a  ( 'a' register 에 5~10 line 저장 )
" : put a ( 현재 커서 위치에 'a' register 에 저장된거 붙여넣기 )
" : echo @a ( 'a' register 내용 확인 )
"
" register 는 a~z, A~Z 를 사용할 수 있는데, 소문자는 덮어쓰고, 대문자는 append 됨
set cb=unnamed

" relative line number 를 이용해 해당 위치로 한번에 이동 가능 (insert 중에는 비활성)
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END

