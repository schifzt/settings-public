"
"環境依存設定
"path周りの設定
""--------------------------------------------------------------------
" "現在開いているファイルがあるディレクトリに移動
" command! Local call s:Local()
" nnoremap <S-l> :Local<CR>
" function! s:Local()
"     lcd %:h
" endfunction
" "--------------------------------------
" "プログラミングディレクトリに移動
" command! Root call s:Root()
" nnoremap root :Root
" function! s:Root()
"     cd Z:\Programing
" endfunction

"共通設定
"基本設定
"--------------------------------------------------------------------
"タブを常に表示
set showtabline=2
"ピープ音を鳴らさない
set visualbell t_vb=
"encoding関係
set encoding=utf-8
set fileencodings=cp932,iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

"--------------------------------------------------------------------
"swapファイル(~で終わるファイル)を作らない
set noswapfile
" undoファイル(~unで終わるファイル)
set undofile
set undodir=~/vimfiles/undo
"コマンド履歴は100個まで
set history=100
" ハイライトサーチを有効にする。文字列検索は /word とか *
set hlsearch
" 大文字小文字を区別しない(検索時)
set ignorecase
" ただし大文字を含んでいた場合は大文字小文字を区別する(検索時)
set smartcase
"--------------------------------------------------------------------
" 関数とかの折りたたみ
set foldmethod=marker
" カーソル位置が右下に表示される
set ruler
" 行番号を付ける
set number
"set relativenumber
" タブ文字の表示 ^I で表示される
set list
" コマンドライン補完が強力になる
set wildmenu
" コマンドを画面の最下部に表示する
set showcmd
" クリップボードを共有する(設定しないとvimとのコピペが面倒)
set clipboard=unnamed
"折り返しを表示する
let &showbreak = '>>'
set cpoptions += "n"
"--------------------------------------------------------------------
" 改行時にインデントを引き継いで改行する
set autoindent
" インデントにつかわれる空白の数
set shiftwidth=4
" <Tab>押下時の空白数
set softtabstop=4
" <Tab>押下時に<Tab>ではなく、ホワイトスペースを挿入する
set expandtab
" <Tab>が対応する空白の数
set tabstop=4
"折り返ししない　改行するときは続きの行が見えなくなる
"set nowrap
"set wrap
"自動的に改行が入るのを無効化したいなら0代入
set textwidth=0
"その代わり85文字目にラインを入れる
set colorcolumn=85
"カーソルの上下に行事する最小限の行数
set scrolloff=10
"--------------------------------------------------------------------
" インクリメント、デクリメントを16進数にする(0x0とかにしなければ10進数です。
" 007をインクリメントすると010になるのはデフォルト設定が8進数のため)
set nf=hex
" マウス使えます
set mouse=a"

"--------------------------------------------------------------------
"alternative to usual plugins
"--------------------------------------------------------------------
"file tree
nnoremap <Space>e :20Lexplore<CR>
"turn off highlight
nnoremap <C-L> :noh<CR>| :redraw

"キーマッピング
"--------------------------------------------------------------------
" 入力モード中に素早くjjと入力した場合はESCとみなす
inoremap jj <Esc>
"vnoremap jj <Esc>

"wwで括弧を右に抜ける
inoremap ww <right>

"対応する括弧に移動
nnoremap [ %
nnoremap ] %

"<F3>でカーソル下のファイルを新しいタブで開く
nnoremap <F3> <C-w>gf
"矢印キーの無効化　トレーニング！
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Right> <Nop>
noremap <Left> <Nop>

"jとgj、kとgkを入れ替え
noremap j gj
noremap gj j
noremap k gk
noremap gk k


"--------------------------------------------------------------------
"plugin
"--------------------------------------------------------------------
"NeoBundleは使わない
"vim-trailing-whitespace
"indentLine
"vim-smartinput
"caw.vim
"neocomlete.vim
"
"vim-trailing-whitespace
"autocmd BufWritePre * :FixWhitespace
"caw.vim
nmap cc <Plug>(caw:hatpos:toggle)
vmap cc <Plug>(caw:hatpos:toggle)
