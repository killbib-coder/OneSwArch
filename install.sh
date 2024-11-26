#!/bin/bash
echo "------------------------------------"
echo "       OneSwArch installation       "
echo "------------------------------------"
echo ""
echo "[+] Installation des dépendances :"
sudo pacman -Syyu --needed sway wl-clipboard swaylock zsh fd bat zoxide fzf upower networkmanager procps-ng brightnessctl pipewire pipewire-pulse coreutils gawk grep git vim nvim
echo "[+] Complete"
echo ""
echo "[+] Installation de yay :"
git clone https://aur.archlinux.org/yay.git .yay && cd .yay && makepkg -si && cd ../ && rm -rf .yay
echo "[+] Complete"
echo ""
echo "[+] Configuration de zsh :"
cp -r config/zsh/.* ~/ && chsh -s /bin/zsh $USER
echo "[+] Complete"
echo ""
echo "[+] Mise en place des configurations :"
cp -r config/* ~/
echo "[+] Complete"
sleep 10
