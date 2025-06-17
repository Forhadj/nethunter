# 💀 NetHunter-Termux-Forhad

A lightweight custom Debian NetHunter installer for Termux, designed with a professional CLI prompt and fast tool access.

---

## 📦 Features

* Minimal Kali NetHunter install (CLI only, no GUI)
* Custom shell prompt: `[forhad@localhost ~]$`
* Fast shortcut: just type `nethunter` to start NetHunter
* Installs core tools: `nmap`, `hydra`, `sqlmap`, `metasploit-framework`, `dnsenum`, `whois`, `dig`, and more
* Works on almost all Android 7+ phones
* Root not required (Proot-based)

---

## 🛠️ Installation

```bash
pkg update && pkg upgrade -y
pkg install git -y
git clone https://github.com/Forhadj/nethunter
cd nethunter
bash install.sh
```

After install, launch with:

```bash
nethunter
```

---

## 🚀 Usage Example

```bash
[forhad@localhost ~]$ nmap -Pn -sT 192.168.0.1
[forhad@localhost ~]$ msfconsole
```

---

## 💡 What You Get

* CLI Kali inside Termux without GUI
* Runs tools just like in desktop Linux
* Auto prompt customization with emoji
* Lightweight installer script (under 20MB total)

---

## ⚠️ Possible Errors & Fixes

| Issue                                             | Fix                                                                      |
| ------------------------------------------------- | ------------------------------------------------------------------------ |
| `proot-distro should not be executed under PRoot` | Exit previous login with `exit` and run `nethunter` from Termux directly |
| `start-kali: command not found`                   | Use `nethunter` instead, it’s a shortcut                                 |
| Package not found                                 | Run: `apt update && apt full-upgrade -y` inside NetHunter                |

---

## 🌐 Socials

* 📘 Facebook: [facebook.com/forhadhasan995](https://facebook.com/forhadhasan995)
* 🧑‍💻 GitHub: [github.com/Forhadj](https://github.com/Forhadj)
* 📢 Telegram: [t.me/f\_forhad](https://t.me/f_forhad)
* ▶️ YouTube: [youtube.com/@forhad2.00](https://youtube.com/@forhad2.00)

---

## 📄 License

MIT License — Free to use, share, and modify.

---

> 🔥 Built by Forhad for learners & hackers who want full Kali tools in their pocket.
>
> 💀 Stay ethical. Stay smart.
