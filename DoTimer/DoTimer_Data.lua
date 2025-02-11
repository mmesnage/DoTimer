--The master behind all spells.  To add a custom spell:
--first you need to discover its texture, and add it in the format below.  if it is for another class, you may need to make a table for that class.
--the "name" entry is the english name
-- the "duration" entry is the duration, in either seconds or minutes, whichever applicable.  note that the way that the addon parses duration is it chooses the number closest to this one.  choose it wisely
-- the "multiplier" entry is 1 for seconds, or 60 for minutes
-- then you have to add it to a table in the DefineSpells function, so the addon knows how to track it.  debuff/pet/heal/enslave
-- right now the abbreviations mean nothing; they might in a future patch

DoTimer_SpellData = { --a list of textures (same in all locales!) and the english name equivilents.  used to free the chore of localizing the spell names.  also provides the average duration and the second/minute multiplier
	["WARLOCK"] = {
		["Interface\\Icons\\Spell_Shadow_CurseOfTounges"] = {
			["name"] = "Curse of Tongues",
			["duration"] = 30,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Shadow_AbominationExplosion"] = {
			["name"] = "Corruption",
			["duration"] = 12,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Fire_Immolation"] = {
			["name"] = "Immolate",
			["duration"] = 15,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Shadow_SummonInfernal"] = {
			["name"] = "Inferno",
			["duration"] = 5,
			["multiplier"] = 60,
		},
		["Interface\\Icons\\Spell_Shadow_DeathCoil"] = {
			["name"] = "Death Coil",
			["duration"] = 3,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Shadow_AuraOfDarkness"] = {
			["name"] = "Curse of Doom",
			["duration"] = 1,
			["multiplier"] = 60,
		},
		["Interface\\Icons\\Spell_Shadow_EnslaveDemon"] = {
			["name"] = "Enslave Demon",
			["duration"] = 5,
			["multiplier"] = 60,
		},
		["Interface\\Icons\\Spell_Shadow_MindSteal"] = {
			["name"] = "Seduction",
			["duration"] = 15,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Shadow_CurseOfSargeras"] = {
			["name"] = "Curse of Agony",
			["duration"] = 24,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Shadow_CurseOfMannoroth"] = {
			["name"] = "Curse of Weakness",
			["duration"] = 2,
			["multiplier"] = 60,
		},
		["Interface\\Icons\\Spell_Shadow_UnholyStrength"] = {
			["name"] = "Curse of Recklessness",
			["duration"] = 2,
			["multiplier"] = 60,
		},
		["Interface\\Icons\\Spell_Shadow_CurseOfAchimonde"] = {
			["name"] = "Curse of Shadow",
			["duration"] = 5,
			["multiplier"] = 60,
		},
		["Interface\\Icons\\Spell_Shadow_Cripple"] = {
			["name"] = "Banish",
			["duration"] = 20,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Shadow_ChillTouch"] = {
			["name"] = "Curse of the Elements",
			["duration"] = 5,
			["multiplier"] = 60,
		},
		["Interface\\Icons\\Spell_Shadow_MindRot"] = {
			["name"] = "Spell Lock",
			["duration"] = 8,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Shadow_Possession"] = {
			["name"] = "Fear",
			["duration"] = 15,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Shadow_DeathScream"] = {
			["name"] = "Howl of Terror",
			["duration"] = 16,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Fire_Fireball"] = {
			["name"] = "Conflagrate", 
		},
		["Interface\\Icons\\Spell_Shadow_Requiem"] = {
			["name"] = "Siphon Life",
			["duration"] = 30,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Shadow_GrimWard"] = {
			["name"] = "Curse of Exhaustion",
			["duration"] = 12,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Shadow_BurningSpirit"] = {
			["name"] = "Life Tap",
		},
	},
	["PRIEST"] = {
		["Interface\\Icons\\Spell_Nature_Slow"] = {
			["name"] = "Shackle Undead", 
			["duration"] = 30,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Holy_MindSooth"] = {
			["name"] = "Mind Soothe",  
			["duration"] = 15,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Nature_NullifyDisease"] = {
			["name"] = "Abolish Disease",  
			["duration"] = 20,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Shadow_ShadowWordPain"] = {
			["name"] = "Shadow Word: Pain",  
			["duration"] = 18,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Shadow_PsychicScream"] = {
			["name"] = "Psychic Scream",  
			["duration"] = 8,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Shadow_BlackPlague"] = {
			["name"] = "Devouring Plague",  
			["duration"] = 24,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Holy_Renew"] = {
			["name"] = "Renew", 	 
			["duration"] = 15,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Holy_PowerWordShield"] = {
			["name"] = "Power Word: Shield",  
			["duration"] = 15,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Shadow_FingerOfDeath"] = {
			["name"] = "Hex of Weakness", 
			["duration"] = 2,
			["multiplier"] = 60,
		},
		["Interface\\Icons\\Spell_Shadow_UnsummonBuilding"] = {
			["name"] = "Vampiric Embrace", 
			["duration"] = 1,
			["multiplier"] = 60,
		},
		["Interface\\Icons\\Spell_Holy_PowerInfusion"] = {
			["name"] = "Power Infusion",
			["duration"] = 15,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Holy_SearingLight"] = {
			["name"] = "Holy Fire",  
			["duration"] = 10,
			["multiplier"] = 1,
		},		
	},
	["DRUID"] = {
		["Interface\\Icons\\Ability_GhoulFrenzy"] = {
			["name"] = "Rip",  
			["duration"] = 12,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Nature_FaerieFire"] = {
			["name"] = "Faerie Fire",  
			["duration"] = 40,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Nature_Rejuvenation"] = {
			["name"] = "Rejuvenation",  
			["duration"] = 12,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Nature_StrangleVines"] = {
			["name"] = "Entangling Roots",  
			["duration"] = 12,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Nature_NullifyPoison_02"] = {
			["name"] = "Abolish Poison",  
			["duration"] = 8,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Ability_Druid_Disembowel"] = {
			["name"] = "Rake",  
			["duration"] = 9,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Nature_Sleep"] = {
			["name"] = "Hibernate",  
			["duration"] = 20,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Nature_ResistNature"] = {
			["name"] = "Regrowth",  
			["duration"] = 21,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Ability_Hunter_BeastSoothe"] = {
			["name"] = "Soothe Animal",  
			["duration"] = 15,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Nature_InsectSwarm"] = {
			["name"] = "Insect Swarm", 
			["duration"] = 12,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Nature_StarFall"] = {
			["name"] = "Moonfire",
			["duration"] = 12,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Nature_Lightning"] = {
			["name"] = "Innervate",
			["duration"] = 20,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Ability_Hunter_Pet_Bear"] = {
			["name"] = "Feral Charge",
			["duration"] = 4,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Ability_Druid_ChallangingRoar"] = {
			["name"] = "Challenging Roar",
			["duration"] = 6,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Ability_Physical_Taunt"] = {
			["name"] = "Growl",
			["duration"] = 6,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Ability_Druid_Bash"] = {
			["name"] = "Bash",
			["duration"] = 3,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Ability_Druid_DemoralizingRoar"] = {
			["name"] = "Demoralizing Roar",
			["duration"] = 30,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Ability_Druid_SupriseAttack"] = {
			["name"] = "Pounce",
			["duration"] = 2,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\INV_Relics_IdolofRejuvenation"] = {
			["name"] = "Swiftmend",
		},
	},
	["HUNTER"] = {
		["Interface\\Icons\\Ability_Hunter_CriticalShot"] = {
			["name"] = "Scorpid Sting", 
			["duration"] = 20,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Ability_Hunter_Quickshot"] = {
			["name"] = "Serpent Sting", 
			["duration"] = 15,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\INV_Spear_02"] = {
			["name"] = "Wyvern Sting", 
			["duration"] = 12,
			["multiplier"] = 2, --because it is a 12 second sleep and a 12 second DoT
		},
		["Interface\\Icons\\Ability_Rogue_Trip"] = {
			["name"] = "Wing Clip", 
			["duration"] = 10,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Ability_Hunter_AimedShot"] = {
			["name"] = "Viper Sting", 
			["duration"] = 8,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Ability_Druid_Cower"] = {
			["name"] = "Scare Beast",
			["duration"] = 10,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Frost_Stun"] = {
			["name"] = "Concussive Shot",
			["duration"] = 4,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Ability_Warrior_Challange"] = {
			["name"] = "Counterattack",
			["duration"] = 5,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Ability_Hunter_SniperShot"] = {
			["name"] = "Hunter's Mark",
			["duration"] = 2,
			["multiplier"] = 60,
		},
	},
	["MAGE"] = {
		["Interface\\Icons\\Spell_Nature_Polymorph"] = {
			["name"] = "Polymorph",
			["duration"] = 50,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Spell_Magic_PolymorphPig"] = {
			["name"] = "Polymorph: Pig",
			["duration"] = 50,
			["multiplier"] = 1,
		},
		["Interface\\Icons\\Ability_Hunter_Pet_Turtle"] = {
			["name"] = "Polymorph: Turtle",
			["duration"] = 50,
			["multiplier"] = 1,
		},
	},
}

