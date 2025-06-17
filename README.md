# Forhad's NetHunter Termux Installer

A simple and clean Debian-based NetHunter CLI setup for Termux, customized for a better experience with styled prompt.

## 🚀 Features
- Debian installation via `proot-distro`
- Auto login shortcut command: `nethunter`
- Custom bash prompt: `[forhad@localhost ~]$`
- Pre-installed tools: nmap, sqlmap, hydra, metasploit-framework
- CLI only (No GUI / VNC)
- Cool branding and emoji-style terminal

## 📦 Installation
```bash
pkg update -y && pkg upgrade -y
pkg install proot-distro -y
unzip nethunter-termux.zip
cd nethunter-termux
bash install.sh
```

Then just type:
```bash
nethunter
```

## ❗ Note
- This is a **CLI-only NetHunter**.
- Use `apt update && apt upgrade` inside Debian to keep tools updated.
- Do NOT run `proot-distro login debian` directly after entering `nethunter`.

## 🔗 Social Links
- Facebook: [https://facebook.com/forhadhasan995](https://facebook.com/forhadhasan995)
- GitHub: [https://github.com/Forhadj](https://github.com/Forhadj)
- Telegram: [https://t.me/f_forhad](https://t.me/f_forhad)
- YouTube: [https://youtube.com/@forhad2.00](https://youtube.com/@forhad2.00)