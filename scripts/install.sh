# i3 gaps

sudo apt install libtool libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev xutils-dev libxcb-shape0-dev autoconf

cd /tmp
git clone https://github.com/Airblader/xcb-util-xrm
cd xcb-util-xrm
git submodule update --init
./autogen.sh --prefix=/usr
make
sudo make install

mkdir ~/i3-gaps_shiz #change the name if you must
cd ~/i3-gaps_shiz
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
autoreconf --force --install
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc
make
sudo make install

# other packages
sudo apt install -y i3status
sudo apt install -y i3lock
sudo apt install -y rxvt-unicode
sudo apt install -y compton
sudo apt install -y fonts-hack-ttf
sudo apt install -y silversearcher-ag
sudo apt install -y xautolock
sudo apt install -y xss-lock
sudo apt install -y ctags
sudo apt install -y tmux
sudo apt install -y autojump
sudo apt install -y feh
sudo apt install -y rofi
sudo apt install -y xbacklight
sudo apt install -y scrot
sudo apt install -y arc-theme
sudo apt install -y xclip
sudo apt install -y mpd
sudo apt install -y htop
sudo apt install -y lightdm-gtk-greeter lightdm-gtk-greeter-settings
sudo apt install -y lightdm

# polybar
sudo apt-get install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev libxcb-composite0-dev xcb libxcb-ewmh2 -y && git clone https://github.com/jaagr/polybar.git && cd polybar && sudo ./build.sh

# visual theme config tools
sudo apt-get install -y lxappearance gtk-chtheme qt4-qtconfig

# zsh + oh-my-zsh
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Source Sans Pro
mkdir ~/.fonts && cd ~/.fonts && git clone https://github.com/adobe-fonts/source-sans-pro.git --depth=1

