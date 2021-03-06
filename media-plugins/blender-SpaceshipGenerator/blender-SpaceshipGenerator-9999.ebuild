# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit git-r3

DESCRIPTION="Bkedner addon for procedurally generating 3D spaceships"
HOMEPAGE="https://github.com/a1studmuffin/SpaceshipGenerator/"
EGIT_REPO_URI="https://github.com/a1studmuffin/SpaceshipGenerator.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="media-gfx/blender[addons]"

src_install() {
	if VER="/usr/share/blender/*";then
	    insinto ${VER}/scripts/addons/
	    doins -r "${S}"
	fi
}
