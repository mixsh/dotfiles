#!/bin/bash

yay -Sc --noconfirm

#sudo mount /dev/mapper/system /mnt/root/

# Delete the previous snapshot and create a new backup with the current system
sudo rm -rf /mnt/defvol/_snapshots/current/
sudo btrfs subvolume snapshot /mnt/defvol/_active/rootvol /mnt/defvol/_snapshots/current/

#sudo umount /mnt/root/

pacman -Syu --noconfirm
# MAKEFLAGS='-j8' yay --noconfirm