function DoTimer_DefineSpells(class) --creates the lists of spells to watch for for each class.  also defines their aliases for when i implement them.  DO NOT make the names not english!! i look for english names.  only mess with the abbreviations
	local spells,petspells,healspells,enslavespells = {},{},{},{}
	if class == "WARLOCK" then
		spells = {
			["Curse of Agony"] = 1,
			["Curse of Exhaustion"] = 1,
			["Curse of Recklessness"] = 1,
			["Curse of the Elements"] = 1,
			["Curse of Shadow"] = 1,
			["Curse of Weakness"] = 1,
			["Curse of Tongues"] = 1,
			["Corruption"] = 1,
			["Banish"] = 1,
			["Immolate"] = 1,
			["Siphon Life"] = 1,
			["Curse of Doom"] = 1,
			["Fear"] = 1,
			["Howl of Terror"] = 1,
			["Death Coil"] = 1,
		}
		petspells = {
			["Seduction"] = 1,
			["Spell Lock"] = 1,
		}
		enslavespells = {
			["Inferno"] = 1,
			["Enslave Demon"] = 1,
		}
	elseif class == "DRUID" then
		spells = {
			["Entangling Roots"] = 1,
			["Faerie Fire"] = 1,
			["Hibernate"] = 1,
			["Insect Swarm"] = 1,
			["Rake"] = 1,
			["Rip"] = 1,
			["Soothe Animal"] = 1,
			["Moonfire"] = 1,
			["Bash"] = 1,
			["Pounce"] = 1,
			["Demoralizing Roar"] = 1,
			["Challenging Roar"] = 1,
			["Growl"] = 1,
			["Feral Charge"] = 1,
		}
		healspells = {
			["Abolish Poison"] = 1,
			["Regrowth"] = 1,
			["Rejuvenation"] = 1,
			["Innervate"] = 1,
		}
	elseif class == "PRIEST" then
		spells = {
			["Devouring Plague"] = 1,
			["Hex of Weakness"] = 1,
			["Mind Soothe"] = 1,
			["Psychic Scream"] = 1,
			["Shackle Undead"] = 1,
			["Shadow Word: Pain"] = 1,
			["Vampiric Embrace"] = 1,
			["Holy Fire"] = 1,
		}
		healspells = {
			["Abolish Disease"] = 1,
			["Power Word: Shield"] = 1,
			["Renew"] = 1,
			["Power Infusion"] = 1,
		}
	elseif class == "HUNTER" then
		spells = {
			["Scorpid Sting"] = 1,
			["Serpent Sting"] = 1,
			["Viper Sting"] = 1,
			["Wing Clip"] = 1,
			["Wyvern Sting"] = 1,
			["Scare Beast"] = 1,
			["Concussive Shot"] = 1,
			["Counterattack"] = 1,
			["Hunter's Mark"] = 1,
		}
	elseif class == "MAGE" then
		spells = {
			["Polymorph"] = 1,
			["Polymorph: Pig"] = 1,
			["Polymorph: Turtle"] = 1,
		}
	end
	return spells,petspells,healspells,enslavespells
end
