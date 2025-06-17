#!/bin/bash
echo "[*] Installing Debian..."
pkg install proot-distro -y
proot-distro install debian

echo "[*] Creating launch shortcut: nethunter"
echo "proot-distro login debian" > $PREFIX/bin/nethunter
chmod +x $PREFIX/bin/nethunter

echo "[*] Setting up custom bash prompt"
echo "export PS1='[forhad@localhost \w]$ '" >> ~/.bashrc

echo "[*] Done! Type 'nethunter' to start Debian."