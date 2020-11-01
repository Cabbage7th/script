#!/bin/sh

# select a mirror in China
sudo pacman-mirrors -i -c China -m rank
# update cache
sudo pacman -Syy
# install yay
sudo pacman -S yay

# install base libs
yay -S base-devel
# install base tools
yay -S git vim make cmake gcc tmux

# sugou pinyin
yay -S fcitx-im fcitx-configtool fcitx-sogoupinyin
echo "export GTK_IM_MODULE=fcitx" > ~/.xprofile
echo "export QT_IM_MODULE=fcitx" >> ~/.xprofile
echo 'export XMODIFIERS="@im=fcitx"' >> ~/.xprofile

# install softwares
yay -S google-chrome
yay -S wps-offce ttf-wps-fonts
yay -S code
yay -S ripgrep

# interesting cmd
yay -S screenfetch
yay -S lolcat
yay -S figlet toilet
yay -S aview imagemagick
# common softwares
yay -S ulauncher
yay -S variety
