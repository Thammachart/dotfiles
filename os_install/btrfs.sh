set -e

PAR=$1
BTRFS_O=noatime,commit=120,compress=zstd:1,space_cache

mkfs.btrfs -L arch $PAR

mount $PAR /mnt

btrfs su cr /mnt/@
btrfs su cr /mnt/@home
btrfs su cr /mnt/@root
btrfs su cr /mnt/@var
btrfs su cr /mnt/@opt
btrfs su cr /mnt/@tmp
btrfs su cr /mnt/@.snapshots

chattr +C /mnt/@var

umount /mnt

mount -o $BTRFS_O,subvol=@ $PAR /mnt
mount -o $BTRFS_O,subvol=@home $PAR /mnt/home
mount -o $BTRFS_O,subvol=@root $PAR /mnt/root
mount -o $BTRFS_O,subvol=@var $PAR /mnt/var
mount -o $BTRFS_O,subvol=@opt $PAR /mnt/opt
mount -o $BTRFS_O,subvol=@tmp $PAR /mnt/tmp
mount -o $BTRFS_O,subvol=@.snapshots $PAR /mnt/.snapshots
