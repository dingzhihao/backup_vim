set nocompatible  " ����vi����ģʽ

" autocmd! bufwritepost _vimrc source %   " �Զ����������ļ�������vim�޸������ļ�������ʱ

"common conf {{

set helplang=cn         " ����ϵͳ����Ϊ���ģ��������İ�������װ�󣬲Ż���Ч

set fileencodings=utf-8,gbk   " ʹ��utf-8��gbk���ļ�

if has('gui_running')
    set guifont=Consolas:h9:cANSI   " ��������
else
    set t_Co=256
endif

syn on                  " �﷨֧��

set ai                  " �Զ�����
set bs=2                " ��insertģʽ�����˸��ɾ��
set showmatch           " ����ƥ��
set laststatus=2        " ������ʾ״̬��

set autoindent          " �����Զ���������
" set cindent             " ���� C �����������ܣ�Ĭ�Ϲر�
set smartindent         " ������C���Ե��������Ե������������ܣ�
                        " ��cindent��ɫ������cindent�ر�״̬����Ч��
                        " ���autoindentʹ��

set expandtab           " ���������������ʹ�ã�����tab�������ո���
set shiftwidth=4
set tabstop=4

if has('gui_running')
    set colorcolumn=80      " �ڵ�80���ַ�����ʾ��ֱ����
endif
" set textwidth=78        " ����һ��������������ַ�����0ֵ��ʾ���ô˹���
" set linebreak           " ���ʻ���

set cursorline          " Ϊ�������������»���
set number              " ��ʾ�к�
set autoread            " �ļ���vim֮���޸Ĺ����Զ����¶���

set ignorecase          " ����ʱ���Դ�Сд
set hls                 " ����ʱ������ʾƥ����
set incsearch           " �������ң������������ַ�������̬��ʾ��ǰƥ���ַ�

" set foldmethod=syntax  "�����۵�

filetype plugin indent on   " ���ļ����ͼ��

"}}


" Ϊ��ǩҳ�������ã�ͨ��ctrl h/l�л���ǩ
" ʹ�ã�
"     ��vim����:tabnew filename ���±�ǩ�д���Ϊfilename���ļ���
" conf for tabs {{
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>
"}}


" conf for plugins {{{

" pathogen��vim�����������Ĳ��
" site: https://github.com/tpope/vim-pathogen
" pathogen {
execute pathogen#infect()
"}


" ������ɫΪsilarzed
" site: http://ethanschoonover.com/solarized/vim-colors-solarized
" conf for vim-color-silarzed {
syntax enable
if has('gui_running')
    set background=dark
    " set background=light
else
    let g:solarized_termcolors=256
    let g:solarized_termtrans=1
    set background=dark
    " set background=light
endif
colorscheme solarized
let g:solarized_contrast  =   "high"
let g:solarized_visibility =  "high"
"}


" ״̬��������
" site: https://github.com/Lokaltog/vim-powerline
" conf for powerline {
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
let g:Powerline_symbols = 'fancy'
"}


" ������ʾĿ¼���ṹ
" site: https://github.com/scrooloose/nerdtree
" conf for NERDTree {
map <C-f> :NERDTreeToggle<CR>
"}



" ctags��ʹ�ã�һ��ϵͳĬ��װ��ctags����һֱ��ʹ�ã�
" use of ctage {
" ������������ctags -R�����ڵ�ǰĿ¼�����ɱ�ǩ�����ļ���Ĭ��Ϊtags��
" ��vim�༭��ǰĿ¼���ļ��ǣ�����ָ��tags�ļ�λ�ã�vim���ڵ�ǰĿ¼��Ѱ�ҡ��ҵ��󣬿���һ�¿�ݼ�������ת:
" ctrl-] ����ת��������ڶ�����֮��
" ctrl-t ��������תǰλ��
" [n]ctrl-t ��[n]Ϊ���֣������תn�Σ��ȼ����ظ�n��ctrl-t����
"}

" taglist������
" site: https://github.com/vim-scripts/taglist.vim
" ʹ�ã�
"     ��ʹ��vim��ĳ�������ļ�ʱ�����ǿ�����:Tlist��taglist���ڣ�����ó���߱��ࡢ�ӿڡ����Ե�Ԫ�أ��ͻ���taglist������ʾ������
" conf for taglist {
let Tlist_Show_One_File = 1            "ֻ��ʾ��ǰ�ļ���taglist��Ĭ������ʾ���
let Tlist_Exit_OnlyWindow = 1          "���taglist�����һ�����ڣ����˳�vim
let Tlist_Use_Right_Window = 1         "���Ҳര������ʾtaglist
let Tlist_GainFocus_On_ToggleOpen = 1  "��taglistʱ����걣����taglist����
let Tlist_Auto_Update = 1              "�Զ�����Tlist
" let Tlist_Ctags_Cmd='D:\Program Files (x86)\Vim\vim74\ctags.exe'  "����ctags�����λ��
nnoremap <leader>tl : Tlist<CR>        "���ùرպʹ�taglist���ڵĿ�ݼ�
"}


" ��ǩ����
" site: http://www.vim.org/scripts/download_script.php?src_id=4700
" use of visualmark {
" ʹ��vim��һ���ļ���ʹ�ÿ�ݼ�mm������ǩ���ٴ�ʹ�ã�ȡ����ǩ����ͨ��F2��shift+F2���������л������
"}


" emmet����
" site: https://github.com/mattn/emmet-vim
" use of emmet {
" }


" markdown����
" site: https://github.com/plasticboy/vim-markdown
" conf for markdown {{
let g:vim_markdown_folding_disabled=1
" use of markdown {
" - `]]`: go to next header. `<Plug>(Markdown_MoveToNextHeader)`
" - `[[`: go to previous header. Contrast with `]c`. `<Plug>(Markdown_MoveToPreviousHeader)`
" - `][`: go to next sibling header if any. `<Plug>(Markdown_MoveToNextSiblingHeader)`
" - `[]`: go to previous sibling header if any. `<Plug>(Markdown_MoveToPreviousSiblingHeader)`
" - `]c`: go to Current header. `<Plug>(Markdown_MoveToCurHeader)`
" - `]u`: go to parent header (Up). `<Plug>(Markdown_MoveToParentHeader)
" }
" }}


"}}}


