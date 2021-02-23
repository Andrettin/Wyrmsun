project(wyrmsun NONE)
cmake_minimum_required(VERSION 3.0)

set(BINDIR bin CACHE STRING "Where to install Wyrmsun launch script")
set(DATADIR share/wyrmsun CACHE STRING "Where to install Wyrmsun data files")
set(DOCSDIR share/doc/wyrmsun CACHE STRING "Where to install Wyrmsun documentation")

configure_file(linux/wyrmsun.sh.in linux/wyrmsun.sh @ONLY)

install(
  PROGRAMS ${CMAKE_CURRENT_BINARY_DIR}/linux/wyrmsun.sh
  DESTINATION ${BINDIR}
  RENAME wyrmsun)
install(FILES linux/wyrmsun.desktop DESTINATION share/applications)
install(FILES linux/wyrmsun.appdata.xml DESTINATION share/appdata)
install(
  FILES graphics/ui/icons/wyrmsun_icon_32.png
  DESTINATION share/icons/hicolor/32x32/apps
  RENAME wyrmsun.png)
install(
  FILES graphics/ui/icons/wyrmsun_icon_64.png
  DESTINATION share/icons/hicolor/64x64/apps
  RENAME wyrmsun.png)
install(
  FILES graphics/ui/icons/wyrmsun_icon_128.png
  DESTINATION share/icons/hicolor/128x128/apps
  RENAME wyrmsun.png)

install(FILES oaml.defs DESTINATION ${DATADIR})

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
  DESTINATION ${DATADIR})

install(FILES readme.txt DESTINATION ${DOCSDIR})
install(DIRECTORY documents DESTINATION ${DOCSDIR})

### PACKING ###################################################################

set(CPACK_GENERATOR DEB)
set(CPACK_PACKAGE_CONTACT "Anton Karmanov <techie@bastardi.net>")
set(
  CPACK_PACKAGE_DESCRIPTION
  "Wyrmsun data
Wyrmsun is an open-source real-time strategy game which features elements of
mythology, history and fiction.

In the Wyrmsun universe a myriad of inhabited planets exist. Humans dwell on
Earth, while dwarves inhabit Nidavellir and elves nourish the world of Alfheim.
These peoples struggle to carve a place for themselves with their tools of
stone, bronze and iron. And perhaps one day they will meet one another, beyond
the stars...")

set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS ON)
set(CPACK_DEBIAN_PACKAGE_SECTION games)
# TODO Depends on Wyrmgus

include(CPack)
