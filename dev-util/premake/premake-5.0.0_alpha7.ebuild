# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit versionator eutils

DESCRIPTION="A makefile generation tool"
HOMEPAGE="http://industriousone.com/premake"
SRC_URI="https://github.com/premake/premake-core/releases/download/v5.0.0-alpha7/premake-5.0.0-alpha7-src.zip"
S="${WORKDIR}/premake-5.0.0-alpha7"

LICENSE="BSD"
SLOT=$(get_major_version)
KEYWORDS="x86"
IUSE=""

DEPEND="app-arch/unzip"
RDEPEND=""

src_prepare() {
	epatch "${FILESDIR}/${PV}.diff"
}

src_compile() {
	emake verbose=1
}

src_install() {
	strip bin/release/premake5
	dobin bin/release/premake5
}
