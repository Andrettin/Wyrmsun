project(wyrmsun NONE)
cmake_minimum_required(VERSION 3.0)

set(DATADIR share/wyrmsun CACHE STRING "Where to install Wyrmsun data files")
set(DOCSDIR share/doc/wyrmsun CACHE STRING "Where to install Wyrmsun documentation")

configure_file(linux/wyrmsun.sh.in linux/wyrmsun.sh @ONLY)

install(PROGRAMS ${CMAKE_CURRENT_BINARY_DIR}/linux/wyrmsun.sh DESTINATION bin RENAME wyrmsun)
install(FILES linux/wyrmsun.desktop DESTINATION share/applications)
install(FILES linux/wyrmsun.appdata.xml DESTINATION share/appdata)
install(FILES graphics/ui/icons/wyrmsun_icon_32.png DESTINATION share/icons/hicolor/32x32/apps RENAME wyrmsun.png)
install(FILES graphics/ui/icons/wyrmsun_icon_64.png DESTINATION share/icons/hicolor/64x64/apps RENAME wyrmsun.png)
install(FILES graphics/ui/icons/wyrmsun_icon_128.png DESTINATION share/icons/hicolor/128x128/apps RENAME wyrmsun.png)

install(FILES oaml.defs DESTINATION ${DATADIR})

install(DIRECTORY
	data
	graphics
	maps
	music
	scripts
	sounds
	translations
	DESTINATION ${DATADIR}
)

install(FILES readme.txt DESTINATION ${DOCSDIR})
install(DIRECTORY documents DESTINATION ${DOCSDIR})
