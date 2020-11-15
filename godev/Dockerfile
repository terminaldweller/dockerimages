FROM alpine:3.12
RUN apk update && apk upgrade
RUN apk add tmux st vim ripgrep fzf curl wget git ctags zsh python3 lynx go make cmake gcc lua gdb
RUN apk add build-base openssh w3m torsocks mksh ruby tor fontconfig python3-dev py3-pip ruby-rdoc
RUN apk add nodejs-lts npm openjdk11 libzmq llvm perl libc6-compat clang util-linux ncurses-terminfo
RUN apk add clang-dev mandoc man-pages less less-doc bash bison irssi
RUN apk add --virtual build-deps
# get docker scripts
RUN (cd /root && git clone https://github.com/terminaldweller/dockerscripts && cd dockerscripts && chmod +x vimplugins.sh && ./vimplugins.sh)
RUN (cd /root/dockerscripts  && cp .wakatime.cfg /root)
#install ycm
RUN (cd  ~/.vim/bundle/YouCompleteMe && python3 ./install.py --all --system-libclang)
# install gem
RUN wget https://rubygems.org/rubygems/rubygems-3.1.4.tgz && tar xvf rubygems-3.1.4.tgz &&  cd rubygems-3.1.4 && ruby setup.rb
RUN gem install tmuxinator
# pip stuff
RUN pip3 install ranger-fm
# go stuff
RUN go get github.com/yudai/gotty

# fonsts
RUN mkdir /root/.font
RUN wget -P /root/.font https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DejaVuSansMono/Bold-Italic/complete/DejaVu%20Sans%20Mono%20Bold%20Oblique%20Nerd%20Font%20Complete%20Mono.ttf
RUN wget -P /root/.font https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DejaVuSansMono/Regular/complete/DejaVu%20Sans%20Mono%20Nerd%20Font%20Complete%20Mono.ttf
RUN wget -P /root/.font https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DejaVuSansMono/Italic/complete/DejaVu%20Sans%20Mono%20Oblique%20Nerd%20Font%20Complete%20Mono.ttf
RUN wget -P /root/.font https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DejaVuSansMono/Bold/complete/DejaVu%20Sans%20Mono%20Bold%20Nerd%20Font%20Complete%20Mono.ttf
RUN fc-cache -f

RUN (cd /root && git clone http://github.com/terminaldweller/fedora)
RUN (cd /root/fedora && cp ./.vimrc ~/.vimrc)
RUN (cd /root/fedora/baseline && cp ./.tmux.conf ~/.tmux.conf)

RUN sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
RUN (cd /root/fedora/baseline && cp ./.zshrc ~/.zshrc)

RUN zsh
ENV SHELL=/bin/zsh
RUN (cd ~; git clone https://github.com/wting/autojump)
RUN (cd ~/autojump; python3 ./install.py)
RUN echo "#autojump" >> ~/.zshrc
RUN (cd ~; echo "[[ -s $(pwd)/.autojump/etc/profile.d/autojump.sh ]] && source $(pwd)/.autojump/etc/profile.d/autojump.sh" >> ~/.zshrc)
RUN echo "autoload -U compinit && compinit -u" >> ~/.zshrc
RUN (cd ~/.oh-my-zsh/plugins; git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting)
RUN ln -sf /bin/zsh /bin/sh
RUN zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
RUN ln -sf /bin/busybox /bin/sh

# RUN vim -T xterm +Helptags +qall
# RUN vim +Helptags +qall

RUN ln -s /usr/bin/python3 /bin/python
RUN ln -s /bin/mksh /bin/ksh
RUN mkdir ~/.w3m
RUN (cd /root/fedora/.w3m && cp -R * ~/.w3m)
# RUN sudo tor; disown
EXPOSE 9000
EXPOSE 8080

# RUN apk add util-linux
# nvm stuff
# RUN zsh -c nvm install --lts

# libxkb
RUN apk add libx11-dev libxkbfile-dev
RUN (cd /root && git clone https://github.com/grwlf/xkb-switch)
RUN (cd /root/xkb-switch && mkdir build && cd build && cmake ../ &&  make && make install)

RUN vim -c "PluginInstall" -c "qa!"
RUN vim -c "GoInstallBinaries" -c "qa!"

# project stuff
# RUN ln -sf /bin/zsh /bin/sh
# RUN gvm install go1.13 && gvm use go1.13 --default
# RUN ln -sf /bin/busybox /bin/sh
RUN go get github.com/go-delve/delve/cmd/dlv
RUN go get golang.org/x/tools/cmd/godoc
RUN go get github.com/go-kit/kit/transport/http
RUN go get github.com/go-kit/kit/endpoint
RUN (cd /root && git clone https://github.com/terminaldweller/gocrucible)
