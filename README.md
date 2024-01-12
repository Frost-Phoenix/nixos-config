<h1 align="center">
   <img src="./.github/assets/logo/nixos-logo.png  " width="100px" /> 
   <br>
      Frost-Phoenix's Flakes 
   <br>
      <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/palette/macchiato.png" width="600px" /> <br>
   <div align="center">

   <div align="center">
      <p></p>
      <div align="center">
         <a href="https://github.com/Frost-Phoenix/nixos-config/stargazers">
            <img src="https://img.shields.io/github/stars/Frost-Phoenix/nixos-config?color=F5BDE6&labelColor=303446&style=for-the-badge&logo=starship&logoColor=F5BDE6">
         </a>
         <a href="https://github.com/Frost-Phoenix/nixos-config/">
            <img src="https://img.shields.io/github/repo-size/Frost-Phoenix/nixos-config?color=C6A0F6&labelColor=303446&style=for-the-badge&logo=github&logoColor=C6A0F6">
         </a>
         <a = href="https://nixos.org">
            <img src="https://img.shields.io/badge/NixOS-unstable-blue.svg?style=for-the-badge&labelColor=303446&logo=NixOS&logoColor=white&color=91D7E3">
         </a>
         <a href="https://github.com/Frost-Phoenix/nixos-config/blob/main/LICENSE">
            <img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&colorA=313244&colorB=F5A97F&logo=unlicense&logoColor=F5A97F&"/>
         </a>
      </div>
      <br>
   </div>
</h1>

<br>
</div>

<p align="center">
   <img src="./.github/assets/screenshots/1.png" width="800px" /> <br>
</p>
<p align="center">
   Screeenshot last updated <b>2024-01-12</b>
</p>

### 🖼️ Gallery

<details>
<summary>
EXPAND
</summary>
<p align="center">
   <img src="./.github/assets/screenshots/3.png" width="800px" /> <br>
</p>
<p align="center">
   <img src="./.github/assets/screenshots/2.png" width="800px" /> <br>
</p>
</details>

# 🗃️ Overview

### 📚 Layout

-   [flake.nix](flake.nix) base of the configuration
-   [hosts](hosts) 🌳 per-host configurations that contain machine specific configurations
    - [nixos](hosts/nixos/) 🖥️ Default host
