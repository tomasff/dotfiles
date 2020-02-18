# Install packages
sudo pacman -Syu

sudo pacman -S go noto-fonts-emoji flameshot unzip alacritty zathura-pdf-mupdf zathura discord python vim ttf-jetbrains-mono ttf-font-awesome gucharmap rofi
sudo pacman -R bmenu morc_menu dmenu

# Install packages from AUR

git clone https://aur.archlinux.org/polybar.git
cd polybar
makepkg -si

cd ..

git clone https://aur.archlinux.org/visual-studio-code-bin.git
cd visual-studio-code-bin
makepkg -si

cd ..

git clone https://aur.archlinux.org/jetbrains-toolbox.git
cd jetbrains-toolbox
makepkg -si

cd ..

git clone https://aur.archlinux.org/texlive-installer.git
cd texlive-installer
makepkg -si

cd ..

git clone https://aur.archlinux.org/google-chrome.git
cd google-chrome
makepkg -si

# Clean up installation files

rm -rf polybar/
rm -rf visual-studio-code-bin/
rm -rf jetbrains-toolbox/
rm -rf texlive-installer/
rm -rf google-chrome/

# Install LaTeX
sudo /opt/texlive-installer/install-tl
echo "PATH=/usr/local/texlive/2019/bin/x86_64-linux:$PATH" >> .bashrc
sudo tlmgr install biblatex-bath

# Copy dotfiles
cp .bashrc ~/.
cp .bash_profile ~/.
cp .dir_colors ~/.
cp .profile ~/.
cp .vimrc ~/.
cp .Xresources ~/.
cp -r .config ~/.
cp -r .i3 ~/.
