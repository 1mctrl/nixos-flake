
# nixos-flake

**My personal NixOS configuration** powered by flakes. Minimal, modular, and fully declarative.

## 📂 Structure

```txt
.
├── flake.nix        # Main flake entrypoint
├── flake.lock       # Locked dependencies
├── hosts/           # Host-specific configurations
├── modules/         # Custom NixOS modules
└── README.md        # This file
````
![image](https://github.com/user-attachments/assets/d9ed950d-e137-4a74-aa92-29ef56a2adc8)

## 🚀 Usage

1. Clone the repository:

```bash
git clone https://github.com/1mctrl/nixos-flake.git
cd nixos-flake
```

2. Install NixOS using the flake:

```bash
nixos-install --flake .#hostname
```

Replace `hostname` with the name of your machine defined in `hosts/`.

## ✨ Features

* ⚡ **Minimalist setup**
* 🖥 **Window Manager / DE:** bspwm 
* 🐚 **Shell:** fish
* 🎨 **Modular config**
* 🔧 **Fully reproducible system**

* ![image](https://github.com/user-attachments/assets/994de393-41cf-4814-b819-198db4c05e34)



