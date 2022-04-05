FROM archlinux:base

RUN pacman -Syu --noconfirm gvim neovim make diffutils
COPY . /tmp/vim-prism
WORKDIR /tmp/vim-prism/tests
CMD make
