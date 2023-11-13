#!/bin/bash
set -eux

# PHP のソースコードのダウンロードと検証
PHP_VERSION="7.2.34"
# ソースコード
#PHP_URL="https://www.php.net/distributions/php-${PHP_VERSION}.tar.xz"
PHP_URL="https://www.php.net/get/php-${PHP_VERSION}.tar.xz/from/this/mirror"
# 署名ファイル
#PHP_ASC_URL="https://www.php.net/distributions/php-${PHP_VERSION}.tar.xz.asc"
PHP_ASC_URL="https://www.php.net/get/php-${PHP_VERSION}.tar.xz.asc/from/this/mirror"

# See: https://www.php.net/gpg-keys.php
GPG_KEYS="1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F CBAF69F173A0FEA4B537F470D66C9593118BCCB6"

# See: https://www.php.net/releases/
PHP_SHA256="409e11bc6a2c18707dfc44bc61c820ddfd81e17481470f3405ee7822d8379903"

# 必要なパッケージのインストール
apt-get update
apt-get install -y --no-install-recommends \
autoconf \
dpkg-dev \
file \
g++ \
gcc \
libc-dev \
make \
pkg-config \
re2c \
libzip4 \
ca-certificates \
curl \
git \
unzip \
xz-utils \
curl \
gnupg \
dirmngr \
libcurl4-openssl-dev \
libedit-dev \
libsqlite3-dev \
libssl-dev \
libxml2-dev \
zlib1g-dev \
libzip-dev

# PHPソースのダウンロード
# FIXME: 以下のエラーを無視する為に -k オプションを使用してSSL証明書の検証を無効している
# curl: (60) SSL certificate problem: certificate has expired
curl -k -fsSL -o php.tar.xz "$PHP_URL"
# ダウンロードしたPHPのアーカイブのSHA256ハッシュ値が予め指定された値と一致するかどうかを検証
echo "${PHP_SHA256} *php.tar.xz" | sha256sum -c -

# GPGキーの取得と検証
# FIXME: gpg: keyserver receive failed: Server indicated a failure
#export GNUPGHOME="$(mktemp -d)"
#for key in $GPG_KEYS; do
#    gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"
#done
#gpg --batch --verify php.tar.xz.asc php.tar.xz
#gpgconf --kill all
#rm -rf "$GNUPGHOME"

# PHPソースの展開
SRC_PATH="/usr/src/php${PHP_VERSION}"
mkdir -p "${SRC_PATH}"
tar -Jxf php.tar.xz -C "${INSTALL_PATH}" --strip-components=1
cd "${SRC_PATH}"
exit;

# PHPのコンフィグレーションとビルド
INSTALL_PATH="/usr/local/bin/php${PHP_VERSION}"
./configure \
--enable-fpm \
--with-fpm-user=www-data \
--with-fpm-group=www-data \
--disable-cgi \
--with-curl \
--with-libedit \
--with-openssl \
--with-zlib \
--enable-intl \
--enable-mbstring \
--enable-ftp \
--enable-mysqlnd \
--prefix="$"

make -j "$(nproc)"
make install

# PHP 7.2をデフォルトのPHPバージョンとして設定
# FIXME: update-alternatives: error: no alternatives for php
# /usr/local/bin/php
update-alternatives --set php "${INSTALL_PATH}"

# PHPのバージョン確認（オプショナル）
php -v

# TODO: ひとまず、PHP 7.2.34 に上がってはいる。./bin/cake sftp_test で OpenSSL 8.9 への接続も成功。

# TODO: fastcgi_pass の切替