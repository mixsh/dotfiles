mkdir -p ~/.config/i3
mkdir -p ~/.config/i3status
mkdir -p ~/.config/rofi/themes

cd ~/ && rm -f ~/.vimrc && ln -s ~/.dotfiles/.vimrc .vimrc
cd ~/ && rm -f .Xresources && ln -s ~/.dotfiles/.Xresources .Xresources
cd ~/ && rm -f .zshrc && ln -s ~/.dotfiles/.zshrc .zshrc

cd ~/.config/i3 && rm -f config && ln -s ~/.dotfiles/i3/config config
cd ~/.config/i3status && rm -f config && ln -s ~/.dotfiles/i3status/config config

cd ~/.config/rofi/themes && rm -f mixsh.config && rm -f mixsh.rasi && ln -s ~/.dotfiles/rofi/themes/mixsh.config mixsh.config && ln -s ~/.dotfiles/rofi/themes/mixsh.rasi mixsh.rasi

