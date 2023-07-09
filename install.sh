#update mirror & system
sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
sudo cp -r src/mirrorlist /etc/pacman.d/mirrorlist
sudo pacman -Syyu

#Install aur hepler
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

#Install pakage
sudo pacman -S tmux neovim vim rofi waybar ranger python-pip sddm qt5-graphicaleffects qt5-svg qt5-quickcontrols2

#Install config

#sddm theme
paru -S sddm-theme-corners-git
sudo mv /etc/sddm.conf /etc/sddm.conf.bak
sudo cp -r src/sddm.conf

#Nvim config
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 

#Tmux config
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
