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
sudo apt install i3status
sudo apt install rxvt-unicode
sudo apt install compton
sudo apt install fonts-hack-ttf
sudo apt install silversearcher-ag
sudo apt install xautolock
sudo apt install xss-lock
sudo apt install ctags
sudo apt install tmux
sudo apt install autojump
