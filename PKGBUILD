# Maintainer: dr460nf1r3 <dr460nf1r3 at garudalinux dot org>
# Maintainer: librewish <librewish@garudalinux.org>

pkgname=garuda-setup-assistant
pkgver=1.0.9
pkgrel=1
pkgdesc="A setup utility for Garuda Linux which helps setting up & installing applications"
arch=('any')
url="https://gitlab.com/garuda-linux/applications/garuda-setup-assistant"
license=('GPL3')
depends=('yad' 'wget')
optdepends=('pamac')
makedepends=('git')
groups=('garuda')
source=("$pkgname-$pkgver.tar.gz::$url/-/archive/$pkgver/$pkgname-$pkgver.tar.gz")
md5sums=('SKIP')

package() {
    install -d $pkgdir/usr
    cp -rf $srcdir/$pkgname-$pkgver/usr $pkgdir
}
 
