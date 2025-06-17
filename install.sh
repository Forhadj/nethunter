# Create the content of install.sh file
install_sh_content = """#!/data/data/com.termux/files/usr/bin/bash
# NetHunter CLI Installer by Forhad

# Step 1: Update and install required packages
pkg update -y
pkg upgrade -y
pkg install -y proot-distro git wget curl nano

# Step 2: Install Debian using proot-distro
proot-distro install debian

# Step 3: Create 'nethunter' command for quick access
cat > $PREFIX/bin/nethunter << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash
proot-distro login debian
EOF

chmod +x $PREFIX/bin/nethunter

# Step 4: Configure Debian environment
proot-distro login debian << 'EOF'
apt update && apt upgrade -y
apt install -y nmap hydra sqlmap metasploit-framework dnsutils dnsenum whois net-tools

# Step 5: Set custom shell prompt
cat >> ~/.bashrc << 'EOP'

# 💀 Forhad Prompt
PS1='\\n\\[\\e[1;31m\\]💀 forhad@localhost \\[\\e[1;34m\\][\\w]\\n\\[\\e[0m\\] '
EOP

logout
EOF

# Step 6: Done
echo -e "\\n✅ Installation complete!\\nRun 'nethunter' to start the CLI shell.\\n"
"""

# Save the content to a file
install_sh_path = "/mnt/data/install.sh"
with open(install_sh_path, "w") as file:
    file.write(install_sh_content)

install_sh_path
