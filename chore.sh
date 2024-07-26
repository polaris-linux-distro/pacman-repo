# polo
rm -rf polo
git clone https://github.com/polaris-linux-distro/polo.git
cd polo
makepkg -s --noconfirm
cp *.pkg.tar.zst ../repo
cd ..

# firmware1
rm -rf aic94xx-firmware
git clone https://aur.archlinux.org/aic94xx-firmware.git
cd aic94xx-firmware
makepkg -s --noconfirm
cp *.pkg.tar.zst ../repo
cd ..


# firmware2
rm -rf ast-firmware
git clone https://aur.archlinux.org/ast-firmware.git
cd ast-firmware
makepkg -s --noconfirm
cp *.pkg.tar.zst ../repo
cd ..


# firmware3
rm -rf wd719x-firmware
git clone https://aur.archlinux.org/wd719x-firmware.git
cd wd719x-firmware
makepkg -s --noconfirm
cp *.pkg.tar.zst ../repo
cd ..

# firmware4
rm -rf upd72020x-fw
git clone https://aur.archlinux.org/upd72020x-fw.git
cd upd72020x-fw
makepkg -s --noconfirm
cp *.pkg.tar.zst ../repo
cd ..

# xvkbd
rm -rf xvkbd
git clone https://aur.archlinux.org/xvkbd.git
cd xvkbd
makepkg -s --noconfirm
cp *.pkg.tar.zst ../repo
cd ../repo

repo-add polaris.db.tar.gz *.pkg.tar.zst
cd ..
git commit -m "chore-update" -a
git push
