FROM alpine:3.12
RUN apk update && apk upgrade
RUN apk add tmux st vim ripgrep fzf curl wget git ctags zsh python3 lynx go

RUN mkdir devi
WORKDIR /devi

RUN git clone https://github.com/nanotech/jellybeans.vim ~/.vim/bundle/jellybeans.vim
RUN git clone http://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
RUN git clone http://github.com/tpope/vim-surround ~/.vim/bundle/vim-surround
RUN git clone http://github.com/easymotion/vim-easymotion ~/.vim/bundle/vim-easymotion
RUN git clone http://github.com/ctrlpvim/ctrlp.vim ~/.vim/bundle/ctrlp.vim
RUN git clone http://github.com/chrisbra/Recover.vim ~/.vim/bundle/Recover.vim
RUN git clone http://github.com/unblevable/quick-scope ~/.vim/bundle/quick-scope
RUN git clone http://github.com/tpope/vim-repeat ~/.vim/bundle/vim-repeat
RUN git clone http://github.com/adelarsq/vim-matchit ~/.vim/bundle/vim-matchit
RUN git clone http://github.com/majutsushi/tagbar ~/.vim/bundle/tagbar
RUN git clone http://github.com/ludovicchabant/vim-gutentags ~/.vim/bundle/vim-gutentags
RUN git clone http://github.com/mbbill/undotree ~/.vim/bundle/undotree

RUN git clone http://github.com/terminaldweller/fedora && cd fedora/baseline && cp ./.vimrc ~/.vimrc
RUN go get github.com/yudai/gotty
RUN vim -T xterm +Helptags +qall

EXPOSE 9000
