# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

ROS_REPO_URI="https://github.com/ros/genpy"
KEYWORDS="~amd64 ~arm"

inherit ros-catkin

DESCRIPTION="Python ROS message and service generators"
HOMEPAGE="http://wiki.ros.org/genpy"
LICENSE="BSD"
SLOT="0/${PV}"
IUSE=""

RDEPEND="dev-ros/genmsg[${PYTHON_USEDEP}]
		dev-python/pyyaml[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	test? (
		dev-python/nose[${PYTHON_USEDEP}]
	)
"
PATCHES=( "${FILESDIR}/yaml.patch" )