-   [modules](modules) 🍱 modularized NixOS configurations
    -   [core](modules/core/) ⚙️ Core NixOS configuration
    -   [homes](modules/home/) 🏠 my [Home-Manager](https://github.com/nix-community/home-manager) config
-   [pkgs](flake/pkgs) 📦 packages exported by my flake
-   [wallpapers](wallpapers/) 🌄 wallpapers collection

### 📓 Components
|                             | NixOS + Hyprland                                                                              |
| --------------------------- | :---------------------------------------------------------------------------------------------:
| **Window Manager**          | [Hyprland][Hyprland] |
| **Bar**                     | [Waybar][Waybar] |
| **Application Launcher**    | [wofi][wofi] |
| **Notification Daemon**     | [Mako][Mako] |
| **Terminal Emulator**       | [Kitty][Kitty] |
| **Shell**                   | [zsh][zsh] + [oh-my-zsh][oh-my-zsh] + [Starship][Starship] |
| **Text Editor**             | [VSCodium][VSCodium] + [Neovim][Neovim] |
| **network management tool** | [NetworkManager][NetworkManager] + [network-manager-applet][network-manager-applet] |
| **System resource monitor** | [Btop][Btop] |
| **File Manager**            | [nemo][nemo] + [yazi][yazi] |
| **Fonts**                   | [Nerd fonts][Nerd fonts] |
| **Color Scheme**            | [Catppuccin][Catppuccin] |
| **Cursor**                  | [Nordzy-cursors][Nordzy-cursors] |
| **Icons**                   | [catppuccin-papirus-folders][catppuccin-papirus-folders] |
| **Lockscreen**              | [Swaylock-effects][Swaylock-effects] |
| **Image Viewer**            | [imv][imv] |
| **Media Player**            | [mpv][mpv] |
| **Music Player**            | [audacious][audacious] |
| **Screenshot Software**     | [grimblast][grimblast] |
| **Screen Recording**        | [wf-recorder][wf-recorder] |
| **Clipboard**               | [wl-clipboard][wl-clipboard] |
| **Color Picker**            | [hyprpicker][hyprpicker] |


### 🔧 Shell aliases

#### Utils

<details>
<summary>
EXPAND
</summary>

- ```c``` -> "clear"
- ```vim``` -> "nvim"
- ```cat``` -> "bat"
- ```nano``` -> "micro"
- ```icat``` -> "kitten icat"
- ```dsize``` -> "du -hs"
- ```findw``` -> "grep -rl"
- ```l``` -> "eza --icons  -a --group-directories-first -1"
- ```ll``` -> "eza --icons  -a --group-directories-first -1 --no-user --long"
- ```tree``` -> "eza --icons --tree --group-directories-first"
</details>

#### Nixos

<details>
<summary>
EXPAND
</summary>

- ```cdnix``` -> "cd ~/nixos-config && codium ~/nixos-config"
- ```nix-shell``` -> "nix-shell --run zsh"
- ```nix-switch``` -> "sudo nixos-rebuild switch --flake ~/nixos-config#nixos"
- ```nix-switchu``` -> "sudo nixos-rebuild switch --upgrade --flake ~/nixos-config#nixos"
- ```nix-flake-update``` -> "sudo nix flake update ~/nixos-config#"
- ```nix-clean``` -> "sudo nix-collect-garbage && sudo nix-collect-garbage -d && sudo rm /nix/var/nix/gcroots/auto/* && nix-collect-garbage && nix-collect-garbage -d"
</details>

#### Git
<details>
<summary>
EXPAND
</summary>

- ```ga```   -> "git add"
- ```gaa```  -> "git add --all"
- ```gs```   -> "git status"
- ```gb```   -> "git branch"
- ```gm```   -> "git merge"
- ```gpl```  -> "git pull"
- ```gplo``` -> "git pull origin"
- ```gps```  -> "git push"
- ```gpso``` -> "git push origin"
- ```gc```   -> "git commit"
- ```gcm```  -> "git commit -m"
- ```gch```  -> "git checkout"
- ```gchb``` -> "git checkout -b"
- ```gcoe``` -> "git config user.email"
- ```gcon``` -> "git config user.name"
- ```g``` -> "lazygit"
</details>

### 📝 Scripts

All Scripts are exported as packages in ```modules/home/scripts/default.nix```

### ⌨️ Keybinds

View all keybinds by pressing ```$mainMod F1```

<details>
<summary>
COMPLETE LIST (EXPAND)
</summary>
</details>

# 🛠️ Instalation 

# 👥 Credits

Other dotfiles that I learned / copy from:

- Nix Flakes
  - [nomadics9/NixOS-Flake](https://github.com/nomadics9/NixOS-Flake2): This is where I start my nixos / hyprland journey.
  - [samiulbasirfahim/Flakes](https://github.com/samiulbasirfahim/Flakes): General flake / files structure
  - [justinlime/dotfiles](https://github.com/justinlime/dotfiles): Mainly waybar
  - [skiletro/nixfiles](https://github.com/skiletro/nixfiles): Vscodium config (that prevent it to crash)
  - [fufexan/dotfiles](https://github.com/fufexan/dotfiles)

- README
  - [ryan4yin/nix-config](https://github.com/ryan4yin/nix-config)
  - [NotAShelf/nyx](https://github.com/NotAShelf/nyx)
  - [sioodmy/dotfiles](https://github.com/sioodmy/dotfiles)
  - [Ruixi-rebirth/flakes](https://github.com/Ruixi-rebirth/flakes)


<p align="center"><img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" /></p>

<!-- end of page, send back to the top -->

<div align="right">
  <a href="#readme">Back to the Top</a>
</div>

<!-- Links -->
[Hyprland]: https://github.com/hyprwm/Hyprland
[Kitty]: https://github.com/kovidgoyal/kitty
[Starship]: https://github.com/starship/starship
[Waybar]: https://github.com/Alexays/Waybar
[wofi]: https://hg.sr.ht/~scoopta/wofi
[Btop]: https://github.com/aristocratos/btop
[nemo]: https://github.com/linuxmint/nemo
[yazi]: https://github.com/sxyazi/yazi
[zsh]: https://ohmyz.sh/
[oh-my-zsh]: https://ohmyz.sh/
[Swaylock-effects]: https://github.com/mortie/swaylock-effects
[audacious]: https://audacious-media-player.org/
[mpv]: https://github.com/mpv-player/mpv
[VSCodium]:https://vscodium.com/
[Neovim]: https://github.com/neovim/neovim
[grimblast]: https://github.com/hyprwm/contrib
[imv]: https://sr.ht/~exec64/imv/
[Mako]: https://github.com/emersion/mako
[Nerd fonts]: https://github.com/ryanoasis/nerd-fonts
[NetworkManager]: https://wiki.gnome.org/Projects/NetworkManager
[network-manager-applet]: https://gitlab.gnome.org/GNOME/network-manager-applet/
[wl-clipboard]: https://github.com/bugaevc/wl-clipboard
[wf-recorder]: https://github.com/ammen99/wf-recorder
[hyprpicker]: https://github.com/hyprwm/hyprpicker
[Catppuccin]: https://github.com/catppuccin/catppuccin
[catppuccin-papirus-folders]: https://github.com/catppuccin/papirus-folders
[Nordzy-cursors]: https://github.com/alvatip/Nordzy-cursors