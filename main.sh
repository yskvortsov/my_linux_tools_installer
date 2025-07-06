#!/usr/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install gcc -y
sudo apt install mc -y
sudo apt install htop -y
sudo apt install btop -y
sudo apt install git -y
sudo apt install python3 python3-pip python3-dev python3-venv -y
sudo apt install openvpn -y
sudo apt install tor -y
sudo apt install curl -y
sudo apt install tmux -y
sudo apt install neofetch -y
sudo apt install net-tools -y

##### Fish install ###############
sudo apt install fish -y
chsh -s /usr/bin/fish
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh
mkdir -p ~/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip -O ~/Downloads/firacode.zip
unzip ~/Downloads/firacode.zip -d ~/.local/share/fonts
fc-cache -f -v
mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
chmod u+rw ~/.poshthemes/*.json
rm ~/.poshthemes/themes.zip
echo "oh-my-posh init fish --config ~/.poshthemes/montys.omp.json | source" >> ~/.config/fish/config.fish
##################################

##### Flatpak install ############
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
##################################

##### Vim install ################
sudo apt install vim -y
echo "set number" >> ~/.vimrc
git clone --depth 1 https://github.com/sheerun/vim-polyglot ~/.vim/pack/plugins/start/vim-polyglot
##################################

##### Kitty install ##############
sudo apt install kitty
mv ~/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf_old
echo "initial_window_width 800" >> ~/.config/kitty/kitty.conf
echo "initial_window_height 600" >> ~/.config/kitty/kitty.conf
echo "remember_window_size no" >> ~/.config/kitty/kitty.conf
echo "background_opacity 0.80" >> ~/.config/kitty/kitty.conf
echo "bcursor_shape beam" >> ~/.config/kitty/kitty.conf
echo "sync_to_monitor yes" >> ~/.config/kitty/kitty.conf
echo "enable_audio_bell no" >> ~/.config/kitty/kitty.conf
echo "shell /usr/bin/fish" >> ~/.config/kitty/kitty.conf
echo "editor /usr/bin/vim" >> ~/.config/kitty/kitty.conf
echo "font_family FiraCode Nerd Font Mono" >> ~/.config/kitty/kitty.conf
echo "foreground              #FFFFFF" >> ~/.config/kitty/kitty.conf
echo "background              #282C34" >> ~/.config/kitty/kitty.conf
echo "selection_foreground    #282C34" >> ~/.config/kitty/kitty.conf
echo "selection_background    #FFFFFF" >> ~/.config/kitty/kitty.conf
echo "cursor                  #FFFFFF" >> ~/.config/kitty/kitty.conf
echo "cursor_text_color       #282C34" >> ~/.config/kitty/kitty.conf
echo "url_color               #ABB2BF" >> ~/.config/kitty/kitty.conf
echo "active_tab_foreground   #3F4451" >> ~/.config/kitty/kitty.conf
echo "active_tab_background   #D7DAE0" >> ~/.config/kitty/kitty.conf
echo "inactive_tab_foreground #ABB2BF" >> ~/.config/kitty/kitty.conf
echo "inactive_tab_background #282C34" >> ~/.config/kitty/kitty.conf
echo "color0 #3F4451" >> ~/.config/kitty/kitty.conf
echo "color8 #4F5666" >> ~/.config/kitty/kitty.conf
echo "color1 #E06C75" >> ~/.config/kitty/kitty.conf
echo "color9 #BE5046" >> ~/.config/kitty/kitty.conf
echo "color2  #98C379" >> ~/.config/kitty/kitty.conf
echo "color10 #A5E075" >> ~/.config/kitty/kitty.conf
echo "color3  #D19A66" >> ~/.config/kitty/kitty.conf
echo "color11 #E5C07B" >> ~/.config/kitty/kitty.conf
echo "color4  #61AFEF" >> ~/.config/kitty/kitty.conf
echo "color12 #4DC4FF" >> ~/.config/kitty/kitty.conf
echo "color5  #C678DD" >> ~/.config/kitty/kitty.conf
echo "color13 #DE73FF" >> ~/.config/kitty/kitty.conf
echo "color6  #56B6C2" >> ~/.config/kitty/kitty.conf
echo "color14 #4CD1E0" >> ~/.config/kitty/kitty.conf
echo "color7  #FFFFFF" >> ~/.config/kitty/kitty.conf
echo "color15 #E6E6E6" >> ~/.config/kitty/kitty.conf
##################################

##### Nvidia install section #####
distro=debian12
arch=x86_64
sudo apt install linux-headers-$(uname -r)
sudo add-apt-repository contrib
wget https://developer.download.nvidia.com/compute/cuda/repos/$distro/$arch/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb
sudo apt update
sudo apt -V install nvidia-open -y
sudo apt -V install nvidia-driver nvidia-kernel-open-dkms -y
##################################

sudo reboot
