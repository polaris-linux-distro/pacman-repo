# polo
git clone https://github.com/polaris-linux-distro/polo.git
cd polo
makepkg -s --noconfirm
cp *.pkg.tar.zst ../repo
cd ../repo

repo-add polaris.db.tar.gz *.pkg.tar.zst
cd ..
# ughhh its always my fault innit?
rm -rf polo
git commit -m "chore-update" -a
git push
