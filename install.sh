#!/data/data/com.termux/files/usr/bin/bash
# NetHunter CLI Installer by Forhad

# Update and install required Termux packages
pkg update -y
pkg upgrade -y
pkg install -y proot-distro git wget curl nano

# Install Debian via proot-distro
proot-distro install debian

# Configure the Debian environment
proot-distro login debian << 'EOF'
apt update && apt upgrade -y
apt install -y nmap hydra sqlmap metasploit-framework dnsutils dnsenum whois
logout
EOF

# Create nethunter shortcut command
cat > $PREFIX/bin/nethunter << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash
proot-distro login debian
EOF

chmod +x $PREFIX/bin/nethunter

# Custom Bash Prompt in Termux
echo -e "\n# Forhad Custom Prompt\nPS1='\n\[\e[1;31m\]💀 forhad@localhost \[\e[1;34m\][\w]\n\[\e[0m\] '" >> ~/.bashrc

echo -e "\n✅ Installation complete!\nRun 'nethunter' to start Kali CLI shell.\n"
