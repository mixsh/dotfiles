sudo apt install -y rxvt-unicode
sudo apt install -y fonts-hack-ttf
sudo apt install -y ctags
sudo apt install -y tmux
sudo apt install -y autojump
sudo apt install -y htop

# visual theme config tools
sudo apt-get install -y lxappearance gtk-chtheme qt4-qtconfig

# zsh + oh-my-zsh
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Source Sans Pro
mkdir ~/.fonts && cd ~/.fonts && git clone https://github.com/adobe-fonts/source-sans-pro.git --depth=1

