import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: credits_menu
	title: "Credits"
	music_type: "credits"
	
	Item {
		id: text_area
		anchors.left: parent.left
		anchors.leftMargin: 32 * wyrmgus.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 32 * wyrmgus.scale_factor
		anchors.top: parent.title_element.bottom
		anchors.topMargin: 32 * wyrmgus.scale_factor
		anchors.bottom: previous_menu_button.top
		anchors.bottomMargin: 32 * wyrmgus.scale_factor
		clip: true
		
		NormalText {
			id: credits_text
			anchors.left: parent.left
			anchors.leftMargin: 8 * wyrmgus.scale_factor
			anchors.right: parent.right
			anchors.rightMargin: 8 * wyrmgus.scale_factor
			horizontalAlignment: Text.AlignHCenter
			text: format_text(highlight("Wyrmsun Design and Maintenance\n\n")
				+ "Andrettin\n"
				+ highlight("\nProgramming and Scripting\n\n")
				+ "Andrettin\n"
				+ "cybermind\n"
				+ "Franco514\n"
				+ "Francois Beerten\n"
				+ "Jimmy Salmon\n"
				+ "Joris Dauphin\n"
				+ "Nehal Mistry\n"
				+ "Pali Rohar\n"
				+ "Russell Smith\n"
				+ "a-detiste\n"
				+ "Akien\n"
				+ "Anton Karmanov (bergentroll)\n"
				+ "BeWorld\n"
				+ "Chris Beck (iceiceice)\n"
				+ "DinkyDyeAussie\n"
				+ "Dmitry Marakasov\n"
				+ "Kenji_03\n"
				+ "marcelofg55\n"
				+ "Morel Bérenger\n"
				+ "Spfnym\n"
				+ "Szunti\n"
				+ "Martin Renold\n"
				+ "Carlos Perello Marin\n"
				+ "Pludov\n"
				+ "Andreas 'Ari' Arens\n"
				+ "Lutz 'Johns' Sammer\n"
				+ "Edgar 'Froese' Toernig\n"
				+ "Crestez Leonard\n"
				+ "Mark Pazolli\n"
				+ "Valery Shchedrin\n"
				+ "Iftikhar Rathore\n"
				+ "Charles K Hardin\n"
				+ "Fabrice Rossi\n"
				+ "DigiCat\n"
				+ "Josh Cogliati\n"
				+ "Patrick Mullen\n"
				+ "Vladi Belperchinov-Shabanski\n"
				+ "Cris Daniluk\n"
				+ "Patrice Fortier\n"
				+ "FT Rathore\n"
				+ "Trent Piepho\n"
				+ "Jon Gabrielson\n"
				+ "Lukas Hejtmanek\n"
				+ "Steinar Hamre\n"
				+ "Ian Farmer\n"
				+ "Sebastian Drews\n"
				+ "Jarek Sobieszek\n"
				+ "Anthony Towns\n"
				+ "Stefan Dirsch\n"
				+ "Al Koskelin\n"
				+ "George J. Carrette\n"
				+ "Dirk 'Guardian' Richartz\n"
				+ "Michael O'Reilly\n"
				+ "Dan Hensley\n"
				+ "Sean McMillian\n"
				+ "Mike Earl\n"
				+ "Ian Turner\n"
				+ "David Slimp\n"
				+ "Iuri Fiedoruk\n"
				+ "Luke Mauldin\n"
				+ "Nathan Adams\n"
				+ "Stephan Rasenberger\n"
				+ "Dave Reed\n"
				+ "Josef Spillner\n"
				+ "James Dessart\n"
				+ "Jan Uerpmann\n"
				+ "Aaron Berger\n"
				+ "Latimerius\n"
				+ "Antonis Chaniotis\n"
				+ "Samuel Hays\n"
				+ "David Martinez Moreno\n"
				+ "Flavio Silvestrow\n"
				+ "Daniel Burrows\n"
				+ "Dave Turner\n"
				+ "Ben Hines\n"
				+ "Kachalov Anton\n"
				+ "Martin Hajduch\n"
				+ "Jeff Binder\n"
				+ "Ludovic\n"
				+ "Juan Pablo\n"
				+ "Phil Hannent\n"
				+ "Alexander MacLean\n"
				+ highlight("\nGraphics and Artwork\n\n")
				+ "João Victor G. Costa (Jinn)\n"
				+ "b_o\n"
				+ "Exidelo (Leo)\n"
				+ "Artyom Brullov\n"
				+ "Kwaliti\n"
				+ "Tanja Nov.\n"
				+ "2D-Retroperspectives\n"
				+ "badbuckle (Cenk Açan)\n"
				+ "Battle for Wesnoth Team\n"
				+ "Brian Brickwagon Jennings\n"
				+ "Cuzco\n"
				+ "Elvish_Hunter\n"
				+ "Emilien Rotival (LordBob)\n"
				+ "Francois Beerten\n"
				+ "Frank Loeffler\n"
				+ "igoku\n"
				+ "J. W. Bjerk (eleazzaar)\n"
				+ "Jim16\n"
				+ "KPJ\n"
				+ "Kriss7475\n"
				+ "Mikodrak\n"
				+ "Nikita_Sadkov\n"
				+ "Oray Studios\n"
				+ "Paolo D'Inca\n"
				+ "Ransom.00\n"
				+ "Rick Elliot\n"
				+ "Soeren Soendergaard Jensen\n"
				+ "StumpyStrust\n"
				+ "TaShadan\n"
				+ "Tina Petersen Jensen\n"
				+ "TimberDragon\n"
				+ "Vladislav \"iDreamRunner\"\n"
				+ highlight("\nSound Effects\n\n")
				+ "b_o\n"
				+ "Battle for Wesnoth Team\n"
				+ "Brian Brickwagon Jennings\n"
				+ "Corey Woodworth (woodwizzle)\n"
				+ "David Slimp\n"
				+ "J. W. Bjerk (eleazzaar)\n"
				+ "Johnvarker\n"
				+ "Jute\n"
				+ "Lari Nieminen (zookeeper)\n"
				+ "Manuel Senfft\n"
				+ "TinyWorlds\n"
				+ "Wildfire Games\n"
				+ "Wolfgang Kohler\n"
				+ highlight("\nMusic\n\n")
				+ "Marcelo Fernandez\n"
				+ "bart\n"
				+ "Battle for Wesnoth Team\n"
				+ "Écrivain\n"
				+ "yd\n"
				+ "Aleksi Aubry-Carlson (Aleksi)\n"
				+ "Doug Kaufman (dkaufman)\n"
				+ "Gianmarco Leone (gmlion)\n"
				+ "Jeremy Nicoll (jeremy2/eltiare)\n"
				+ "Joseph G. Toscano (ZhayTee)\n"
				+ "Mattias Westlund (West)\n"
				+ "Ryan Reilly (Rain)\n"
				+ "Timothy Pinkham (TimothyP)\n"
				+ highlight("\nMaps\n\n")
				+ "Battle for Wesnoth Team\n"
				+ "David White (Sirp)\n"
				+ "Dyson Logos\n" //The Tomb of Durahn Oakenshield map
				+ "Eric S. Raymond (ESR)\n" //Northern Rebirth maps and scenarios
				+ "GM1530\n"
				+ "John Ericson\n"
				+ "Joseph Simmons (turin)\n"
				+ "Kyran Jackson\n"
				+ "Lari Nieminen (zookeeper)\n"
				+ "Martin McMahon\n"
				+ "Mathieu Roy\n"
				+ "Miguel Farah F.\n"
				+ "Paolo Sammicheli\n"
				+ "Rob Best\n"
				+ "Taurus\n" //Northern Rebirth maps and scenarios
				+ "Will Doyle\n" //the Island of the Lizard God maps
				+ highlight("\nLore\n\n")
				+ "Andrettin\n"
				+ "Battle for Wesnoth Team\n"
				+ "Asa Swain\n"
				+ "Jesse Crider\n"
				+ "Joseph Simmons (turin)\n"
				+ "Lari Nieminen (zookeeper)\n"
				+ "Piotr Cychowski (Mist/cycholka)\n"
				+ "Will Doyle\n" //the Island of the Lizard God adventure
				+ highlight("\nTranslation\n\n")
				+ "Battle for Wesnoth Team\n"
				+ "BeWorld\n"
				+ "Dmitry Shamshurin\n"
				+ "dragut\n"
				+ "Franco514\n"
				+ "Lorenzo Romoli\n"
				+ "Pawonashi\n"
				+ "Bug Reporting\n"
				+ "Andrettin\n"
				+ "b_o\n"
				+ "cybermind\n"
				+ "Dinomaniak\n"
				+ "Ferk\n"
				+ "Jeff\n"
				+ "João Caju\n"
				+ "João Victor G. Costa (Jinn)\n"
				+ "Kenji_03\n"
				+ "KPJ\n"
				+ "KroArtem\n"
				+ "Kyran\n"
				+ "Leo\n"
				+ "libregametester\n"
				+ "Little Luigi\n"
				+ "Metaltooth\n"
				+ "Mladen Milovanović\n"
				+ "paipan\n"
				+ "pirro\n"
				+ "Spfnym\n"
				+ "Szunti\n"
				+ "TaShadan\n"
				+ "Wuzzy\n"
				+ "X3M\n"
				+ "zenorogue\n"
				+ "\n"
				+ highlight("\nCode used:\n\n")
				+ "Qt Copyright by the Qt Company\n"
				+ "SDL Copyright by Sam Lantinga\n"
				+ "ZLIB Copyright by Jean-loup Gailly and Mark Adler\n"
				+ "BZ2LIB Copyright by Julian Seward\n"
				+ "Guichan Copyright by Per Larsson and Olof Naessen\n"
				+ "tolua++ Copyright by Codenix\n"
				+ "\n"
				+ "\n"
				+ "The Stratagus Team thanks all the people who have contributed\n"
				+ "patches, bug reports, and ideas.\n"
				+ "\n"
				+ "\n"
				+ "\n"
				+ "\n"
				+ "\n"
				+ "\n"
				+ "\n"
				+ "\n"
				+ "\n"
				+ "\n"
				+ "\n"
				+ "\n")
				
			NumberAnimation {
				target: credits_text
				property: 'y'
				duration: credits_text.height * 32
				from: text_area.height
				to: -credits_text.height
				running: true
			}
		}
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.scale_factor
	}
}
