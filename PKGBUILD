pkgname=rtw88-8821ce-dkms
pkgver=1.0.0
pkgrel=2
pkgdesc="Backport RTW88 drier"
arch=('x86_64')
license=('GPL2')
depends=('dkms')
makedepends=('git' 'bc')
conflicts=()
source=(
  "https://git.kernel.org/torvalds/t/linux-5.12-rc2.tar.gz"
  "dkms.conf"
  "Makefile"
)
sha256sums=(
  'fccc4b9e65cbffd5f75ebaed0904df96d10d431c675823875cdde94e40e09d0f'
  'SKIP'
  'SKIP'
)

prepare() {
  cd linux-5.12-rc2
}

package() {
  cd ${srcdir}/linux-5.12-rc2/drivers/net/wireless/realtek/rtw88
  mkdir -p ${pkgdir}/usr/src/${pkgname}
  cp -pr * ${pkgdir}/usr/src/${pkgname}
  cat ${srcdir}/Makefile >> ${pkgdir}/usr/src/${pkgname}/Makefile
  cp ${srcdir}/dkms.conf ${pkgdir}/usr/src/${pkgname}
}
