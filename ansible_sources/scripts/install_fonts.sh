git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd_fonts
bash install.sh
fc-cache -vf ~/.local/share/fonts
cd ..
rm -rf nerd_fonts