FROM alpine:3.12
RUN apk update && apk upgrade
RUN apk add tmux st vim ripgrep fzf curl wget git ctags

RUN mkdir devi
WORKDIR /devi

RUN git clone https://github.com/kana/vim-arpeggio ~/.vim/bundle/vim-arpeggio
RUN git clone https://github.com/nanotech/jellybeans.vim ~/.vim/bundle/jellybeans.vim
RUN git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
RUN git clone http://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
RUN git clone http://github.com/terminaldweller/fedora && cd fedora/baseline && cp ./.vimrc ~/.vimrc
RUN vim -c "PluginInstall" -c "qa"
