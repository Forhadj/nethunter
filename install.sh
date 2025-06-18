#!/data/data/com.termux/files/usr/bin/bash
# NetHunter CLI Installer by Forhad

pkg update -y
pkg upgrade -y
pkg install -y proot-distro git wget curl nano

proot-distro install debian

proot-distro login debian << 'EOF'
apt update && apt upgrade -y
apt install -y nmap hydra sqlmap metasploit-framework dnsutils

# Add custom prompt inside Debian
echo -e "\n# Custom prompt for Forhad\nPS1='\\[\\e[1;32m\\]┌──(forhad㉿localhost)-[\\w]\\n└─\\$ \\[\\e[0m\\]'" >> /root/.bashrc

logout
EOF

cat > $PREFIX/bin/nethunter << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash
proot-distro login debian
EOF

chmod +x $PREFIX/bin/nethunter

echo -e "\n✅ Installation complete!\nRun 'nethunter' to start the CLI shell.\n"
