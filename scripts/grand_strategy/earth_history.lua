
SetRiverCulturalName("Alpheus", "greek", "Alpheus") -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
SetRiverCulturalName("Danube", "latin", "Danuvius") -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
SetRiverCulturalName("Danube", "teuton", "Donau")
--SetRiverCulturalName("Dnieper", "latin", "Borysthenes") -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
--SetRiverCulturalName("Don", "greek", "Tanais")
--SetRiverCulturalName("Don", "latin", "Tanais") -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
SetRiverCulturalName("Guadiana", "latin", "Anas") -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
SetRiverCulturalName("Elbe", "latin", "Albis") -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
SetRiverCulturalName("Rhine", "latin", "Rhenus") -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
SetRiverCulturalName("Rhine", "teuton", "Rhein")
SetRiverCulturalName("Tagus", "latin", "Tagus") -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
--SetRiverCulturalName("Volga", "latin", "Rha") -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.

--[[
WorldMapResources = {
	Gold = {
		-- old map resources
		{117, 27, false}, -- Tin deposits; Source: "Philip's International School Atlas", 2006, p. 59; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 7.
		{117, 29, false}, -- Tin deposits; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 7.
		{119, 29, false}, -- iron ore deposits
		{121, 33, false}, -- iron ore deposits
		{125, 28, false}, -- iron ore deposits
		{125, 29, false}, -- iron ore deposits
--		{127, 25, false}, -- crude oil or natural gas
		{127, 27, false}, -- copper ore deposits
		{128, 28, false}, -- iron ore deposits
		{129, 28, false}, -- iron ore deposits; Tin deposits; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 7.
		{129, 30, false}, -- Copper deposits (Mitterberg mines) in the Salzach Valley, near Salzburg; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 9.
		{130, 27, false}, -- Copper deposits; Source: "Philip's International School Atlas", 2006, p. 59.
		{131, 21, false}, -- iron ore deposits
		{131, 22, false}, -- iron ore deposits
		{131, 30, false}, -- iron ore deposits
--		{136, 30, false}, -- Gold deposits; Source: http://www.lib.utexas.edu/maps/europe/romania_res_1970.jpg
		{136, 31, false}, -- Gold deposits; Source: http://www.lib.utexas.edu/maps/europe/romania_res_1970.jpg
		{134, 27, false}, -- Silver deposits; Source: "Philip's International School Atlas", 2006, p. 59.
--		{152, 31, false}, -- Silver deposits; Source: "Philip's International School Atlas", 2006, p. 77. (should be in Stavropol rather than Astrakhan)
--		{159, 27, false} -- Copper deposits (approximate coordinates, should be verified later) at Kargaly; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 9.
	}
}
--]]

LoadFactions("Earth")

LoadProvinces("Earth")

AddProvinceResource(WorldMapProvinces.Astrakhan, "grain", 1)
AddProvinceResource(WorldMapProvinces.FartherPomerania, "grain", 4)
AddProvinceResource(WorldMapProvinces.Galicia, "grain", 1)
AddProvinceResource(WorldMapProvinces.Mazovia, "grain", 4)
AddProvinceResource(WorldMapProvinces.Pomerelia, "grain", 1)
AddProvinceResource(WorldMapProvinces.Prussia, "grain", 1)
AddProvinceResource(WorldMapProvinces.Russia, "grain", 15)
AddProvinceResource(WorldMapProvinces.Silesia, "grain", 2)
AddProvinceResource(WorldMapProvinces.WestGalicia, "grain", 5)
AddProvinceResource(WorldMapProvinces.WhiteRussia, "grain", 13)

-- generate resources while there aren't sufficient predefined resources for the provinces
for key, value in pairs(WorldMapProvinces) do
	if (GetProvinceFoodCapacity(WorldMapProvinces[key].Name, false) == 0) then
		AddProvinceResource(WorldMapProvinces[key], "grain", 1) -- generate food resources to provinces that have none, and that don't have coastal settlements (which produce fish)
	end
	AddProvinceResource(WorldMapProvinces[key], "lumber", SyncRand(3))
	AddProvinceResource(WorldMapProvinces[key], "stone", SyncRand(2))
	AddProvinceResource(WorldMapProvinces[key], "gold", SyncRand(2))
	AddProvinceResource(WorldMapProvinces[key], "silver", SyncRand(2))
end

MercenaryGroups = {
}

LoadEvents("Earth")

if (GrandStrategyYear >= -38000) then
	-- Upper Paleolithic begins around 38,000 BC, and during this period use by modern humans of stone and bone projectile tips became widespread (); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 111.
end

if (GrandStrategyYear >= -33000) then
	-- Upper Paleolithic ends around 33,000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 111.
end

if (GrandStrategyYear >= -30000) then
	-- Bone projectile point in Grimaldi, Italy c. 30,000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 111.
end

if (GrandStrategyYear >= -16000) then
	-- The Late Glacial of Denmark ends about 16,000 BC, and the region surrounding the later settlement of Tybrind Vig (in the coast of the Danish island of Fyn) is formed; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 141.
end

if (GrandStrategyYear >= -10000) then
	-- Mesolithic begins in Northwestern Europe around 10,000 BC, lasting for six thousand years; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 144.
	
	-- Sauveterrian narrow-blade arrowheads begin spreading from central and southern France to the rest of northwestern Europe around 10,000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 145.
end

if (GrandStrategyYear >= -9500) then
	-- Pleistocene-Holocene transition (Holocene interglacial epoch begins) around 9500 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, pp. 48, 126.
	-- Before 9500 BC, Europe to the north of the Mediterranean had been in large part covered by "tundra-steppe" and boreal forests, with large herds of reindeer, wild horses and other herbivores laying about; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 127.
end

if (GrandStrategyYear >= -9000) then
	-- Moose likely become extinct in northwestern Europe around 9000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 146.
end

if (GrandStrategyYear >= -8700) then
	-- Hunter-gatherers begin continuously visiting a lake by Friesack (150 kilometers northwest of Berlin); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, pp. 133-134.
end

if (GrandStrategyYear >= -8000) then
	-- Migratory reindeer herds, which previously had helped feed much of Europe, retreat to northern Scandinavia around 8000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 123.
	
	-- Thin island belt existed (appeared?) off Sweden circa 8000 BC; many low coastal lands and mouths of rivers and bays were flooded; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 134.
	
	-- Around 8000 BC what is today the Södertorn Peninsula to the south of Stockholm was a group of rocky islets; many low coastal lands and mouths of rivers and bays were flooded; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 134.

	-- Near 8000 BC the Stockholm Archipelago was settled by foragers, placing their camps on sheltered bays and throughout the narrow straits between the islands; those living in the outer archipelago lived off seal hunting and fishing, while those living nearer the mainland hunted a wider variety of animals; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 134.
	
	-- Up to about 8000 BC obliquely blunted and broad-bladed arrowheads are present in Mesolithic British Isles, Low Countries, and northeastern France; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 144.
	
	-- Production blanks of bone and antler in northwestern Europe were replaced by production blanks made of split sections of long bone or antler beam c. 8000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 145.
	
	-- The L'Abri du Pape site (Meuse valley, Belgium) was occupied in the 8th and early 7th milleniums BC; in the site were found remains of mammals such as red and roe deer, wild boar, wild cattle, otter, fox and wild cat, remains of birds, remains of fishes such as carp, pike, catfish, eel, salmon, perch and shad; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, pp. 146-147.
end

if (GrandStrategyYear >= -7800) then
	-- Hunter-gatherers cease continuously visiting a lake by Friesack (150 kilometers northwest of Berlin); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, pp. 133-134.
end

if (GrandStrategyYear >= -7500) then
	-- Late Mesolithic site at Ofnet Cave (Germany) from 7500 BC, two caches containing 38 skulls as war trophies; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 111.
end

if (GrandStrategyYear >= -7400) then
	-- Formation of the English Channel around 7400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 48.
end

if (GrandStrategyYear >= -7200) then
	-- Around 7200 BC hunters came via boat through the Ancylus Lake to the Stora Förvar cave, which lies on the island of Stora Karlsö (an island off Gotland); they hunted seals, sea birds and fish; the location was inhabited by whole families for long periods of time (rather than only in a seasonal manner); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, pp. 134-135.
end

if (GrandStrategyYear >= -7000) then
	-- Foundation of pre-pottery Jericho in 7000 BC (this information could be useful later if the map is extended); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 42.
	
	-- By 7000 BC the predominant vegetation in Europe had become mixed deciduous forests, with fauna such as red deer, aurochs (wild oxes) and wild boars; this fauna had been more dispersed than the fauna of the previous late-glacial tundra; with this new vegetation came a myriad of eatable plant species (such as hazelnuts, berries, fruits, fungi and bracken rhizomes); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 127.
	
	-- Neolithic farming begins spreading throughout Europe (from the Near East), specially through the Danube-Rhine axis; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 128.
	
	-- The Ancylus Lake (in Northern Europe) is dammed at its south until little after 7000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 133.
	
	-- Littorina Sea and the North Sea connected circa 7000 BC; many low coastal lands and mouths of rivers and bays were flooded; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 134.
	
	-- Sauveterrian narrow-blade arrowheads finish spreading from central and southern France to the rest of northwestern Europe around 7000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 145.
	
	-- Trapeze-shaped arrowheads ("Tardenoisian") appear in continental northwestern Europe around 7000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 145.
	
	-- In the Mediterranean coasts of northwestern Europe, material aspects of the Neolithic (like grinding stones and pottery) begin to appear around the 7th millenium BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 150.

	-- Impressed Cardial Pottery culture existed in parts of the Aegean between 7000 and 2000 BC; Source: "Atlas de História Mundial", 2001, pp. 40-41.
	SetProvinceOwner("Thessaly", "minoan", "Impressedware Tribe")
	SetProvinceCivilization("Thessaly", "minoan")
	SetProvinceOwner("Euboea", "minoan", "Impressedware Tribe")
	SetProvinceCivilization("Euboea", "minoan")

	-- Balkan Painted Pottery / Impressed Cardial Pottery culture existed in Transylvania and Wallachia between 7000 and 2000 BC; Source: "Atlas de História Mundial", 2001, pp. 40-41.
	SetProvinceOwner("Wallachia", "minoan", "Paintedware Tribe")
	SetProvinceCivilization("Wallachia", "minoan")
	SetProvinceOwner("Transylvania", "minoan", "Paintedware Tribe")
	SetProvinceCivilization("Transylvania", "minoan")
end

if (GrandStrategyYear >= -6800) then
	-- Beginning around 6800 BC in Skateholm (southernmost part of Sweden) an inlet is formed in phases; the inlet brimmed with life, containing a diversity of fish, birds and mammals; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 140.
end

if (GrandStrategyYear >= -6500) then
	-- Since circa 6500 BC in northern Europe the Mesolithic cultures increase in complexity and diversification; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 135.
end

if (GrandStrategyYear >= -5800) then
	-- Cris culture migrates from southeastern Europe and the Lower Danube Valley to the region on the western side of the Dnieper/Dniester rivers; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, pp. 107-108.
end

if (GrandStrategyYear >= -5500) then
	-- Mediterranean Sea and Black Sea reconnected around 5500 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 126.
	
	-- The people of the Linear Pottery culture arrived in northern Poland and Germany about 5500 BC, possessing knowledge of agriculture; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 139.
	
	-- Linear Pottery culture existed in parts of Central Europe between 7000 and 2000 BC; since the other source gives them as arriving in northern Poland and Germany c. 5500 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
	SetProvinceOwner("Franconia", "basque", "Linearware Tribe")
	SetProvinceCivilization("Franconia", "basque")
	SetProvinceOwner("Pannonia", "basque", "Linearware Tribe")
	SetProvinceCivilization("Pannonia", "basque")
		
	-- Tybrind Vig (in the coast of the Danish island of Fyn) begins being occupied around 5500 BC (it pertained to the Ertebolle culture); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 142.
	
	-- The Polderweg site (Netherlands) was occupied in the late 6th millenium BC; main economic activity was pike fishing, although fishing for roach, bream, tench, eels, catfish and salmon was conducted as well; beavers and otters were the most significant animals hunted (likely for their fur), although pine marten, wild cat and polecat were also trapped for that purpose; remains of wild boar and red and roe deer were found as well; remains of ducks were found (the most important fowl food source); regarding plants acorns, hazelnut, water nut, wild apple and diverse berries were too found there; arrowheads (likely from Linearbandkeramik) were also found there, as well as bag-shaped pottery (from Linearbandkeramik areas or made in this form due to their influence); the people of the Polderweg site led a semi-nomadic life, and occupied the site only in January and February of each year; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 147.
end

