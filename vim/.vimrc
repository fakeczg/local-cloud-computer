syntax enable
set background=dark  " 适用于深色背景
colorscheme desert  " 使用 desert 主题

" 增强光标行显示为下划线并加粗
set cursorline
highlight CursorLine term=bold cterm=bold ctermbg=NONE  " 保持光标行加粗

" 设置光标为柔和黄色背景和黑色前景
highlight Cursor term=bold cterm=bold ctermbg=LightYellow ctermfg=Black

" 启用光标闪烁
set guicursor=a:blinkon100

