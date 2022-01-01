DefineUpgrade("upgrade-work-o-foolish-mortal", { -- a piece of gnomish poetry; Source: Franz Hartmann, "Among the Gnomes", 1895, p. 59.
	Name = "O Foolish Outsider", -- part of the text, here used as the title (in the original "O foolish mortal", but here we change it to "O foolish outsider" since in the Wyrmsun universe gnomes are not supernatural creatures)
	Work = "scroll",
	Quote = "\"O foolish outsider, by dull senses bound;\nWithin thyself the gnome must be found.\nKnow thou thyself, and by self-knowledge know\nThe lives above and in the world below.\""
	-- Full text: "\"O foolish outsider, by dull senses bound;\nWithin thyself the gnome must be found.\nKnow thou thyself, and by self-knowledge know\nThe lives above and in the world below.\nIn every sphere each being knows its own;\nTo gnomes only gnomes can be shown.\""
	-- Full original text: "\"O foolish mortal, by dull senses bound;\nWithin thyself the spirit must be found.\nKnow thou thyself, and by self-knowledge know\nThe lives above and in the world below.\nIn every sphere each being knows its own;\nTo spirits only spirits can be shown.\""
})

DefineUpgrade("upgrade-work-adalgas-longing", { -- a gnomish song, sang by Adalga; Source: Franz Hartmann, "Among the Gnomes", 1895, p. 76.
	Name = "Adalga's Longing", -- seems like a fitting title
	Work = "scroll",
	Quote = "\"O what is this secret longing,\nWelling up within my heart?\nUnknown powers, surging, thronging,\nRending solid rocks apart.\""
})

DefineModifier("upgrade-work-o-foolish-mortal",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-adalgas-longing",
	{"KnowledgeMagic", 1}
)

DefineDependency("upgrade-work-o-foolish-mortal",
	{"upgrade-gnomish-civilization"}
)

DefineDependency("upgrade-work-adalgas-longing",
	{"upgrade-gnomish-civilization"}
)
