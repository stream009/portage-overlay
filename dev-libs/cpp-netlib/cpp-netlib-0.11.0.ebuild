# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit cmake-utils

DESCRIPTION="STL, Boost friendly high-level network library for C++"
HOMEPAGE="http://cpp-netlib.org"
SRC_URI="http://commondatastorage.googleapis.com/cpp-netlib-downloads/0.11.0/cpp-netlib-0.11.0.tar.bz2"

LICENSE="Boost-1.0"
SLOT="0"
KEYWORDS="~x86"

RDEPEND=">=dev-libs/boost-1.55.0[static-libs]"
DEPEND="${RDEPEND}
	>=dev-util/cmake-2.8"

S="${WORKDIR}/${P}-final"

src_configure() {
	cmake-utils_src_configure
}

src_install() {
	cmake-utils_src_install
}
