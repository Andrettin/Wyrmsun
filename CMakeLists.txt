#     ___
#    / _/    ___
#   / /   ——  \ \ ,—,__ _____ ____ ___  _____  __———,——____
#  | (    )(   \ / / \ || ___)  _ ' _ \(  ___)/ / \ ||  __ \
#  |  \__/  \__/ \ \_) ||(   | ( | | ) )\__ \( (__) || /  ) )
#   \_____/\____/ \_  / |_\  /_| /_|/_/\_____)\___/\_\_\ /_/
#                 /__/

cmake_minimum_required(VERSION 3.7.1)
project(wyrmsun VERSION 5.2.4 LANGUAGES NONE)

set(BIN_DIR games CACHE STRING "Where to install the Wyrmsun launch script")
set(DATA_DIR share/wyrmsun CACHE STRING "Where to install the Wyrmsun data files")
set(ICONS_DIR share/icons/hicolor CACHE STRING "The root of icon theme")
set(DOC_DIR share/doc/wyrmsun CACHE STRING "Where to install the Wyrmsun documentation")

configure_file(linux/wyrmsun.sh.in wyrmsun.sh @ONLY)

install(PROGRAMS ${CMAKE_CURRENT_BINARY_DIR}/wyrmsun.sh DESTINATION ${BIN_DIR} RENAME wyrmsun)
install(FILES linux/wyrmsun.desktop DESTINATION share/applications)
install(FILES linux/wyrmsun.appdata.xml DESTINATION share/metainfo)
install(FILES graphics/interface/icons/wyrmsun_icon_32.png DESTINATION ${ICONS_DIR}/32x32/apps RENAME wyrmsun.png)
install(FILES graphics/interface/icons/wyrmsun_icon_64.png DESTINATION ${ICONS_DIR}/64x64/apps RENAME wyrmsun.png)
install(FILES graphics/interface/icons/wyrmsun_icon_128.png DESTINATION ${ICONS_DIR}/128x128/apps RENAME wyrmsun.png)

install(DIRECTORY
	data
	fonts
	graphics
	interface
	maps
	modules
	music
	scripts
	sounds
	translations
	DESTINATION ${DATA_DIR}
)

install(FILES readme.txt DESTINATION ${DOC_DIR})
install(DIRECTORY documents DESTINATION ${DOC_DIR})

### PACKING ###################################################################

set(CPACK_GENERATOR DEB)
set(CPACK_PACKAGING_INSTALL_PREFIX ${CMAKE_INSTALL_PREFIX})
set(CPACK_PACKAGE_CONTACT "Anton Karmanov <techie@bastardi.net>")
set(CPACK_PACKAGE_DESCRIPTION
  "Strategy game data files
Wyrmsun is an open-source real-time strategy game which features elements of
mythology, history and fiction.

In the Wyrmsun universe a myriad of inhabited planets exist. Humans dwell on
Earth, while dwarves inhabit Nidavellir and elves nourish the world of Alfheim.
These peoples struggle to carve a place for themselves with their tools of
stone, bronze and iron. And perhaps one day they will meet one another, beyond
the stars...")

set(CPACK_DEBIAN_PACKAGE_DEPENDS "wyrmgus (=${CMAKE_PROJECT_VERSION})")
set(CPACK_DEBIAN_PACKAGE_SECTION games)

include(CPack)
