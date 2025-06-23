# WIP
not recommended to use



# Intallation

### Recommend to fork this repository and change usernames to yours
inside of [flake.nix](https://github.com/Mafien01/NixosHyprConf/blob/main/flake.nix)
> Dont forget to run `nix flake update` after changing flake

inside of [nixos/modules/user.nix](https://github.com/Mafien01/NixosHyprConf/blob/main/nixos/modules/user.nix)

inside of [home-manager/home.nix](https://github.com/Mafien01/NixosHyprConf/blob/main/home-manager/home.nix)

inside of [home-manager/modules/git/default.nix](https://github.com/Mafien01/NixosHyprConf/blob/main/home-manager/modules/git/default.nix): name and mail

and after, in instalation clone not my repository, but yours


## From existing config:

### Clone repostory as ~/nix
```
git clone https://github.com/Mafien01/NixosHyprConf ~/nix
```
### Copy you previus "hardware-configuration.nix" to ~/nix/nixos

if your hardware conf is inside of /etc/nixos/ (by default its here), then run:

```
rm -f ~/nix/nixos/hardware-configuration.nix
```
```
cp /etc/nixos/hardware-configuration.nix ~/nix/nixos/hardware-configuration.nix
```

### Rebuild nixos using ~/nix flake
```
sudo nixos-rebuild boot --flake ~/nix
```
### Switch home manager using ~/nix flake
```
home-manager switch --flake ~/nix
```

### Reboot


## From scratch
Follow https://nixos.wiki/wiki/NixOS_Installation_Guide until **Partitioning**
then, partiotion you drive like (recomment to use **cfdisk**)

| Partition   | Size        | Type             |
|-------------|-------------|------------------|
| 1           | 512M        | Efi System       |
| 2           | 4G          | Linux swap       |
| 3           | what left   | Linux filesystem |

### Label+format partiotions
this is required because `hardware-configuration.nix` is using those to find needed partitions

**All commands runs as `sudo su`**

> Replace /dev/sda with you actual drive
```
mkfs.fat -F 32 /dev/sda1
```
```
fatlabel /dev/sda1 NIXBOOT
```
```
mkfs.ext4 /dev/sda3 -L NIXROOT
```
```
mkswap -L "NIXSWAP" /dev/sda2
```
### Mount partitions

```
mount /dev/disk/by-label/NIXROOT /mnt
```
```
mount --mkdir /dev/disk/by-label/NIXBOOT /mnt/boot
```
```
swapon /dev/disk/by-label/NIXSWAP
```
### Continue following guide from 'Create NixOS config'
in configuration.nix, install `git`


### After installation of NixOS, clone repository as ~/nix
```
git clone https://github.com/Mafien01/NixosHyprConf ~/nix
```
### Rebuild nixos using ~/nix flake
```
sudo nixos-rebuild boot --flake ~/nix
```
### Switch home manager using ~/nix flake
```
home-manager switch --flake ~/nix
```
### Reboot

