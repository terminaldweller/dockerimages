FROM texlive/texlive:latest
COPY ./feature-init/ /zharf/
RUN wget https://virastaran.net/wp-content/uploads/2014/01/IRFontPack-virastaran.net_.zip \
      && unzip IRFontPack-virastaran.net_.zip \
      && cd IR \
      && mkdir -p /usr/share/fonts/truetype/IR \
      && cp * /usr/share/fonts/truetype/IR/ \
      && fc-cache -fv
RUN cd /zharf && make
