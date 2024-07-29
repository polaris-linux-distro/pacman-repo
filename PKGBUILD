pkgname=sddm-theme-eucalyptus-drop
pkgver=r53.2b72ef6
pkgrel=1
pkgdesc="Eucalyptus Drop is a fork of Sugar Candy. Qt6 support included."
arch=('any')
license=('GPL3')
depends=('sddm' 'qt5-graphicaleffects' 'qt5-quickcontrols2' 'qt5-svgz' 'qt6-5compat')
makedepends=('git')
provides=("sddm-eucalyptus-drop")
conflicts=("sddm-sugar-candy" "sddm-eucalyptus-drop")
backup=('usr/share/sddm/themes/eucalyptus-drop/theme.conf')
source=('eucalyptus-drop::git+https://gitlab.com/Matt.Jolly/sddm-eucalyptus-drop/')
sha256sums=('SKIP')

pkgver() {
  cd "$srcdir/eucalyptus-drop"
    printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
  cd "$srcdir/eucalyptus-drop"
  install -Dm644 "Main.qml" "$pkgdir/usr/share/sddm/themes/eucalyptus-drop/Main.qml"
  install -Dm644 "theme.conf" "$pkgdir/usr/share/sddm/themes/eucalyptus-drop/theme.conf"
  install -Dm644 "metadata.desktop" "$pkgdir/usr/share/sddm/themes/eucalyptus-drop/metadata.desktop"
  find ./Assets -type f -exec install -Dm644 {} "$pkgdir/usr/share/sddm/themes/eucalyptus-drop/{}" \;
  find ./Backgrounds -type f -exec install -Dm644 {} "$pkgdir/usr/share/sddm/themes/eucalyptus-drop/{}" \;
  find ./Components -type f -exec install -Dm644 {} "$pkgdir/usr/share/sddm/themes/eucalyptus-drop/{}" \;
  find ./Previews -type f -exec install -Dm644 {} "$pkgdir/usr/share/sddm/themes/eucalyptus-drop/{}" \;
}
