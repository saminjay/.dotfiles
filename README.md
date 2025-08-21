# 🛠️ Dotfiles

My personal configuration for terminal, editor, shell, and desktop environment — built around **Hyprland** on Wayland.
These dotfiles are managed with [GNU Stow](https://www.gnu.org/software/stow/) and can be quickly installed with the provided script.

> ⚠️ These configs are tailored for my personal workflow. They may not be universal, but suggestions, optimizations, and feedback are always welcome!

---

## ✨ Preview

Here’s what the setup looks like:

![Desktop Screenshot](images/desktop.png)
![Neovim Config](images/nvim.png)
![Waybar](images/waybar.png)

---

## ✨ Features

This setup includes configurations for:

- **Alacritty** – GPU-accelerated terminal emulator
- **tmux** – Terminal multiplexer for persistent sessions
- **zsh** – Interactive shell (with `ZDOTDIR` under `~/.config/zsh` for XDG compliance)
- **Neovim** – Custom editor setup with plugins and LSP
- **Hyprland** – Dynamic tiling Wayland compositor
- **Waybar** – Status bar tailored for Hyprland
- **Swaync** – Wayland-native notification daemon
- **Wofi** – Launcher menu (Wayland alternative to dmenu)

---

## 📦 Prerequisites

- **GNU Stow** is required for symlink management
- **packages.txt** contains all other required software packages for this setup
    - Install them with your system package manager before running the script

---

## 🚀 Installation

Clone the repo and run the installer:

```bash
git clone https://github.com/saminjay/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install.sh
```

This will symlink the configs into your `$HOME` directory using Stow.

---

## 📂 Structure

```
.dotfiles/
├── dot-config/       # Application configs (alacritty, neovim, zsh, etc.)
├── dot-local/        # Machine-specific overrides (ignored in git)
├── dot-personal/     # Personal scripts / extras
├── dot-wallpapers/   # Wallpapers for Hyprland setups
├── install.sh        # Bootstrap + stow installer
└── packages.txt      # Package list to install via package manager
```

---

## 🛠 Usage & Tips

* Update configs with:

    ```bash
    cd ~/.dotfiles && git pull && ./install.sh
    ```
* To exclude a config, just skip stowing that folder.
* Add personal, machine-specific overrides in `dot-local/`.
* Wallpapers and extra scripts live under their own folders — optional to use.

---

## 🙏 Acknowledgements

Inspired by and borrowing ideas from:

* [ThePrimeagen](https://github.com/ThePrimeagen)
    * [video](https://youtu.be/w7i4amO_zaE?si=d2d7WdR7mMQLEBfN)
* [Dreams of Code](https://www.youtube.com/@DreamsofCode)
    * [video](https://youtu.be/DzNmUNvnB04?si=dmjmJUhEmUyrRM2g)
* [NVIM Kickstart](https://github.com/nvim-lua/kickstart.nvim)
    * [video](https://youtu.be/m8C0Cq9Uv9o?si=fzcdA9iQVWZahCT2)
* [Wofi Tutorial](https://mephisto.cc/en/tech/wofi)

---

## 📜 License

[MIT License](./LICENSE)
Do whatever you want with these configs — adapt, copy, share.

---

## 💬 Feedback

These dotfiles are opinionated to my workflow, but I’d love to hear:

* Suggestions to make scripts more generic or optimized
* Requests for extra features or modularity
* Criticism that helps me improve the setup