if (GrandStrategyYear >= -5400) then
	-- Ringkloster (Late Mesolithic interior site in eastern Jutland, c. 20 km inland and by lake Skanderborg) begins being irregularly occupied at around 5400 BC; wild boars were hunted for their meat; pine martens and otters were hunted for their fur; the site was generally occupied between Fall and early Spring; Ringkloster may have been occupied by Ertebolle foragers, who would pass the remnant of the year at the coast; it may also have been inhabited by a people distinct from the coast-inhabitants; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 135.
	
	-- Dabki (Late Mesolithic inland site near Poland's Baltic coast) faced several occupations from 5400 BC; beavers, deer and ducks were hunted, and many sorts of freshwater fishes were caught, particularly pike and perch; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, pp. 135-136.
end

if (GrandStrategyYear >= -5100) then
	-- Fish trap belonging to the Ertebolle culture existed in Zealand in 5100 BC (could be relevant for setting factions' technologies or resource production); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 37.
end

if (GrandStrategyYear >= -4990) then
	-- Fish and boat landing area belonging to the Ertebolle culture existed in Zealand in 4990 BC (could be relevant for setting factions' technologies or resource production); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 37.
end

if (GrandStrategyYear >= -4700) then
	-- The oldest known ceramics in southern Scandinavia were present in Tybrind Vig (in the coast of the Danish island of Fyn, belonging to the Ertebolle culture) around 4700 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 142.
end

if (GrandStrategyYear >= -4600) then
	-- Dabki (Late Mesolithic inland site near Poland's Baltic coast) ceased facing several occupations c. 4600 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 135.
end

if (GrandStrategyYear >= -4500) then
	-- Use of cattle in traction, probably for plowing, in the Late Neolithic in the Northern Balkans, c. 4500 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 329.
end

if (GrandStrategyYear >= -4400) then
	-- Timmendorf-Nordmole site (belonging to the Ertebolle/Ellerbek culture) in Poel isle (in Wismar Bay in Mecklenburg) began being occupied around 4400 BC; fishing gear existed there; they had dugout canoes; fish (particularly eel and cod), sea mammals and birds were caught/hunted; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 138.
	SetProvinceOwner("Mecklenburg", "basque", "Ertebolle Tribe")
end

if (GrandStrategyYear >= -4100) then
	-- Timmendorf-Nordmole site (belonging to the Ertebolle/Ellerbek culture) in Poel isle (in Wismar Bay in Mecklenburg) ceases being occupied around 4100 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 138.
	SetProvinceOwner("Mecklenburg", "", "")
end

if (GrandStrategyYear >= -4000) then
	-- Indo-European spoken at least partly in the Pontic-Caspian region between 4000 and 2000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 108.
	
	-- Eneolithic Baden culture existed in "temperate southeastern Europe" (where, more precisely?) in the 4th millenium BC, and made use of animal traction; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 15.
	
	-- Use of plows begins in Northwestern Europe c. 4000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 329.
	
	-- Around 4000 BC in Skateholm (southernmost part of Sweden) the formation of an inlet in phases ends; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 140.
	
	-- Tybrind Vig (in the coast of the Danish island of Fyn) ends being occupied around 4000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 142.
	
	-- Mesolithic ends in Northwestern Europe around 4000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 144.
	
	-- Agriculture had already spread throughout northwestern Europe by 4000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 151.
end

if (GrandStrategyYear >= -3950) then
	-- Funnel Beaker culture existed in parts of Northern Europe between 7000 and 2000 BC; since the other source gives them as being present in Zealand in 3950 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
	SetProvinceOwner("Friesland", "basque", "Funnelbeaker Tribe")
	SetProvinceCivilization("Friesland", "basque")
	SetProvinceOwner("Drenthe", "basque", "Funnelbeaker Tribe")
	SetProvinceCivilization("Drenthe", "basque")
	SetProvinceOwner("East Friesland", "basque", "Funnelbeaker Tribe")
	SetProvinceCivilization("East Friesland", "basque")
	SetProvinceOwner("Oldenburg", "basque", "Funnelbeaker Tribe")
	SetProvinceCivilization("Oldenburg", "basque")
	SetProvinceOwner("Bremen", "basque", "Funnelbeaker Tribe")
	SetProvinceCivilization("Bremen", "basque")
	SetProvinceOwner("Lauenburg", "basque", "Funnelbeaker Tribe")
	SetProvinceCivilization("Lauenburg", "basque")
	SetProvinceOwner("Mecklenburg", "basque", "Funnelbeaker Tribe")
	SetProvinceCivilization("Mecklenburg", "basque")
	SetProvinceOwner("Hither Pomerania", "basque", "Funnelbeaker Tribe")
	SetProvinceCivilization("Hither Pomerania", "basque")
	
	-- Beginnings of agriculture in southern Scandinavia in 3950 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 36.
	-- Domesticated animals begin to appear in Zealand (or perhaps even southern Scandinavia in general?) in 3950 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 37.
end

if (GrandStrategyYear >= -3920) then
	-- Cattle breeding practiced in Zealand in 3920 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 37.
end

if (GrandStrategyYear >= -3900) then
	-- Transition to agriculture happened in southern Scandinavia c. 3900 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 139.
end
	
if (GrandStrategyYear >= -3800) then
	-- Coastal Ertebolle Mesolithic sites and shell middens cease being occupied c. 3800 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 136.
end

if (GrandStrategyYear >= -3550) then
	-- Ringkloster (Late Mesolithic interior site in eastern Jutland, c. 20 km inland and by lake Skanderborg) ceases being irregularly occupied at around 5400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 135.
end

if (GrandStrategyYear >= -3500) then
	-- Neolithic farming finishes spreading throughout Europe (from the Near East), specially through the Danube-Rhine axis; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 128.
end

if (GrandStrategyYear >= -3200) then
	-- Newgrange megalithic tomb built in Ireland about 3200 BC (could be an event giving prestige); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 44.
end

if (GrandStrategyYear >= -3000) then
	SetProvinceUnitQuantity("Scania", "unit-germanic-warrior", 4)
	SetProvinceUnitQuantity("Scania", "unit-germanic-archer", 4)
	
	-- First Greek Bronze Age begins around 3000 BC; Source: "Atlas de História Mundial", 2001, p. 66.
	
	-- The Zodiac was invented around 3000 BC; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 5.
end

if (GrandStrategyYear >= -2800) then -- establishment of the Single Grave Culture (a part of the Indo-European-speaking Corded Ware cultures) in Jutland; around this time southern Sweden was settled by the Battle Axe culture (also a part of the Corded Ware cultures)
	-- Funnel Beaker culture ends in Zealand in 2800 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 38.

	-- in the Ynglinga saga, "Odin's people", the Asa, settle Scandinavia in a manner not too dissimilar from what archaeological findings tell us of Indo-European settlement in the region; thus the name "Asa Tribe" is used here to denote the Indo-European-speaking peoples who settled in Scandinavia, and were the precursors of the Germanic peoples
	SetProvinceUnitQuantity("Astrakhan", "unit-germanic-warrior", 0)
	SetProvinceOwner("Don", "", "")
	SetProvinceUnitQuantity("Don", "unit-germanic-warrior", 0)

	GrandStrategyEvents.OnTheVanaquisl = nil
	GrandStrategyEvents.AsaRaid = nil
	GrandStrategyEvents.WestwardMigration = nil
	GrandStrategyEvents.NorthwardsToTheSea = nil
	GrandStrategyEvents.GylvesRealm = nil
	GrandStrategyEvents.DivisionOfDomains = nil
	GrandStrategyEvents.AsaLawgiving = nil
	GrandStrategyEvents.SkeldusDomain = nil
end

if (GrandStrategyYear >= -2770) then -- estimated date
	GrandStrategyEvents.YngveChieftainOfTheSwedes = nil
end

if (GrandStrategyYear >= -2700) then
	-- Egyptian pyramids built between 2700 and 2500 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 44.
end

if (GrandStrategyYear >= -2500) then
	-- Plowing well-disseminated in Europe by 2500 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 329.
	
	-- Around 2500 BC the star Thuban in the constellation of Draco was the pole star; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 5.
	
	-- The Proto-Germanic language appears c. 2500 BC; Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 1.
end

if (GrandStrategyYear >= -2400) then
	-- Corded Ware culture (neolithic) ends in Zealand in 2400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 38.
end

if (GrandStrategyYear >= -2140) then
	-- In 2160 BC the Spring equinox changed from Taurus to Aries; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 5.
end

if (GrandStrategyYear >= -2140) then
	-- In 2140 BC the star Polaris (in Little Dipper) became the pole star; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 5.
end

if (GrandStrategyYear >= -2000) then
	SetProvinceOwner("Crete", "minoan", "Crete") -- Minoan civilization; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 23.
	SetProvinceCivilization("Crete", "minoan")
	-- Somogyvar-Vinkovci culture existed in Hungary around 2000 BC, and possessed wagons / wooden wheels; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 15.
	-- early Wietenberg culture existed in Romania around 2000 BC, and possessed wagons / wooden wheels; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 15.
	
	SetWorldMapResourceProspected("copper", 466, 112, true) -- Tin deposits in Cornwall which were exploited in the 2nd millenium BC; Source: "Atlas de História Mundial", 2001, p. 41.
	SetWorldMapResourceProspected("copper", 461, 135, true) -- Tin deposits in northwestern Iberia which were exploited in the 2nd millenium BC; Source: "Atlas de História Mundial", 2001, p. 41.
	SetWorldMapResourceProspected("copper", 517, 113, true) -- Tin deposits which were exploited in the 2nd millenium BC; Source: "Atlas de História Mundial", 2001, p. 41.
	
	-- Ports in Crete between 2000 and 1400 BC; Source: "Atlas de História Mundial", 2001, p. 67.
	SetWorldMapTilePort(548, 155, true) -- Khania (Le Canée)
	SetWorldMapTilePort(550, 156, true) -- Aghia Triada; Kommos
	SetWorldMapTilePort(551, 155, true) -- Amnissos; Katsambas
	SetWorldMapTilePort(552, 155, true) -- Nirou Khani
	SetWorldMapTilePort(553, 156, true) -- Mokhlos; Pseira; Pyrgos
	SetWorldMapTilePort(554, 156, true) -- Palaikastro
	
	-- Temples and palaces existent in Crete between 2000 and 1400 BC; Source: "Atlas de História Mundial", 2001, p. 67.
end

if (GrandStrategyYear >= -1750) then
	-- Around 1750 BC the first Minoan palaces were destroyed, and the age of the second palaces begins; Source: "Atlas de História Mundial", 2001, p. 66.
end

if (GrandStrategyYear >= -1700) then
	-- Late Bronze Age begins around 1700 BC, and during this period cremation became the burial tradition in almost all of Europe; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 112.
	
	-- Commercial routes in Greece between 1700 and 1200 BC (there being commercial routes, this would mean at least trail-level pathway); Source: "Atlas de História Mundial", 2001, p. 67.
	SetWorldMapTilePathway(539, 144, "southeast", "trail")
	SetWorldMapTilePathway(540, 145, "northwest", "trail")
	SetWorldMapTilePathway(540, 145, "south", "trail")
	SetWorldMapTilePathway(540, 146, "northeast", "trail")
	SetWorldMapTilePathway(540, 146, "north", "trail")
	SetWorldMapTilePathway(540, 148, "east", "trail")
	SetWorldMapTilePathway(540, 148, "southeast", "trail")
	SetWorldMapTilePathway(541, 145, "southwest", "trail")
	SetWorldMapTilePathway(541, 145, "east", "trail")
	SetWorldMapTilePathway(541, 148, "west", "trail")
	SetWorldMapTilePathway(541, 148, "northeast", "trail")
	SetWorldMapTilePathway(541, 149, "northwest", "trail")
	SetWorldMapTilePathway(541, 149, "northeast", "trail")
	SetWorldMapTilePathway(541, 149, "south", "trail")
	SetWorldMapTilePathway(541, 149, "east", "trail")
	SetWorldMapTilePathway(541, 150, "north", "trail")
	SetWorldMapTilePathway(541, 150, "east", "trail")
	SetWorldMapTilePathway(542, 145, "east", "trail")
	SetWorldMapTilePathway(542, 145, "west", "trail")
	SetWorldMapTilePathway(542, 147, "southwest", "trail")
	SetWorldMapTilePathway(542, 147, "southeast", "trail")
	SetWorldMapTilePathway(542, 148, "southwest", "trail")
	SetWorldMapTilePathway(542, 148, "east", "trail")
	SetWorldMapTilePathway(542, 149, "east", "trail")
	SetWorldMapTilePathway(542, 149, "west", "trail")
	SetWorldMapTilePathway(542, 149, "south", "trail")
	SetWorldMapTilePathway(542, 149, "southeast", "trail")
	SetWorldMapTilePathway(542, 150, "north", "trail")
	SetWorldMapTilePathway(542, 150, "west", "trail")
	SetWorldMapTilePathway(542, 150, "east", "trail")
	SetWorldMapTilePathway(543, 142, "southeast", "trail")
	SetWorldMapTilePathway(543, 145, "east", "trail")
	SetWorldMapTilePathway(543, 145, "southeast", "trail")
	SetWorldMapTilePathway(543, 145, "west", "trail")
	SetWorldMapTilePathway(543, 148, "northwest", "trail")
	SetWorldMapTilePathway(543, 148, "west", "trail")
	SetWorldMapTilePathway(543, 148, "east", "trail")
	SetWorldMapTilePathway(543, 149, "west", "trail")
	SetWorldMapTilePathway(543, 149, "east", "trail")
	SetWorldMapTilePathway(543, 150, "west", "trail")
	SetWorldMapTilePathway(543, 150, "northwest", "trail")
	SetWorldMapTilePathway(543, 150, "northeast", "trail")
	SetWorldMapTilePathway(543, 150, "east", "trail")
	SetWorldMapTilePathway(544, 143, "northwest", "trail")
	SetWorldMapTilePathway(544, 143, "south", "trail")
	SetWorldMapTilePathway(544, 144, "north", "trail")
	SetWorldMapTilePathway(544, 144, "south", "trail")
	SetWorldMapTilePathway(544, 145, "north", "trail")
	SetWorldMapTilePathway(544, 145, "west", "trail")
	SetWorldMapTilePathway(544, 145, "southeast", "trail")
	SetWorldMapTilePathway(544, 146, "east", "trail")
	SetWorldMapTilePathway(544, 146, "northwest", "trail")
	SetWorldMapTilePathway(544, 148, "west", "trail")
	SetWorldMapTilePathway(544, 148, "east", "trail")
	SetWorldMapTilePathway(544, 148, "south", "trail")
	SetWorldMapTilePathway(544, 149, "north", "trail")
	SetWorldMapTilePathway(544, 149, "west", "trail")
	SetWorldMapTilePathway(544, 149, "southwest", "trail")
	SetWorldMapTilePathway(544, 150, "west", "trail")
	SetWorldMapTilePathway(544, 150, "southeast", "trail")
	SetWorldMapTilePathway(545, 146, "east", "trail")
	SetWorldMapTilePathway(545, 146, "west", "trail")
	SetWorldMapTilePathway(545, 146, "northwest", "trail")
	SetWorldMapTilePathway(545, 148, "west", "trail")
	SetWorldMapTilePathway(545, 148, "northeast", "trail")
	SetWorldMapTilePathway(545, 151, "northwest", "trail")
	SetWorldMapTilePathway(546, 146, "west", "trail")
	SetWorldMapTilePathway(546, 146, "south", "trail")
	SetWorldMapTilePathway(546, 146, "southeast", "trail")
	SetWorldMapTilePathway(546, 147, "southwest", "trail")
	SetWorldMapTilePathway(546, 147, "east", "trail")
	SetWorldMapTilePathway(546, 147, "north", "trail")
	SetWorldMapTilePathway(547, 147, "west", "trail")
	SetWorldMapTilePathway(547, 147, "northwest", "trail")
end

if (GrandStrategyYear >= -1628) then
	GrandStrategyEvents.TheEruptionOfThera = nil
end

if (GrandStrategyYear >= -1600) then
	GrandStrategyEvents.TheCurvedSwords = nil  -- Source: http://natmus.dk/en/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/the-roerby-swords/
	
	-- Endpoints of sea trade routes (which in the game would mean those tiles having docks/ports) between 1600 and 1300 BC (date range could also be larger); Source: "Atlas de História Mundial", 2001, p. 66.
	SetWorldMapTilePort(506, 143, true)
	SetWorldMapTilePort(516, 125, true)
	SetWorldMapTilePort(521, 153, true)
	SetWorldMapTilePort(522, 150, true)
	SetWorldMapTilePort(527, 141, true)
	SetWorldMapTilePort(544, 142, true)
end

if (GrandStrategyYear >= -1450) then
	 -- Minoan civilization disappears in 1450 BC; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 23.
	SetProvinceOwner("Crete", "", "")
	
	-- Mycenaean Greece included Argolis, Aetolia, Attica, Boeotia, Corinth, Crete, Euboea, Lacedaemonia and Rhodes about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	SetProvinceOwner("Aetolia", "greek", "Mycenae")
	SetProvinceCivilization("Aetolia", "greek")
	SetProvinceOwner("Argolis", "greek", "Mycenae")
	SetProvinceCivilization("Argolis", "greek")
	SetProvinceOwner("Attica", "greek", "Mycenae")
	SetProvinceCivilization("Attica", "greek")
	SetProvinceOwner("Boeotia", "greek", "Mycenae")
	SetProvinceCivilization("Boeotia", "greek")
	SetProvinceOwner("Corinth", "greek", "Mycenae")
	SetProvinceCivilization("Corinth", "greek")
	SetProvinceOwner("Crete", "greek", "Mycenae")
	SetProvinceCivilization("Crete", "greek")
	SetProvinceOwner("Euboea", "greek", "Mycenae")
	SetProvinceCivilization("Euboea", "greek")
	SetProvinceOwner("Lacedaemonia", "greek", "Mycenae")
	SetProvinceCivilization("Lacedaemonia", "greek")
	SetProvinceOwner("Rhodes", "greek", "Mycenae")
	SetProvinceCivilization("Rhodes", "greek")
end

if (GrandStrategyYear >= -1400) then
	GrandStrategyEvents.TheSunChariot = nil -- http://natmus.dk/en/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/the-sun-chariot/
	GrandStrategyEvents.TheWhiteHorse = nil -- the white horse at Uffington was made between 1400 and 600 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 46.
	
	-- Late Bronze Age ends around 1400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 112.
end

if (GrandStrategyYear >= -1365) then
	GrandStrategyEvents.NoblemansBurial = nil -- the man from Muldbjerg; Source: http://natmus.dk/en/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/men-and-woman-in-the-bronze-age/the-man-from-muldbjerg/
end

if (GrandStrategyYear >= -1300) then
	-- Mycenaean territory included most of Thessaly in 1300 BC; Source: "Atlas de História Mundial", 2001, p. 66.
	SetProvinceOwner("Thessaly", "greek", "Mycenae")
	SetProvinceCivilization("Thessaly", "greek")
end

if (GrandStrategyYear >= -1250) then
	-- Defenses of Mycenaean strongholds strengthened c. 1250 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 114.
end

if (GrandStrategyYear >= -1190) then
	-- Mycenaean palaces were abandoned in 1190 BC; Source: "Atlas de História Mundial", 2001, p. 66.
	SetProvinceOwner("Aetolia", "", "")
	SetProvinceOwner("Argolis", "", "")
	SetProvinceOwner("Attica", "", "")
	SetProvinceOwner("Boeotia", "", "")
	SetProvinceOwner("Corinth", "", "")
	SetProvinceOwner("Crete", "", "")
	SetProvinceOwner("Euboea", "", "")
	SetProvinceOwner("Rhodes", "", "")
	SetProvinceOwner("Lacedaemonia", "", "")
	SetProvinceOwner("Thessaly", "", "")
end

if (GrandStrategyYear >= -1100) then 
	GrandStrategyEvents.TheSunShields = nil -- bronze shields found in the Danish bogs began to be made; Source: http://en.natmus.dk/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/the-bronze-age-shields/
end

if (GrandStrategyYear >= -1000) then
	-- Widespread accretion of fine-grained floodpain alluvium in Northern European lowland rivers after 1000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 129.
end

if (GrandStrategyYear >= -800) then -- Hallstatt culture in southern Germany and adjacent areas c. 800-400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 87.
	SetProvinceOwner("Bavaria", "celt", "Norici Tribe")
	SetProvinceCivilization("Bavaria", "celt")
	SetProvinceUnitQuantity("Bavaria", "unit-germanic-warrior", 0)
	SetProvinceOwner("Switzerland", "celt", "Helvetii Tribe") -- already in Switzerland?
	SetProvinceCivilization("Switzerland", "celt")
	SetProvinceUnitQuantity("Switzerland", "unit-germanic-warrior", 0)
end

if (GrandStrategyYear >= -750) then -- Eastern Mediterranean between 750 and 625 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.	
	-- Greek settlements existed in Greece proper, Crete, Rhodes, Asia Minor, the Ionian islands, Sinope, Trapezus, eastern Sicily, southern Italy and northern Cyprus between 750 and 625 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
	
	SetProvinceOwner("Macedonia", "greek", "Macedon")
	
	SetProvinceOwner("Dalmatia", "illyrian", "Illyrian Tribe")
	SetProvinceCivilization("Dalmatia", "illyrian")
	
	SetProvinceOwner("Tuscany", "etruscan", "Etruscan Tribe")
	SetProvinceCivilization("Tuscany", "etruscan")
end

if (GrandStrategyYear >= -700) then -- Greece in 700-600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	SetProvinceOwner("Attica", "greek", "Athens")
	SetFactionGovernmentType("greek", "Athens", "republic")
	
	SetProvinceOwner("Boeotia", "greek", "Thebes")
	
	SetProvinceOwner("Epirus", "greek", "Chaoni Tribe")
	SetProvinceCivilization("Epirus", "greek")
	
	SetProvinceOwner("Lacedaemonia", "greek", "Sparta")

	SetProvinceOwner("Argolis", "greek", "Argos")

	SetProvinceOwner("Corinth", "greek", "Corinth")
end

if (GrandStrategyYear >= -600) then -- Jastorf culture dates from 600 BC, and encompassed Jutland, southern Sweden, northwestern Germany, and eastern Germany; Source: J. P. Mallory and Douglas Q. Adams, "Encyclopedia of Indo-European Culture", 1997, pp. 321-322
	GrandStrategyEvents.VegdegsKingdom = nil
	GrandStrategyEvents.BeldegsLands = nil
	GrandStrategyEvents.SigisLands = nil
	
	-- Iron-working begins being practiced by the people of the Jastorf culture, south of the Elbe and north of the Weser, between 600 and 300 BC; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	
	-- Late Hallstatt in West-Central Europe between 600 and 480 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 24.
	
	-- Subboreal-Subatlantic transition in Europe c. 600 BC (provoking climatic transition from warmer and drier climate to a cooler and wetter one); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 129.
end

if (GrandStrategyYear >= -550) then
	-- Greek and Phoenician settlements about 550 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 12.
	SetProvinceCivilization("Macedonia", "greek")
	SetProvinceCivilization("Thrace", "greek")

	SetProvinceOwner("Liguria", "celt", "Ligurian Tribe")
	SetProvinceCivilization("Liguria", "celt")
	
	-- Celts first mentioned by classical authors around 550 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 113.
	
	-- Commercial routes in Europe between 550 BC and 752 AD (for the overland, non-river ones, this would mean at least trail-level pathway); Source: "Atlas de História Mundial", 2001, pp. 70-71.
	SetWorldMapTilePathway(503, 117, "east", "trail")
	SetWorldMapTilePathway(504, 117, "west", "trail")
	SetWorldMapTilePathway(504, 117, "northeast", "trail")
	SetWorldMapTilePathway(505, 116, "southwest", "trail")
	SetWorldMapTilePathway(505, 116, "east", "trail")
	SetWorldMapTilePathway(506, 116, "west", "trail")
end

if (GrandStrategyYear >= -500) then
	-- Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	SetProvinceOwner("Macedonia", "persian", "Persia")
	SetProvinceOwner("Thrace", "persian", "Persia")
	
	-- Maiden Castle hill fort build around 500 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 119.
	
	-- Greece at the time of the War with Persia (500-479 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 13.
	SetFactionDiplomacyState("greek", "Athens", "persian", "Persia", "war")
	SetFactionDiplomacyState("greek", "Sparta", "persian", "Persia", "war")
	SetFactionDiplomacyState("greek", "Corinth", "persian", "Persia", "war")
	SetProvinceCivilization("Thrace", "thracian") -- Apsinthii
	
	-- Situation of Italy in (apparently) 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	
	SetProvinceOwner("Tuscany", "etruscan", "Etruria")
	SetProvinceOwner("Romagna", "etruscan", "Etruria")
	SetProvinceCivilization("Romagna", "etruscan")
	SetProvinceOwner("Modena", "etruscan", "Etruria")
	SetProvinceCivilization("Modena", "etruscan")
	
	SetProvinceOwner("Venetia", "latin", "Venetian Tribe")
	SetProvinceCivilization("Venetia", "latin")
	
	SetProvinceOwner("Umbria", "latin", "Umbrian Tribe") -- the Aequians, Picentians and Sabines also inhabited this region
	SetProvinceCivilization("Umbria", "latin")
	
	SetProvinceOwner("Calabria", "latin", "Oenotrian Tribe")
	SetProvinceCivilization("Calabria", "latin")
	
	SetProvinceOwner("Apulia", "latin", "Messapian Tribe") -- also inhabited by the Iapygians
	SetProvinceCivilization("Apulia", "latin")
	
	SetProvinceOwner("Abruzzo", "latin", "Sabellian Tribe") -- also inhabited by the Frentanians
	SetProvinceCivilization("Abruzzo", "latin")
	
	SetProvinceOwner("Naples", "latin", "Samnite Tribe")
	SetProvinceCivilization("Naples", "latin")
end

if (GrandStrategyYear >= -479) then
	-- End of the war between the Greek states and Persia in 479 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 13.
	SetFactionDiplomacyState("greek", "Athens", "persian", "Persia", "peace")
	SetFactionDiplomacyState("greek", "Sparta", "persian", "Persia", "peace")
	SetFactionDiplomacyState("greek", "Corinth", "persian", "Persia", "peace")
end

if (GrandStrategyYear >= -450) then
	-- Greece circa 450 BC (height of the Athenian empire); Source: William R. Shepherd, "Historical Atlas", 1911, p. 13.
	SetProvinceOwner("Thrace", "thracian", "Apsinthii Tribe")
	SetProvinceOwner("Macedonia", "greek", "Macedon")
	
	SetProvinceOwner("Albania", "illyrian", "Taulantii Tribe")
	SetProvinceCivilization("Albania", "illyrian")
	
	SetFactionDiplomacyState("greek", "Athens", "greek", "Thebes", "alliance")
	SetFactionDiplomacyState("greek", "Athens", "greek", "Argos", "alliance")
end

if (GrandStrategyYear >= -431) then
	-- Greece in 431 BC (beginning of the Peloponnesian War); Source: William R. Shepherd, "Historical Atlas", 1911, p. 17.	
	SetProvinceOwner("Bulgaria", "thracian", "Odrysae Tribe")
	SetProvinceCivilization("Bulgaria", "thracian")
	
	SetProvinceOwner("Skopje", "phrygian", "Bryges Tribe")
	SetProvinceCivilization("Skopje", "phrygian")

	SetFactionDiplomacyState("greek", "Athens", "greek", "Sparta", "war")
	SetFactionDiplomacyState("greek", "Athens", "greek", "Corinth", "war")
	SetFactionDiplomacyState("greek", "Athens", "greek", "Thebes", "war")
	SetFactionDiplomacyState("greek", "Athens", "greek", "Macedon", "war")
	SetFactionDiplomacyState("greek", "Sparta", "greek", "Corinth", "alliance")
	SetFactionDiplomacyState("greek", "Sparta", "greek", "Thebes", "alliance")
	SetFactionDiplomacyState("greek", "Sparta", "greek", "Macedon", "alliance")
end

if (GrandStrategyYear >= -387) then
	-- Plundering of Rome under Brennus (Celtic leader) and battle at the river Allia in 387 BC; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 230.
end

if (GrandStrategyYear >= -362) then
	-- Greece in 362 BC (Theban headship); Source: William R. Shepherd, "Historical Atlas", 1911, p. 17.	
	SetFactionDiplomacyState("greek", "Athens", "greek", "Sparta", "peace")
	SetFactionDiplomacyState("greek", "Athens", "greek", "Corinth", "peace")
	SetFactionDiplomacyState("greek", "Athens", "greek", "Thebes", "peace")
	SetFactionDiplomacyState("greek", "Athens", "greek", "Macedon", "peace")
	
	SetFactionDiplomacyState("greek", "Sparta", "greek", "Corinth", "peace") -- end of anti-Athenian alliances with Sparta
	SetFactionDiplomacyState("greek", "Sparta", "greek", "Thebes", "peace")
	SetFactionDiplomacyState("greek", "Sparta", "greek", "Macedon", "peace")

	SetFactionDiplomacyState("greek", "Thebes", "greek", "Argos", "alliance")
end

if (GrandStrategyYear >= -336) then
	-- Macedonian Empire in 336-323 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 18-19.
	SetProvinceOwner("Skopje", "greek", "Macedon") -- the site of Skopje wasn't a part of the Macedonian Empire in 336 BC, but most of the modern Republic of Macedonia was
	SetProvinceOwner("Albania", "greek", "Macedon") -- most of Albania was a part of the Macedonian Empire in 336 BC (including the city of Apollonia), but not the city of Epidamnus
	
	SetProvinceOwner("Serbia", "thracian", "Triballi Tribe") -- they were also in western Bulgaria
	SetProvinceCivilization("Serbia", "thracian")
	
	SetProvinceOwner("Wallachia", "thracian", "Getae Tribe")
	SetProvinceCivilization("Wallachia", "thracian")
	SetProvinceOwner("Dobruja", "thracian", "Getae Tribe")
	SetProvinceCivilization("Dobruja", "thracian")
	AddProvinceClaim("Dobruja", "thracian", "Getae Tribe")
	
	SetProvinceOwner("Ukraine", "persian", "Scythian Tribe")
	SetProvinceCivilization("Ukraine", "persian")
	SetProvinceUnitQuantity("Ukraine", "unit-germanic-warrior", 0)
	SetProvinceOwner("Moldavia", "persian", "Scythian Tribe")
	SetProvinceCivilization("Moldavia", "persian")
	AddProvinceClaim("Moldavia", "persian", "Scythian Tribe")
	SetProvinceOwner("Bessarabia", "persian", "Scythian Tribe")
	SetProvinceCivilization("Bessarabia", "persian")
	AddProvinceClaim("Bessarabia", "persian", "Scythian Tribe")
	
	SetProvinceOwner("Epirus", "greek", "Epirus")
end

if (GrandStrategyYear >= -325) then -- Pytheas sets out on an exploration voyage in 325 BC; Pliny (in his Natural History) gives Pytheas as an authority for the existence of the Goths; Source: Carl Waldman and Catherine Mason, "Encyclopedia of European Peoples", 2006, p. 350; Source: Pliny the Elder, "The Natural History", 37.11.
	GrandStrategyEvents.PytheasVoyageGoths = nil
	
	GrandStrategyEvents.DagChieftainOfTheGoths = nil
end

if (GrandStrategyYear >= -323) then
	-- Macedonian Empire in 323 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 18-19.
	SetProvinceOwner("Thrace", "greek", "Macedon")
	SetProvinceOwner("Bulgaria", "greek", "Macedon")
	SetProvinceCivilization("Bulgaria", "greek")
	SetProvinceOwner("Thessaly", "greek", "Macedon")
	
	SetProvinceOwner("Dobruja", "greek", "Macedon")
end

if (GrandStrategyYear >= -301) then
	-- Kingdoms of the Diadochi about 301 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 18-19.
	SetProvinceOwner("Thrace", "greek", "Thrace")
	SetProvinceOwner("Bulgaria", "greek", "Thrace")
	SetProvinceOwner("Dobruja", "greek", "Thrace")
	
	SetProvinceOwner("Crete", "greek", "Krete")
	SetProvinceCivilization("Crete", "greek")

	-- Greece in vassalage to Macedon
	SetFactionDiplomacyState("greek", "Argos", "greek", "Macedon", "vassal")
	SetFactionDiplomacyState("greek", "Athens", "greek", "Macedon", "vassal")
	SetFactionDiplomacyState("greek", "Sparta", "greek", "Macedon", "vassal")
	SetFactionDiplomacyState("greek", "Thebes", "greek", "Macedon", "vassal")
end

if (GrandStrategyYear >= -264) then
	-- Roman territory at the beginning of the 1st Punic War (264 BC); Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	SetProvinceOwner("Naples", "latin", "Rome")
	SetProvinceOwner("Abruzzo", "latin", "Rome")
	SetProvinceOwner("Apulia", "latin", "Rome")
	SetProvinceOwner("Calabria", "latin", "Rome")
	SetProvinceOwner("Tuscany", "latin", "Rome")
	SetProvinceOwner("Umbria", "latin", "Rome")
	
	-- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	SetProvinceOwner("Bremen", "teuton", "Chauci Tribe")	
	SetProvinceCivilization("Bremen", "teuton")
	SetProvinceOwner("Oldenburg", "teuton", "Chauci Tribe")
	SetProvinceCivilization("Oldenburg", "teuton")
	AddProvinceClaim("Oldenburg", "teuton", "Chauci Tribe")

	SetProvinceOwner("Brunswick", "teuton", "Cherusci Tribe")	
	SetProvinceCivilization("Brunswick", "teuton")
	SetProvinceOwner("Magdeburg", "teuton", "Cherusci Tribe")	
	SetProvinceCivilization("Magdeburg", "teuton")
	
	SetProvinceOwner("Hanover", "teuton", "Lombard Tribe")	
	SetProvinceCivilization("Hanover", "teuton")
	
	SetProvinceOwner("Holland", "teuton", "Batavian Tribe")	
	SetProvinceCivilization("Holland", "teuton")
	
	SetProvinceOwner("Friesland", "teuton", "Frisian Tribe")	
	SetProvinceCivilization("Friesland", "teuton")
	SetProvinceOwner("East Friesland", "teuton", "Frisian Tribe")	
	SetProvinceCivilization("East Friesland", "teuton")

	SetProvinceOwner("Lauenburg", "teuton", "Saxon Tribe") 
	SetProvinceCivilization("Lauenburg", "teuton")
	
	SetProvinceOwner("Mecklenburg", "teuton", "Varini Tribe")
	SetProvinceCivilization("Mecklenburg", "teuton")
	
	SetProvinceOwner("Hither Pomerania", "goth", "Rugian Tribe")
	SetProvinceCivilization("Hither Pomerania", "goth")
	
	SetProvinceOwner("Farther Pomerania", "goth", "Turcilingian Tribe")
	SetProvinceCivilization("Farther Pomerania", "goth")
	
	SetProvinceOwner("Westphalia", "teuton", "Sugambri Tribe")
	SetProvinceCivilization("Westphalia", "teuton")
	
	SetProvinceOwner("Hesse", "teuton", "Chatti Tribe")
	SetProvinceCivilization("Hesse", "teuton")
	
	SetProvinceOwner("Franconia", "teuton", "Hermunduri Tribe")
	SetProvinceCivilization("Franconia", "teuton")
	SetProvinceOwner("Upper Saxony", "teuton", "Hermunduri Tribe")
	SetProvinceCivilization("Upper Saxony", "teuton")
	SetProvinceOwner("Thuringia", "teuton", "Hermunduri Tribe")
	SetProvinceCivilization("Thuringia", "teuton")
	
	SetProvinceOwner("Silesia", "goth", "Silingae Tribe")
	SetProvinceCivilization("Silesia", "goth")
	
	SetProvinceOwner("Pomerelia", "goth", "Goth Tribe")
	SetProvinceCivilization("Pomerelia", "goth")
	AddProvinceClaim("Pomerelia", "goth", "Goth Tribe")
	SetProvinceOwner("Prussia", "goth", "Goth Tribe")
	SetProvinceCivilization("Prussia", "goth")
	AddProvinceClaim("Prussia", "goth", "Goth Tribe")
	
	SetProvinceOwner("Mazovia", "goth", "Vandal Tribe")
	SetProvinceCivilization("Mazovia", "goth")
	
	SetProvinceOwner("Posen", "goth", "Burgundian Tribe")
	SetProvinceCivilization("Posen", "goth")
	AddProvinceClaim("Posen", "goth", "Burgundian Tribe")	
	
	SetProvinceOwner("Lithuania", "slav", "Aestui Tribe")
	SetProvinceCivilization("Lithuania", "slav")
	
	SetProvinceOwner("Galicia", "goth", "Bastarnae Tribe")
	SetProvinceCivilization("Galicia", "goth")
	SetProvinceOwner("Bessarabia", "goth", "Bastarnae Tribe")
	SetProvinceCivilization("Bessarabia", "goth")
	
	SetProvinceOwner("West Galicia", "slav", "Venedae Tribe")
	SetProvinceCivilization("West Galicia", "slav")
	
	SetProvinceOwner("Crimea", "greek", "Cimmerian Bosphorus")
	SetProvinceCivilization("Crimea", "greek")
	
	SetProvinceOwner("Ukraine", "persian", "Roxolani Tribe")
	SetProvinceCivilization("Ukraine", "persian")
	
	SetProvinceOwner("Russia", "slav", "Budini Tribe")
	SetProvinceCivilization("Russia", "slav")
end

if (GrandStrategyYear >= -238) then -- Corsica and Sardinia acquired by Rome in 238 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	SetProvinceOwner("Corsica", "latin", "Rome")
	SetProvinceOwner("Sardinia", "latin", "Rome")
end

if (GrandStrategyYear >= -229) then -- The cities of Dyrrhachium and Apollonia were acquired by Rome in 229 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	SetProvinceOwner("Albania", "latin", "Rome")
end

if (GrandStrategyYear >= -219) then
	-- Istria and the Dalmatian coast acquired by Rome in 219 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	SetProvinceOwner("Istria", "latin", "Rome")
	SetProvinceOwner("Dalmatia", "latin", "Rome")
end

if (GrandStrategyYear >= -218) then
	-- Carthaginian territory in 218 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 32.
	-- contains Andalusia in the province's definition; should also include Portugal and Castille south of the Tagus, and Aragon south of the Ebrus
	SetFactionGovernmentType("phoenician", "Carthage", "republic")
end

if (GrandStrategyYear >= -200) then
	-- Kingdoms of the Diadochi about 200 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 18-19.
	SetProvinceOwner("Bulgaria", "", "")
	SetProvinceOwner("Dobruja", "", "")
	
	-- End of Greece's vassalage to Macedon
	SetFactionDiplomacyState("greek", "Argos", "greek", "Macedon", "peace")
	SetFactionDiplomacyState("greek", "Athens", "greek", "Macedon", "peace")
	SetFactionDiplomacyState("greek", "Sparta", "greek", "Macedon", "peace")
	SetFactionDiplomacyState("greek", "Thebes", "greek", "Macedon", "peace")
end

if (GrandStrategyYear >= -191) then -- Cisalpine Gaul acquired by Rome in 191 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	SetProvinceOwner("Lombardy", "latin", "Rome")
	SetProvinceUnitQuantity("Lombardy", "unit-germanic-warrior", 0)
	SetProvinceOwner("Modena", "latin", "Rome")
	SetProvinceOwner("Parma", "latin", "Rome")
	SetProvinceOwner("Piedmont", "latin", "Rome")
	SetProvinceOwner("Romagna", "latin", "Rome")
	SetProvinceOwner("Venetia", "latin", "Rome")
	SetProvinceUnitQuantity("Venetia", "unit-germanic-warrior", 0)
end

if (GrandStrategyYear >= -175) then
	-- Huns defeated the Massagetae in 175 BC; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 5.
	
	-- Iazyges found a kingdom after 175 BC; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 5.
end

if (GrandStrategyYear >= -154) then -- Liguria acquired by Rome in 154 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	SetProvinceOwner("Liguria", "latin", "Rome")
end

if (GrandStrategyYear >= -146) then -- Aetolia, Attica, Boeotia, Corinth, Epirus, Euboea, Macedonia, the Peloponnese and Thessaly acquired by Rome in 146 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	SetProvinceOwner("Aetolia", "latin", "Rome")
	SetProvinceOwner("Argolis", "latin", "Rome")
	SetProvinceOwner("Attica", "latin", "Rome")
	SetProvinceOwner("Boeotia", "latin", "Rome")
	SetProvinceOwner("Corinth", "latin", "Rome")
	SetProvinceOwner("Epirus", "latin", "Rome")
	SetProvinceOwner("Euboea", "latin", "Rome")
	SetProvinceOwner("Lacedaemonia", "latin", "Rome")
	SetProvinceOwner("Macedonia", "latin", "Rome")
	SetProvinceOwner("Thessaly", "latin", "Rome")
	
	SetProvinceOwner("Skopje", "latin", "Rome")
end

if (GrandStrategyYear >= -121) then -- Gallia Narbonensis acquired by Rome in 121 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	SetProvinceOwner("Provence", "latin", "Rome")
end

if (GrandStrategyYear >= -74) then -- Region around Byzantium acquired by Rome in 14 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	SetProvinceOwner("Thrace", "latin", "Rome")
end

if (GrandStrategyYear >= -71) then -- The Suebic king Ariovistus enters Gaul at the request of the Arverni and the Sequani to fight the Aedui in 71 BC; Source: Dáithí Ó hÓgáin, "The Celts: A History", 2002, p. 138; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 230.
	SetProvinceOwner("Burgundy", "celt", "Aedui Tribe") -- Aedui inhabited modern Bourgogne; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	SetProvinceCivilization("Burgundy", "celt")
	SetProvinceUnitQuantity("Burgundy", "unit-germanic-warrior", 10) -- enough troops for them to be able to hold their own (except against Ariovistus)
	
	SetProvinceOwner("Aquitaine", "celt", "Arverni Tribe") -- Arverni inhabited Aquitania; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	SetProvinceCivilization("Aquitaine", "celt")
	SetProvinceUnitQuantity("Aquitaine", "unit-germanic-warrior", 8) -- enough troops for them to be able to hold their own
	
	SetProvinceOwner("Franche Comte", "celt", "Sequani Tribe") -- Sequani inhabited the Franche-Comté; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	SetProvinceCivilization("Franche Comte", "celt")
	SetProvinceUnitQuantity("Franche Comte", "unit-germanic-warrior", 8) -- enough troops for them to be able to hold their own
	
	SetProvinceOwner("Belgium", "celt", "Menapii Tribe") -- Menapii inhabited Belgium (and probably were already present there when Ariovistus invaded Gaul); Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	SetProvinceCivilization("Belgium", "celt")
	SetProvinceUnitQuantity("Belgium", "unit-germanic-warrior", 8) -- enough troops for them to be able to hold their own
	
	SetFactionDiplomacyState("celt", "Aedui Tribe", "celt", "Arverni Tribe", "war")
	SetFactionDiplomacyState("celt", "Aedui Tribe", "celt", "Sequani Tribe", "war")
	
	SetProvinceUnitQuantity("Brandenburg", "unit-suebi-swordsman", 13) -- 135,000 (15,000 + 120,000) Germanic warriors who participated in Ariovistus' invasion of Gaul; one unit per 10,000 troops, as that is more practical for game purposes; Source: http://www.gutenberg.org/cache/epub/10657/pg10657.html
	
	SetProvinceUnitQuantity("Provence", "unit-teuton-swordsman", 30) -- enough troops to vanquish Ariovistus (in reality Caesar won while outnumbered)
	
	GrandStrategyEvents.MigrationOfTheVana = nil
end

if (GrandStrategyYear >= -67) then -- Crete acquired by Rome in 67 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	SetProvinceOwner("Crete", "latin", "Rome")
end

if (GrandStrategyYear >= -61) then -- Battle of Magetobria, in which Ariovistus defeated a number of Gaulish tribes, and afterwards established himself in Alsace and began lording over the Gauls; Source: Dáithí Ó hÓgáin, "The Celts: A History", 2002, p. 139; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 218.
	SetProvinceOwner("Alsace", "teuton", "Suebi Tribe")
	SetProvinceUnitQuantity("Brandenburg", "unit-suebi-swordsman", 4) -- to give them something of a defense
	SetProvinceUnitQuantity("Alsace", "unit-germanic-warrior", 0)
	SetProvinceUnitQuantity("Alsace", "unit-suebi-swordsman", 13)
	SetProvinceUnitQuantity("Burgundy", "unit-germanic-warrior", 0) -- Aedui forces defeated
	GrandStrategyEvents.TheSequanisAppeal = nil
	GrandStrategyEvents.TheBattleOfMagetobria = nil
end

if (GrandStrategyYear >= -58) then -- in 58 BC Caesar fought Ariovistus' Suebi and the latter were terribly beaten; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 219.
	GrandStrategyEvents.AskRomeForHelp = nil
	GrandStrategyEvents.DivitiacusPleaForAssistance = nil
	SetProvinceOwner("Alsace", "", "")
	
	-- gold (northern) Gallic currency, the gold staters, in existence when Caesar began his campaigns in Gaul; Source: F. Seebohm, "On the early currencies of the German Tribes", 1903, pp. 190-191.
--	SetFactionTechnology("celt", "Aedui Tribe", "upgrade-teuton-coinage", true)
--	SetFactionTechnology("celt", "Sequani Tribe", "upgrade-teuton-coinage", true)

--	SetFactionTechnology("celt", "Arverni Tribe", "upgrade-teuton-coinage", true) -- in southern Gaul there was currency, mostly of silver however; Source: F. Seebohm, "On the early currencies of the German Tribes", 1903, p. 191.
--	SetFactionTechnology("celt", "Menapii Tribe", "upgrade-teuton-coinage", true) -- in Belgic Gaul there was currency, mostly of gold, but using a different weight; Source: F. Seebohm, "On the early currencies of the German Tribes", 1903, p. 191.

	-- gold staters also present in Bohemia and the Danubian valley, as well as the Black Forest, the Rhine, Central Gaul, Armorica and the Channel Islands; Source: F. Seebohm, "On the early currencies of the German Tribes", 1903, p. 191.
--	SetFactionTechnology("celt", "Boii Tribe", "upgrade-teuton-coinage", true)
end

if (GrandStrategyYear >= -52) then
	GrandStrategyEvents.DeBelloGallico = nil -- De Bello Gallico was written 58-52 BC
end

if (GrandStrategyYear >= -50) then -- Gaul conquered by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	SetProvinceOwner("Alsace", "latin", "Rome")
	SetProvinceOwner("Aquitaine", "latin", "Rome")
	SetProvinceOwner("Brittany", "latin", "Rome")
	SetProvinceOwner("Burgundy", "latin", "Rome")
	SetProvinceOwner("France", "latin", "Rome")
	SetProvinceOwner("Franche Comte", "latin", "Rome")
	SetProvinceOwner("Lorraine", "latin", "Rome")
	SetProvinceOwner("Lower Rhine", "latin", "Rome")
	SetProvinceOwner("Moselle", "latin", "Rome")
	SetProvinceOwner("Palatinate", "latin", "Rome")
	SetProvinceOwner("Belgium", "latin", "Rome")
	SetProvinceOwner("Switzerland", "latin", "Rome")
end

if (GrandStrategyYear >= -33) then
	-- Illyricum acquired by Rome in 33 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	SetProvinceOwner("Croatia", "latin", "Rome")
	SetProvinceOwner("Bosnia", "latin", "Rome")
	SetProvinceOwner("Carniola", "latin", "Rome")
	SetProvinceOwner("Montenegro", "latin", "Rome")
end

if (GrandStrategyYear >= -29) then -- Lower Moesia and Upper Moesia were acquired by Rome in 29 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	SetProvinceOwner("Bulgaria", "latin", "Rome") -- the southern half of Bulgaria was only acquired later, in 46 AD, when Thrace was acquired
	SetProvinceOwner("Serbia", "latin", "Rome")
	SetProvinceOwner("Dobruja", "latin", "Rome")
end

if (GrandStrategyYear >= -27) then
	-- according to the Grottasongr, King Fjolnir of the Swedes lived around the same time as Augustus came to reign, establishing the Pax Romana
--	SetProvinceOwner("Sweden", "norse", "Swede Tribe")
--	AcquireFactionTechnologies("germanic", "Yngling Tribe", "norse", "Swede Tribe")
--	SetProvinceOwner("Scania", "norse", "Dane Tribe") -- the Ynglinga saga gives a Danish king (Fredfrode) living at around the same time as Fjolnir; Danes were in southern Scandinavia in 526 (so presumably this would be their dwelling place previously as well); Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
	GrandStrategyEvents.FjolneChieftainOfTheSwedes = nil
	GrandStrategyEvents.FredfrodeChieftainOfTheDanes = nil
	
	 -- 31 million people lived in Roman Asia and Africa at the "Time of Augustus"; Source: Josiah Cox Russell, "Medieval Population", 1937, p. 504.

	-- political situation in Europe (presumably) at the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	SetProvinceOwner("Franconia", "celt", "Turone Tribe")
	SetProvinceCivilization("Franconia", "celt")
	
	SetProvinceOwner("Drenthe", "teuton", "Ampsivarii Tribe")
	SetProvinceCivilization("Drenthe", "teuton")
	
	SetProvinceOwner("Overijssel", "teuton", "Chamavi Tribe")
	SetProvinceCivilization("Overijssel", "teuton")
end

if (GrandStrategyYear >= -15) then
	-- Raetia and Vindelicia acquired by Rome in 15 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	SetProvinceOwner("Bavaria", "latin", "Rome")
	SetProvinceOwner("Augsburg", "latin", "Rome")
	
	SetProvinceOwner("Savoy", "latin", "Rome") -- Pennine Alps acquired by Rome in 15 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
end

-- Battle of Teutoburg Forest between the Cherusci chieftain Arminius' forces, and the Romans (when did this happen?); Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 231.

if (GrandStrategyYear >= -9) then -- Marbod, king of the Suebic tribe of the Marcomanni, conquers Bohemia
	GrandStrategyEvents.TheHomeOfTheBoii = nil
	SetProvinceHero("Bohemia", "Marbod", 2)
	SetProvinceUnitQuantity("Bohemia", "unit-suebi-swordsman", 5) -- Marbod had 70,000 foot soldiers and 4,000 horse riders; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 231.
	SetProvinceUnitQuantity("Bohemia", "unit-teuton-archer", 2) -- let's make 20,000 of those soldiers into archers
	SetProvinceUnitQuantity("Bohemia", "unit-teuton-ritter", 1) -- 4,000 horse riders
end

if (GrandStrategyYear >= 3) then -- estimated date
	GrandStrategyEvents.FredfrodesFeast = nil
	GrandStrategyEvents.SwegdeChieftainOfTheSwedes = nil
end

if (GrandStrategyYear >= 10) then -- Pannonia was acquired by Rome in 10 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	SetProvinceOwner("Pannonia", "latin", "Rome")
end

if (GrandStrategyYear >= 19) then
	GrandStrategyEvents.MarbodDeposed = nil
	SetProvinceHero("Bohemia", "Marbod", 0)
end

if (GrandStrategyYear >= 20) then
	-- Tiberius placed the Iazyges (as Roman allies) between the Danube and the Tisa around 20 AD; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
end

if (GrandStrategyYear >= 28) then -- estimated date
	GrandStrategyEvents.SwegdesJourney = nil
end

if (GrandStrategyYear >= 33) then -- estimated date
	GrandStrategyEvents.SwegdesReturn = nil
	GrandStrategyEvents.VanlandeChieftainOfTheSwedes = nil
end

if (GrandStrategyYear >= 43) then
	SetProvinceOwner("Rhodes", "latin", "Rome") -- Rhodes acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
end

if (GrandStrategyYear >= 50) then
	-- By 50 AD the greater part of the Sarmatians lived between the Tisa and the Danube; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 5.
end

if (GrandStrategyYear >= 53) then -- estimated date
	GrandStrategyEvents.TheWinterAbode = nil
end

if (GrandStrategyYear >= 63) then -- estimated date
	GrandStrategyEvents.HuldsCurse = nil
end

if (GrandStrategyYear >= 83) then
	-- Agri Decumates acquired by Rome in 83 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	SetProvinceOwner("Baden", "latin", "Rome")
	SetProvinceOwner("Wurtemberg", "latin", "Rome")
end
	
if (GrandStrategyYear >= 98) then
--	SetProvinceOwner("Sweden", "norse", "Swede Tribe") -- Swedes attested in Tacitus' Germania, from 98 AD
end

if (GrandStrategyYear >= 107) then -- Dacia acquired by Rome in 107 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	SetProvinceOwner("Moldavia", "latin", "Rome")
	SetProvinceOwner("Transylvania", "latin", "Rome")
	SetProvinceOwner("Wallachia", "latin", "Rome")
	SetProvinceOwner("Vojvodina", "latin", "Rome")
end

if (GrandStrategyYear >= 142) then
	SetProvinceOwner("Posen", "", " Tribe")
	SetProvinceOwner("Transylvania", "goth", "Vandal Tribe") -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
end

if (GrandStrategyYear >= 150) then
	SetProvinceOwner("Holland", "teuton", "Frank Tribe") -- Franks were the people settled in the modern Netherlands in (presumably) 150 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
	SetProvinceCivilization("Holland", "teuton")
	
	-- Rugians shown as being in Bavaria (presumably) in 150 AD; Source William R. Shepherd's Historical Atlas, 1911, p. 45.
	SetProvinceOwner("Bavaria", "goth", "Rugian Tribe")
	SetProvinceOwner("Franconia", "goth", "Rugian Tribe")
end

if (GrandStrategyYear >= 166) then
	-- Army of 6,000 allied Marcomanni, Lombards and Obii raid the Romans in 166-167 AD; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 231.
	
	-- The Iazyges were allied with the Marcomanni in the Marcomannic War of 166/167-175 AD; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
end

if (GrandStrategyYear >= 170) then
	GrandStrategyEvents.TheSackOfIuvavum = nil
end

if (GrandStrategyYear >= 175) then
	-- In 175 AD the Romans sent 5,500 Iazyges to Britain, and Marcomanni, Quadi and Nuristae cavalry to Syria; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
end

if (GrandStrategyYear >= 177) then
	-- The Iazyges were allied with the Marcomanni in the Marcomannic War of 177-180 AD; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
end

if (GrandStrategyYear >= 200) then
	SetProvinceOwner("Pomerelia", "", "")
	SetProvinceOwner("Prussia", "", "")
	SetProvinceOwner("Ukraine", "goth", "Ostrogoth Tribe") -- The eastern goths had migrated to the area of modern Ukraine in about 200 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
	SetProvinceOwner("Wallachia", "goth", "Visigoth Tribe") -- The western goths had migrated to the area of modern Romania / ancient Dacia in about 200 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
	SetProvinceOwner("Moldavia", "goth", "Visigoth Tribe")
	SetProvinceOwner("Bessarabia", "goth", "Visigoth Tribe")
	
	-- Josiah Cox Russell gives 40 million people in Europe in 200 AD; Source: Josiah Cox Russell, "Medieval Population", 1937, p. 504.
end

if (GrandStrategyYear >= 275) then -- Dacia lost by Rome in 275 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
--	SetProvinceOwner("Moldavia", "", "")
--	SetProvinceOwner("Transylvania", "", "")
--	SetProvinceOwner("Wallachia", "", "")
	SetProvinceOwner("Vojvodina", "", "")
end

if (GrandStrategyYear >= 325) then
	-- decree by Emperor Constantine in 325 AD regulating the issue of gold solidi for Sicily, Sardinia and Corsica; Source: F. Seebohm, "On the early currencies of the German Tribes", 1903, p. 186.
end

if (GrandStrategyYear >= 357) then
	-- Roman commander (and later emperor) Julian defeat an Alamannic army (led by their king Chnodomar and his nephew Serapio/Agenarich) in the battle of Argentoratum in 357 AD; the Alamanns counted with an alliance of five kings (Vestralp, Urius, Ursicinus, Suomer and Hortar), totalling 35,000 soldiers commanded by 17 warlords, with each leading 2,000-3,000 warriors; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 231.
end

if (GrandStrategyYear >= 358) then
	-- The Salii (Salic Franks) were attacked by the Frankish tribe of the Chamavi in 358 AD in the Batavian isle, being saved by the Romans; previously the Salii had been driven out of the region near the river Isala (in the area of Wesel) by the Chamavi; Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 320.
end

if (GrandStrategyYear >= 381) then
	-- date estimated from Gundahar's establishment of the Kingdom of the Burgundians
	SetProvinceOwner("Franconia", "goth", "Burgundian Tribe")
end

if (GrandStrategyYear >= 397) then
	-- The Visigoths migrated to the Western Balkans in 397 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
	SetProvinceOwner("Moldavia", "", "")
	SetProvinceOwner("Bessarabia", "", "")
	SetProvinceOwner("Wallachia", "", "")
	SetProvinceOwner("Croatia", "goth", "Visigoth Tribe")
	SetProvinceOwner("Dalmatia", "goth", "Visigoth Tribe")
	SetProvinceOwner("Bosnia", "goth", "Visigoth Tribe")
end

if (GrandStrategyYear >= 400) then
	GrandStrategyEvents.NotitiaDignitatum = nil -- Notitia Dignitatum was written c. 400 AD
end

if (GrandStrategyYear >= 406) then
	-- Gundahar and his father Gibica brought the Burgundians over the Rhine in 406/407 AD; the initial quantity of Burgundians was c. 80,000; Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 91, 93.
	SetProvinceOwner("Palatinate", "goth", "Burgundian Tribe")
end

if (GrandStrategyYear >= 411) then
	-- Alans conquered the area of modern Portugal in 411; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
	
	-- Kingdom of the Burgundians established by Gundahar (a Burgundian tribal chief) in 411 AD, with its center in Borbetomagus (Worms); Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 91-93.
	SetProvinceOwner("Palatinate", "goth", "Burgundy")
end

if (GrandStrategyYear >= 412) then
	SetProvinceOwner("Croatia", "", "")
	SetProvinceOwner("Dalmatia", "", "")
	SetProvinceOwner("Bosnia", "", "")
	SetProvinceOwner("Aquitaine", "goth", "Visigoth Tribe") -- The Visigoths migrated to Aquitaine in 412 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
	SetProvinceUnitQuantity("Aquitaine", "unit-germanic-warrior", 0) -- let's remove those oodles of warriors placed there to make this province difficult to conquer
end

if (GrandStrategyYear >= 431) then
	GrandStrategyEvents.PalladiusBishopOfIreland = nil
	GrandStrategyEvents.PalladiusFailure = nil
	GrandStrategyEvents.PalladiusTheApostleOfIreland = nil
end

if (GrandStrategyYear >= 436) then
	-- Roman general Flavius Aetius (who served under Emperor Valentinian III) invoked Attila's Huns to do away with Gundahar's kingdom in 436 AD; Source: Norman Davies, "Vanished Kingdoms", 2012, p. 93.
end

if (GrandStrategyYear >= 437) then
	-- Invasion of Gundahar's kingdom in 437 AD by Attila's Huns, with 20,000 Burgundians having died as a result; Source: Norman Davies, "Vanished Kingdoms", 2012, p. 93.
end

if (GrandStrategyYear >= 440) then
	GrandStrategyEvents.PatrickTheApostleOfIreland = nil
end

if (GrandStrategyYear >= 450) then
	SetProvinceOwner("Holland", "", "") -- Franks had left most of the modern Netherlands by 450 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 48.
	
	-- Frankish territory in 450 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 48.
	SetProvinceOwner("Belgium", "teuton", "Frank Tribe")
	SetProvinceOwner("Palatinate", "teuton", "Frank Tribe")
	SetProvinceOwner("Lower Rhine", "teuton", "Frank Tribe")
end

if (GrandStrategyYear >= 451) then
	-- Burgundians fought on both the Roman and Hunnic sides in the Battle of the Catalaunian Fields in (June) 451 AD; with the Roman victory, the Burgundians under Gundioc were granted more land; Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 94-95.
	SetProvinceOwner("Palatinate", "", "")
	SetProvinceOwner("Switzerland", "goth", "Burgundy")
	SetProvinceOwner("Savoy", "goth", "Burgundy")
	SetProvinceOwner("Franche Comte", "goth", "Burgundy")
end

if (GrandStrategyYear >= 453) then
	-- Attila died and his Hunnic empire collapsed in 453 AD; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 6.

	-- Walamer was king over the Ostrogoths in Pannonia (between the Danube and the Drave) when Attila's empire collapsed in 453 AD; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 6.
	SetProvinceOwner("Ukraine", "", "")
	SetProvinceOwner("Pannonia", "goth", "Ostrogoth Tribe")
end

if (GrandStrategyYear >= 474) then
	-- In 474 AD the Ostrogoths left Pannonia to settle in Macedonia under the aegis of the Eastern Roman Emperor, and in that same year Theodemer died, being succeeded by Theoderic; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 7.
	SetProvinceOwner("Pannonia", "", "")
	SetProvinceOwner("Macedonia", "goth", "Ostrogoth Tribe")
end

if (GrandStrategyYear >= 481) then
	-- Frankish territory in 481 AD, and the Franks had already established their kingdom; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
	SetProvinceOwner("Belgium", "teuton", "Francia")
	AddProvinceClaim("Belgium", "teuton", "Francia")
	SetProvinceOwner("Drenthe", "teuton", "Francia")
	AddProvinceClaim("Drenthe", "teuton", "Francia")
	SetProvinceOwner("Lorraine", "teuton", "Francia")
	AddProvinceClaim("Lorraine", "teuton", "Francia")
	SetProvinceOwner("Moselle", "teuton", "Francia")
	AddProvinceClaim("Moselle", "teuton", "Francia")
	SetProvinceOwner("Lower Rhine", "teuton", "Francia")
	AddProvinceClaim("Lower Rhine", "teuton", "Francia")
	SetProvinceOwner("Overijssel", "teuton", "Francia")
	AddProvinceClaim("Overijssel", "teuton", "Francia")

	-- Political situation of the territories surrounding the Frankish realm in 481-814 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
	SetProvinceOwner("Alsace", "teuton", "Alamanni Tribe")
	SetProvinceOwner("Baden", "teuton", "Alamanni Tribe")
	SetProvinceOwner("Wurtemberg", "teuton", "Alamanni Tribe")
	SetProvinceOwner("Augsburg", "teuton", "Alamanni Tribe")
	SetProvinceOwner("Palatinate", "teuton", "Alamanni Tribe")
end

if (GrandStrategyYear >= 486) then
	-- The Frankish Merovingian king Clovis conquers Syagrius' realm, the last Roman territory in Gaul; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
	SetProvinceOwner("France", "teuton", "Francia")
	SetProvinceUnitQuantity("France", "unit-germanic-warrior", 0) -- let's remove those oodles of warriors placed there to make this province difficult to conquer
	AddProvinceClaim("France", "teuton", "Francia")

	SetProvinceOwner("Transylvania", "", "")
	SetProvinceOwner("Corsica", "goth", "Vandal Tribe") -- Corsica was a part of the Kingdom of the Vandals in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
	SetProvinceUnitQuantity("Corsica", "unit-germanic-warrior", 0) -- let's remove those oodles of warriors placed there to make this province difficult to conquer
	SetProvinceOwner("Sardinia", "goth", "Vandal Tribe") -- Sardinia was a part of the Kingdom of the Vandals in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
	SetProvinceUnitQuantity("Sardinia", "unit-germanic-warrior", 0) -- let's remove those oodles of warriors placed there to make this province difficult to conquer
end

if (GrandStrategyYear >= 488) then
	-- Ostrogoths commissioned by the Eastern Roman Emperor to wrest control of Italy from Odoacer; as a result, the Ostrogoths marched from Moesia to Italy (this means that by 488 they were in Moesia), with a quarter of a million men, women and children; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, pp. 7-8.
	SetProvinceOwner("Macedonia", "latin", "Rome")
	SetProvinceOwner("Bulgaria", "goth", "Ostrogoth Tribe") -- Lower Moesia
	SetProvinceOwner("Serbia", "goth", "Ostrogoth Tribe") -- Upper Moesia
	SetProvinceOwner("Skopje", "goth", "Ostrogoth Tribe") -- Upper Moesia
end

if (GrandStrategyYear >= 489) then
	-- In the Summer of 489 AD, the Ostrogoths arrived at the frontiers of Odoacer's realm (the Isonzo), crossing it in August and defeating him in Verona in September, with Odoacer fleeing to Ravenna; Odoacer's follower Tufa deserted to Theoderic and led a force against Odoacer, but upon arriving for the confrontation in Favenzia switched back to his old allegiance and sent the Ostrogoth officers who had come with him in chains to Ravenna; other deserters from Odoacer's army followed suit and returned to his allegiance; Theoderic became shut by Odoacer in Pavia when an army of Visigoths from southern Gaul succurred the Ostrogoth chieftain; Odoacer's siege was raised and he was defeated in a battle on the banks of the Adda; Odoacer fled again to Ravenna; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 8.
end

if (GrandStrategyYear >= 493) then
	GrandStrategyEvents.SPatriciiCanticumScotticum = nil -- Patrick's mission lasted until 493
	
	-- Odoacer held out against Theoderic for 2 years entrenched in Ravenna, but in 493 AD the fortress fell; the terms of the surrender foresaw leaving the defenders alive, but later Theoderic suspected a plot of theirs against his life and put them (including Odoacer) to death; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, pp. 8-9.
	
	-- Ostrogoths conquer Italy in 493 AD; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, pp. 8-9; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
	SetProvinceOwner("Lombardy", "goth", "Ostrogoth Tribe")
	SetProvinceUnitQuantity("Lombardy", "unit-teuton-swordsman", 0) -- let's remove those oodles of warriors placed there to make Italy difficult to conquer
	SetProvinceOwner("Naples", "goth", "Ostrogoth Tribe")
	SetProvinceUnitQuantity("Naples", "unit-teuton-swordsman", 0) -- let's remove those oodles of warriors placed there to make Italy difficult to conquer
	SetProvinceOwner("Umbria", "goth", "Ostrogoth Tribe")
	SetProvinceOwner("Abruzzo", "goth", "Ostrogoth Tribe")
end

if (GrandStrategyYear >= 500) then
	GrandStrategyEvents.HistoriaNova = nil
	
	-- around 500 AD a royal palace (which had a hall and a Christian chapel) was built by the Burgundians in Geneva; Source: Norman Davies, "Vanished Kingdoms", 2012, p. 96.
end

if (GrandStrategyYear >= 506) then
	-- Alemanni lands (Alsace, Baden, Wurtemberg, Augsburg and etc.) conquered by the Franks in 506; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
	SetProvinceOwner("Alsace", "teuton", "Francia")
	SetProvinceOwner("Baden", "teuton", "Francia")
	SetProvinceOwner("Wurtemberg", "teuton", "Francia")
	SetProvinceOwner("Augsburg", "teuton", "Francia")
	SetProvinceOwner("Palatinate", "teuton", "Francia")
end

if (GrandStrategyYear >= 507) then -- political situation in 507-534 in Europe; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
	SetProvinceOwner("Bavaria", "goth", "Ostrogoth Tribe")
	SetProvinceOwner("Istria", "goth", "Ostrogoth Tribe")
	SetProvinceOwner("Carniola", "goth", "Ostrogoth Tribe")
	SetProvinceOwner("Croatia", "goth", "Ostrogoth Tribe")
	SetProvinceOwner("Bosnia", "goth", "Ostrogoth Tribe")
	SetProvinceOwner("Dalmatia", "goth", "Ostrogoth Tribe")
	SetProvinceOwner("Aquitaine", "teuton", "Francia") -- Aquitania conquered by the Franks in 507
	AddProvinceClaim("Aquitaine", "teuton", "Francia")
	
	SetProvinceOwner("Franconia", "teuton", "Thuringian Tribe")
	SetProvinceCivilization("Franconia", "teuton")
end

if (GrandStrategyYear >= 517) then
	-- Catholic ascendancy systematized in the Burgundian kingdom in 517 AD, in the Council of Epaon (perhaps Albon in the Dauphiné); during the Council Avitus laid out guidelines for socio-religious practice; Source: Norman Davies, "Vanished Kingdoms", 2012, p. 99.
end

if (GrandStrategyYear >= 526) then -- political situation in 526-600 in Europe; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
	SetProvinceOwner("Bavaria", "teuton", "Bavarian Tribe")
	SetProvinceCivilization("Bavaria", "teuton")
	SetProvinceOwner("Holland", "teuton", "Frisian Tribe")
end

if (GrandStrategyYear >= 531) then
	SetProvinceOwner("Franconia", "teuton", "Francia") -- Conquest of the Thuringian lands by Francia in 531 AD; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
end

if (GrandStrategyYear >= 534) then
	-- end of Gundimar's reign over the Burgundians in 534 AD; he was proscribed, pursued and executed by the Franks, and his realm was annexed by them; Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 96, 99.
	
	-- The Burgundian realm, which included the Franche Comté, Burgundy, Savoy and most of Switzerland, was conquered by the Franks in 534; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
	SetProvinceOwner("Burgundy", "teuton", "Francia")
	AddProvinceClaim("Burgundy", "teuton", "Francia")
	SetProvinceOwner("Franche Comte", "teuton", "Francia")
	AddProvinceClaim("Franche Comte", "teuton", "Francia")
	SetProvinceOwner("Savoy", "teuton", "Francia")
	AddProvinceClaim("Savoy", "teuton", "Francia")
	SetProvinceOwner("Switzerland", "teuton", "Francia")
	AddProvinceClaim("Switzerland", "teuton", "Francia")
	
	SetProvinceOwner("Corsica", "", "") -- Fall of the Vandal kingdom in 534 AD; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
	SetProvinceOwner("Sardinia", "", "") -- Fall of the Vandal kingdom in 534 AD; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
	
end

if (GrandStrategyYear >= 537) then
	SetProvinceOwner("Bavaria", "teuton", "Francia") -- region of Altbayern, Salzburg and Tyrol conquered by the Franks in 537; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
	AddProvinceClaim("Bavaria", "teuton", "Francia")
	
	SetProvinceOwner("Provence", "teuton", "Francia") -- Provence conquered by the Franks in 537; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
	AddProvinceClaim("Provence", "teuton", "Francia")
end

if (GrandStrategyYear >= 563) then
	GrandStrategyEvents.ColumbaMissionaryToScotland = nil
	GrandStrategyEvents.MohonnaMissionaryToThePicts = nil
end

if (GrandStrategyYear >= 565) then
	-- beginning of Justin II's reign in the Eastern Roman Empire in 565 AD; Source: F. Seebohm, "On the early currencies of the German Tribes", 1903, p. 176.
end

if (GrandStrategyYear >= 584) then
	-- beginning of Maurice's reign in the Eastern Roman Empire in 584 AD; Source: F. Seebohm, "On the early currencies of the German Tribes", 1903, p. 176.
end

if (GrandStrategyYear >= 596) then
	GrandStrategyEvents.TheMissionOfAugustine = nil
end

if (GrandStrategyYear >= 597) then
	GrandStrategyEvents.AugustineArchbishopOfEngland = nil
	GrandStrategyEvents.TheChurchAtCanterbury = nil -- church and monastery built at Canterbury by Augustine; Source: Philip Schaff, "History of the Christian Church", 1997, Â§10.
end

if (GrandStrategyYear >= 602) then
	GrandStrategyEvents.TheConferenceAtAugustinesOak = nil
	GrandStrategyEvents.AugustinesSecondConference = nil
end

if (GrandStrategyYear >= 604) then
	GrandStrategyEvents.MellitusConsecratedBishopOfLondon = nil
	GrandStrategyEvents.JustusConsecratedBishopOfRochester = nil
end

if (GrandStrategyYear >= 612) then
	GrandStrategyEvents.ColumbanusMissionaryToFrance = nil
end

if (GrandStrategyYear >= 613) then
	-- end of Maurice's reign in the Eastern Roman Empire in 613 AD; Source: F. Seebohm, "On the early currencies of the German Tribes", 1903, p. 176.
end

if (GrandStrategyYear >= 625) then
	GrandStrategyEvents.PaulinusAppointedArchbishopOfYork = nil
end

if (GrandStrategyYear >= 650) then
	-- "Cosmographia" by the Geographer of Ravenna written about 650 AD; Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 320.
end

if (GrandStrategyYear >= 680) then
	GrandStrategyEvents.KilianMissionaryToFranconia = nil
	GrandStrategyEvents.EloquiusMissionaryToBelgium = nil
end

if (GrandStrategyYear >= 692) then
	GrandStrategyEvents.WillibrordMissionaryToFriesland = nil
end

if (GrandStrategyYear >= 700) then
	GrandStrategyEvents.RupertMissionaryToBavaria = nil
end

if (GrandStrategyYear >= 731) then
	GrandStrategyEvents.HistoriaEcclesiasticaVenerabilisBedae = nil
end

if (GrandStrategyYear >= 734) then -- Franks conquered Holland and Friesland in 734 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
	SetProvinceOwner("Holland", "teuton", "Francia")
	AddProvinceClaim("Holland", "teuton", "Francia")
	SetProvinceOwner("Friesland", "teuton", "Francia")
	AddProvinceClaim("Friesland", "teuton", "Francia")
end

if (GrandStrategyYear >= 765) then
	GrandStrategyEvents.LiafwinFoundsOratory = nil
end

if (GrandStrategyYear >= 785) then
	GrandStrategyEvents.HorseFleshEatingProhibited = nil
end

if (GrandStrategyYear >= 793) then
	-- Lindisfarne sacked by Northmen in 793; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 93.
end

if (GrandStrategyYear >= 807) then
	GrandStrategyEvents.FerdomnachLearnedMonkOfArmagh = nil
	GrandStrategyEvents.TheBookOfArmagh = nil
end

if (GrandStrategyYear >= 834) then
	GrandStrategyEvents.ChurchOfUtrechtGrantCharter = nil
end

-- King Louis I the Pious grants the Danish king Harald Klak a fiefdom in Friesia to combat other vikings, after the Danish royal had offered himself to be hired as a mercenary (when?); the Danish king Horik I would later make a similar offer, while demanding Friesia and the lands of the Abodrites (a monastic order?); Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 232.
	
if (GrandStrategyYear >= 838) then
	-- Karl II the Bald (of which country?) is born in 838 AD (source is not entirely clear over whether this is the date of birth or when his rule began); during his rule the payment of the Danegeld would begin, and Karl II would recruit a viking chieftain named Weland (name is cognate to "Volund"?), who possessed 200 ships and requested 5,000 pounds of silver and provisions; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 232.
end

if (GrandStrategyYear >= 840) then
	-- King Louis I the Pious (of which country?) dies in 840 AD; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 232.
end

if (GrandStrategyYear >= 849) then
	GrandStrategyEvents.VitaSanctiLebuiniAntiqua = nil
	-- "Vita sancti Liudgeri" written about 841-849 AD by Altfried; Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 320.
end

if (GrandStrategyYear >= 865) then
	-- A large group of vikings gathered in Kent in 865 AD (perhaps at the invitation of a local ruler), eventually going on to conquer a number of Anglo-Saxon kingdoms; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 232.
end

if (GrandStrategyYear >= 876) then
	-- Part of the large group of vikings which had gathered in Kent begins to settle in England in 876 AD; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 232.
end

if (GrandStrategyYear >= 877) then
	-- Karl II the Bald (of which country?) dies in 877 AD; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 232.
end

if (GrandStrategyYear >= 879) then
	-- Part of the large group of vikings which had gathered in Kent split off and invade France in 879 AD; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 232.
end

if (GrandStrategyYear >= 885) then
	-- Group of vikings which had invaded France besieges Paris in 885 AD; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 232.
end

if (GrandStrategyYear >= 887) then
	-- Group of vikings which had invaded France besieges Paris a second time in 887 AD; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 232.
end

if (GrandStrategyYear >= 892) then
	-- Group of vikings which had invaded France returns to England in 892 AD, but ends up being defeated by Alfred the Great; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 232.
end

if (GrandStrategyYear >= 900) then
	-- Scandinavian attempts of colonization in England begin after 900 AD; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 232.
end

if (GrandStrategyYear >= 911) then
	-- Scandinavian warlord Rollo converted to Christianity and was granted the estuary of the Seine as a fiefdom (which would be later known as Normandy), becoming the first duke of Normandy; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 233.
end

if (GrandStrategyYear >= 919) then
	-- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	
	-- Duchy of Bavaria
	SetProvinceOwner("Bavaria", "teuton", "Holy Rome")
	AddProvinceClaim("Bavaria", "teuton", "Bavaria")
	
	-- Duchy of Carinthia
	SetProvinceOwner("Carniola", "teuton", "Holy Rome")
	SetProvinceOwner("Istria", "teuton", "Holy Rome") -- March of Istria
	
	-- Duchy of Franconia
	SetProvinceOwner("Franconia", "teuton", "Holy Rome")
	SetProvinceOwner("Hesse", "teuton", "Holy Rome")
	SetProvinceOwner("Palatinate", "teuton", "Holy Rome")
	SetProvinceCivilization("Palatinate", "teuton")
	
	-- Duchy of Lower Lorraine
	SetProvinceOwner("Belgium", "teuton", "Holy Rome")
	SetProvinceOwner("Lower Rhine", "teuton", "Holy Rome")
	
	-- Duchy of Saxony
	SetProvinceOwner("Bremen", "teuton", "Holy Rome")
	AddProvinceClaim("Bremen", "teuton", "Saxony")
	SetProvinceOwner("Brunswick", "teuton", "Holy Rome")
	AddProvinceClaim("Brunswick", "teuton", "Saxony")
	SetProvinceOwner("Hanover", "teuton", "Holy Rome")
	AddProvinceClaim("Hanover", "teuton", "Saxony")
	SetProvinceOwner("Lauenburg", "teuton", "Holy Rome")
	AddProvinceClaim("Lauenburg", "teuton", "Saxony")
	SetProvinceOwner("Magdeburg", "teuton", "Holy Rome")
	AddProvinceClaim("Magdeburg", "teuton", "Saxony")
	SetProvinceOwner("Oldenburg", "teuton", "Holy Rome")
	AddProvinceClaim("Oldenburg", "teuton", "Saxony")
	SetProvinceOwner("Westphalia", "teuton", "Holy Rome")
	AddProvinceClaim("Westphalia", "teuton", "Saxony")
	
	-- Duchy of Swabia
	SetProvinceOwner("Alsace", "teuton", "Holy Rome")
	SetProvinceCivilization("Alsace", "teuton")
	SetProvinceOwner("Augsburg", "teuton", "Holy Rome")
	SetProvinceCivilization("Augsburg", "teuton")
	SetProvinceOwner("Baden", "teuton", "Holy Rome")
	SetProvinceCivilization("Baden", "teuton")
	SetProvinceOwner("Wurtemberg", "teuton", "Holy Rome")
	SetProvinceCivilization("Wurtemberg", "teuton")
	
	-- Duchy of Upper Lorraine
	SetProvinceOwner("Lorraine", "teuton", "Holy Rome")
	SetProvinceOwner("Moselle", "teuton", "Holy Rome")
	
	-- Friesland
	SetProvinceOwner("Drenthe", "teuton", "Holy Rome")
	SetProvinceOwner("East Friesland", "teuton", "Holy Rome")
	SetProvinceOwner("Friesland", "teuton", "Holy Rome")
	SetProvinceOwner("Holland", "teuton", "Holy Rome")
	SetProvinceOwner("Overijssel", "teuton", "Holy Rome")
	
	-- Thuringia
	SetProvinceOwner("Thuringia", "teuton", "Holy Rome")
	
	SetProvinceOwner("Upper Saxony", "teuton", "Holy Rome")
	SetProvinceOwner("Upper Lusatia", "teuton", "Holy Rome")
	SetProvinceCivilization("Upper Lusatia", "teuton")
	SetProvinceOwner("Lower Lusatia", "teuton", "Holy Rome")
	SetProvinceCivilization("Lower Lusatia", "teuton")
	
	-- Duchy of Venice
	SetProvinceOwner("Venetia", "latin", "Venice")
	
	SetProvinceOwner("Burgundy", "latin", "France")
	SetProvinceOwner("France", "latin", "France")
	SetProvinceOwner("Croatia", "slav", "Croatia")
	SetProvinceCivilization("Croatia", "slav")
	SetProvinceOwner("Pannonia", "teuton", "Hungary")
	SetProvinceOwner("Galicia", "slav", "Poland")
	SetProvinceCivilization("Galicia", "slav")
	SetProvinceOwner("Mazovia", "slav", "Poland")
	SetProvinceCivilization("Mazovia", "slav")
	SetProvinceOwner("Posen", "slav", "Poland")
	SetProvinceCivilization("Posen", "slav")
	SetProvinceOwner("Silesia", "slav", "Poland")
	SetProvinceCivilization("Silesia", "slav")
	SetProvinceOwner("West Galicia", "slav", "Poland")
	SetProvinceCivilization("West Galicia", "slav")
end

if (GrandStrategyYear >= 965) then
	-- Bishop Dietrich of Metz ordained in 965 AD; Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 321.
end

if (GrandStrategyYear >= 970) then
	GrandStrategyEvents.ForannanMissionaryToTheFrontierOfBelgium = nil
end

if (GrandStrategyYear >= 981) then
	-- Greenland discovered by the Icelanders c. 981 AD; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 141.
end

if (GrandStrategyYear >= 984) then
	-- Bishop Dietrich of Metz died in 984 AD; Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 321.
end

if (GrandStrategyYear >= 995) then
	-- The Norwegian longships Long Serpent and the Crane were built sometime between 995 and 1000 AD; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 134.
end

if (GrandStrategyYear >= 999) then
	-- Norman knights reach Salerno (south Italy) in 999 AD in pilgrimage (after coming back from Jerusalem); Salerno was under Saracen siege, and the Normans drove the Saracens away, after getting weapons and horses; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 233.
	
	-- Gaimar IV becomes lord of Salerno in 999 AD; Gaimar IV sought to engage the Norman knights who had saved Salerno as mercenaries, but they decided to return to Normandy instead; Gaimar IV did send envoys with them to seek other mercenaries in Normandy, however; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 233.
end

if (GrandStrategyYear >= 1002) then
	-- Massacre of the Danes in 1002 AD by Ethelred, presumably in England; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 127.
end

if (GrandStrategyYear >= 1015) then
	-- Norman warriors appear in southern Italy in 1015-1016 AD, to fight the Muslims and Byzantines for the local nobles; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 233.
end

if (GrandStrategyYear >= 1026) then
	GrandStrategyEvents.TempleAtUpsalConverted = nil -- Temple at Upsal converted into a church by laf the Swede at about 1026; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 88.
end

if (GrandStrategyYear >= 1027) then
	-- Gaimar IV of Salerno dies in 1027 AD; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 233.
end

if (GrandStrategyYear >= 1046) then
	-- Robert Guiscard, a Norman, arrived in southern Italy in 1046-1047 AD, eventually conquering Calabria, and becoming duke of Apulia, Calabria and Sicily; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 233.
end

if (GrandStrategyYear >= 1083) then
	GrandStrategyEvents.SaemundPriestOfTheParishOfOdda = nil
end

if (GrandStrategyYear >= 1086) then
	-- 15% of England was wooded in 1086 AD, and more than 30% of English land was used for farming; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 128.
end

if (GrandStrategyYear >= 1091) then
	-- The sole remaining Muslim stronghold in Sicily fell to the Norman forces in 1091 AD; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 233.
end

if (GrandStrategyYear >= 1104) then
	GrandStrategyEvents.TheEruptionOfHekla = nil
end

if (GrandStrategyYear >= 1124) then
	-- Regular succession of bishops in Greenland begins in 1124 AD; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 141.
end

if (GrandStrategyYear >= 1133) then -- Saemund died in 1133
	GrandStrategyEvents.AnnalesOddenses = nil -- should be moved to actual date of composition/publication
	GrandStrategyEvents.SaemundsEdda = nil -- should be moved to actual date of composition/publication
end

if (GrandStrategyYear >= 1164) then
	GrandStrategyEvents.BrandBishopOfTheDioceseOfHolen = nil
end

if (GrandStrategyYear >= 1169) then
	GrandStrategyEvents.KarlAbbotOfTheMonasteryOfThingIsle = nil
end

if (GrandStrategyYear >= 1261) then
	-- Norse settlements in Greenland annexed to Norway in 1261 AD by King Hakon Hakonson; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
--	SetProvinceOwner("Greenland", "norse", "Norway") 
end

if (GrandStrategyYear >= 1349) then
	-- black death appeared in Europe in 1349 AD; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 145.
end

if (GrandStrategyYear >= 1389) then
	-- Regular succession of bishops in Greenland ends in 1389 AD; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 141.
end

if (GrandStrategyYear >= 1490) then
	GrandStrategyEvents.Vornedskabet = nil -- happened in the 1490s; Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 20.
end

if (GrandStrategyYear >= 1523) then
	GrandStrategyEvents.NoblesAcquireLegalJurisdictionPrivilege = nil -- happened in 1523-1536; Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 20.

	-- Bornholm captured by Denmark in 1523; Source: Norman Davies, "Vanished Kingdoms", 2012, p. 90.
	SetProvinceOwner("Bornholm", "norse", "Denmark")
end

if (GrandStrategyYear >= 1526) then -- East Prussian Land Ordinance of 1526; Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 23.
	GrandStrategyEvents.TheEastPrussianLandOrdinance = nil
end

if (GrandStrategyYear >= 1547) then
	-- Political situation in Central Europe in 1547; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 114-115.
	SetProvinceOwner("Magdeburg", "teuton", "Magdeburg")
	SetFactionGovernmentType("teuton", "Magdeburg", "theocracy")
end

if (GrandStrategyYear >= 1560) then
	-- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	SetProvinceOwner("Aquitaine", "latin", "France")
	SetProvinceOwner("Brittany", "latin", "France")
	SetProvinceOwner("Provence", "latin", "France")
	
	SetProvinceOwner("Savoy", "latin", "Savoy")
	SetProvinceOwner("Venetia", "latin", "Venice")
	SetFactionGovernmentType("latin", "Venice", "republic")	
	SetProvinceOwner("Sardinia", "latin", "Spain")

	SetProvinceOwner("Belgium", "latin", "Spain")
	SetProvinceOwner("Holland", "latin", "Spain")
	SetProvinceOwner("Overijssel", "latin", "Spain")
	SetProvinceOwner("Friesland", "latin", "Spain")
	SetProvinceOwner("Drenthe", "latin", "Spain")
	SetProvinceOwner("Franche Comte", "latin", "Spain")
	SetProvinceOwner("Switzerland", "teuton", "Switzerland")
	SetFactionGovernmentType("teuton", "Switzerland", "republic")	
	
	SetProvinceOwner("Bavaria", "teuton", "Bavaria")
	AddProvinceClaim("Bavaria", "teuton", "Bavaria")
	
	SetProvinceOwner("Neumark", "teuton", "Brandenburg")
	SetProvinceOwner("Prussia", "teuton", "Prussia")
	
	SetProvinceOwner("Carniola", "teuton", "Austria")
	SetProvinceOwner("Istria", "teuton", "Austria") -- the outer parts of Istria were owned by Venice, but the inner parts (including Trieste) were owned by Austria)
	SetProvinceOwner("Silesia", "teuton", "Austria")
	SetProvinceOwner("Lower Lusatia", "teuton", "Austria")
	SetProvinceOwner("Upper Lusatia", "teuton", "Austria")
	
	SetProvinceOwner("Dalmatia", "latin", "Venice")
	SetProvinceOwner("Croatia", "teuton", "Turkey")
	SetProvinceOwner("Bosnia", "teuton", "Turkey")
	SetProvinceOwner("Pannonia", "teuton", "Turkey")
	SetProvinceOwner("Vojvodina", "teuton", "Turkey")
	
	SetProvinceOwner("Transylvania", "latin", "Transylvania")
	
	SetProvinceOwner("Latvia", "teuton", "Prussia") -- Teutonic Order
	SetProvinceOwner("Estonia", "teuton", "Prussia") -- Teutonic Order
	
	SetProvinceOwner("Crimea", "teuton", "Crimea")
	SetProvinceOwner("Don", "teuton", "Crimea")

	SetProvinceOwner("Posen", "slav", "Poland")
	SetProvinceOwner("Pomerelia", "slav", "Poland")
	SetProvinceOwner("Galicia", "slav", "Poland")
	SetProvinceOwner("Mazovia", "slav", "Poland")
	SetProvinceOwner("West Galicia", "slav", "Poland")
	SetProvinceOwner("Russia", "slav", "Muscovy")
	SetProvinceOwner("Ukraine", "slav", "Poland")
	SetProvinceOwner("White Russia", "slav", "Poland")
	
	SetProvinceOwner("Moldavia", "latin", "Moldavia")
	SetProvinceOwner("Bukowina", "latin", "Moldavia")
	SetProvinceOwner("Bessarabia", "latin", "Moldavia")
	SetProvinceOwner("Wallachia", "latin", "Wallachia")
	SetProvinceOwner("Dobruja", "teuton", "Turkey")
end

if (GrandStrategyYear >= 1561) then
	GrandStrategyEvents.TheConfirmationOfSeignorialPrivilegesLivoniaEstonia = nil -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 18.
	
	SetProvinceOwner("Estonia", "norse", "Sweden") -- Estonia acquired by Sweden in 1561; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119, 120.
end

if (GrandStrategyYear >= 1586) then -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 14.
	GrandStrategyEvents.Britannia = nil
end

if (GrandStrategyYear >= 1616) then -- The Peasants' and Shepherds' Ordinance passed in Eastern Pomerania in 1616 (it would later be extended to Western Pomerania in 1645); Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 30.
	GrandStrategyEvents.ThePeasantsAndShepherdsOrdinance = nil
end

if (GrandStrategyYear >= 1618) then -- Brandenburg acquired the Duchy of Prussia in 1618, although it remained under Polish suzerainty until 1657-1660; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123; Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 6.
	SetProvinceOwner("Prussia", "teuton", "Brandenburg")
end

if (GrandStrategyYear >= 1629) then
	SetProvinceOwner("Latvia", "norse", "Sweden") -- Sweden acquired Livonia in 1629; Source: William R. Shepherd, "Historical Atlas", 1911, p. 120.
end

if (GrandStrategyYear >= 1635) then -- Saxony acquired Upper Lusatia in 1635; Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 6.
	SetProvinceOwner("Upper Lusatia", "teuton", "Saxony")
end

if (GrandStrategyYear >= 1648) then
	-- Political situation in Central Europe in 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	SetProvinceOwner("Holland", "teuton", "Netherlands")
	SetProvinceOwner("Overijssel", "teuton", "Netherlands")
	SetProvinceOwner("Friesland", "teuton", "Netherlands")
	SetProvinceOwner("Drenthe", "teuton", "Netherlands")
	SetProvinceOwner("Westphalia", "teuton", "Westphalia")
	SetProvinceOwner("Hesse", "teuton", "Hesse")
	SetProvinceOwner("Hither Pomerania", "norse", "Sweden")
	SetProvinceOwner("Bremen", "norse", "Sweden")
	
	 -- Farther Pomerania was acquired by Brandenburg in 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123; Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 6.
	SetProvinceOwner("Farther Pomerania", "teuton", "Brandenburg")
end

if (GrandStrategyYear >= 1649) then -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 17.
	GrandStrategyEvents.TheUlozhenieLawCode = nil
end

if (GrandStrategyYear >= 1667) then -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 12.
	GrandStrategyEvents.MartinTrampesFarm = nil
end

if (GrandStrategyYear >= 1692) then -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 37.
	GrandStrategyEvents.HansRutenbergsEviction = nil
end

if (GrandStrategyYear >= 1702) then -- Vornedskabet lifted in 1702; Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 20.
	GrandStrategyEvents.TheLiftingOfTheVornedskabet = nil
end

if (GrandStrategyYear >= 1716) then
	-- Bornholm visited by Peter the Great of Russia in 1716; Source: Norman Davies, "Vanished Kingdoms", 2012, p. 90.
end

if (GrandStrategyYear >= 1733) then -- Stavnsbandet established in 1733; Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 20.
	GrandStrategyEvents.Stavnsbandet = nil
end

if (GrandStrategyYear >= 1740) then -- Brandenburg acquired Silesia in 1740; Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 6.
	SetProvinceOwner("Silesia", "teuton", "Brandenburg")
end

if (GrandStrategyYear >= 1781) then -- The Serfdom Act for Bohemia and Moravia enacted in 1781 by Emperor Joseph II; Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 14.
	GrandStrategyEvents.TheSerfdomActForBohemiaAndMoravia = nil
end

if (GrandStrategyYear >= 1833) then -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 17.
	GrandStrategyEvents.PrinciplesOfGeology = nil
end

if (GrandStrategyYear >= 1859) then -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 17.
	GrandStrategyEvents.OnTheOriginOfSpecies = nil
end
if (GrandStrategyYear >= 1861) then -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 13.
	GrandStrategyEvents.TheAbolitionOfSerfdomRussia = nil
end

if (GrandStrategyYear >= 1863) then -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 17.
	GrandStrategyEvents.AntiquityOfMan = nil
end

if (GrandStrategyYear >= 1864) then
	GrandStrategyEvents.CelticAndAntediluvianAntiquities = nil -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 17.
	GrandStrategyEvents.MateriauxPourLHistoireDeLHomme = nil -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 18.
end

if (GrandStrategyYear >= 1865) then -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 18.
	GrandStrategyEvents.PrehistoricTimes = nil
	GrandStrategyEvents.ArchivFuerAnthropologie = nil
end
