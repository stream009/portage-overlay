# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit cmake-utils

DESCRIPTION="STL, Boost friendly high-level network library for C++"
HOMEPAGE="http://cpp-netlib.org"
SRC_URI="http://storage.googleapis.com/cpp-netlib-downloads/0.11.1/cpp-netlib-0.11.1-final.tar.bz2"

LICENSE="Boost-1.0"
SLOT="0"
KEYWORDS="~x86"

RDEPEND=">=dev-libs/boost-1.50.0"
DEPEND="${RDEPEND}
	>=dev-util/cmake-2.8"

S="${WORKDIR}/${P}-final"
IUSE="static-libs test examples"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use test CPP-NETLIB_BUILD_TESTS)
		$(cmake-utils_use examples CPP-NETLIB_BUILD_EXAMPLES)
		$(cmake-utils_useno static-libs CPP-NETLIB_BUILD_SHARED_LIBS)
	)
	cmake-utils_src_configure
}

src_install() {
	cmake-utils_src_install
}

