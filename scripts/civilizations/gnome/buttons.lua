------------------------------------------------------------------------------
--	Define", "unit-button.
--
--	DefineButton( { Pos = n, Level = n 'icon ident Action = name ['value value]
--		['allowed check ['values]] Key = key, Hint = hint 'for-unit", "units)
--

-- Special Abilities ---------------------------------------------------

DefineButton( { Pos = 4, Icon = "icon-herbal-cure",
	Action = "cast-spell", Value = "spell-herbal-cure",
	Key = "h", Hint = "~!Herbal Cure (per 1 HP)", Popup = "popup_commands",
	ForUnit = {"unit-gnomish-herbalist", "unit-deep-gnomish-herbalist"}
})

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-portent",
	Action = "learn-ability", Value = "upgrade-portent",
	Key = "p", Hint = "Learn ~!Portent", Popup = "popup_learn_ability",
	ForUnit = {"unit-gnomish-herbalist", "unit-deep-gnomish-herbalist"}
})

DefineButton( { Pos = 5, Icon = "icon-portent",
	Action = "cast-spell", Value = "spell-portent",
	Key = "p", Hint = "~!Portent", Popup = "popup_commands",
	ForUnit = {"unit-gnomish-herbalist", "unit-deep-gnomish-herbalist"}
})

-- Units ---------------------------------------------------------

DefineButton( { Pos = 1,
	Action = "train-unit", Value = "unit-gnomish-caravan",
	Key = "c", Hint = "Build ~!Caravan", Popup = "popup_unit",
	ForUnit = {"unit-dwarven-market"}
})

-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-gnomish-duelist",
	Action = "experience_upgrade_to", Value = "unit-gnomish-duelist",
	Key = "u", Hint = "~!Upgrade to Duelist", Popup = "popup_unit",
	ForUnit = {"unit-gnomish-recruit"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-gnomish-master-at-arms",
	Action = "experience_upgrade_to", Value = "unit-gnomish-master-at-arms",
	Key = "u", Hint = "~!Upgrade to Master at Arms", Popup = "popup_unit",
	ForUnit = {"unit-gnomish-duelist"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-gnomish-duelist",
	Action = "experience_upgrade_to", Value = "unit-deep-gnomish-duelist",
	Key = "u", Hint = "~!Upgrade to Duelist", Popup = "popup_unit",
	ForUnit = {"unit-deep-gnomish-recruit"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-gnomish-master-at-arms",
	Action = "experience_upgrade_to", Value = "unit-deep-gnomish-master-at-arms",
	Key = "u", Hint = "~!Upgrade to Master at Arms", Popup = "popup_unit",
	ForUnit = {"unit-deep-gnomish-duelist"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "derro_executioner",
	Action = "experience_upgrade_to", Value = "unit-derro-executioner",
	Key = "u", Hint = "~!Upgrade to Executioner", Popup = "popup_unit",
	ForUnit = {"unit-derro-thug"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "derro_shadowguard",
	Action = "experience_upgrade_to", Value = "unit-derro-shadowguard",
	Key = "u", Hint = "~!Upgrade to Shadowguard", Popup = "popup_unit",
	ForUnit = {"unit-derro-executioner"}
} )
