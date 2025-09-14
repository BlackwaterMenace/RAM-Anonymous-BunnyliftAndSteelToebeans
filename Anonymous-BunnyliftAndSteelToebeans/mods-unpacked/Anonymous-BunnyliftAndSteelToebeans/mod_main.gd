extends Node

# ? Adds a Bunnygirl outfit for Deadlift and a cat outfit for Steeltoe

const MOD_DIR := "Anonymous-BunnyliftAndSteelToebeans"
const LOG_NAME := "Anonymous-BunnyliftAndSteelToebeans:Main"

var mod_dir_path := ""
var extensions_dir_path := ""
var translations_dir_path := ""


func _init() -> void:
	ModLoaderLog.info("Init", LOG_NAME)
	mod_dir_path = ModLoaderMod.get_unpacked_dir().path_join(MOD_DIR)

func _ready() -> void:
	ModLoaderLog.info("Ready", LOG_NAME)
	add_skins()

func add_skins():
	var VRAM_SM = Engine.get_singleton("VRAM_SkinsManager")
	
	VRAM_SM.register_skin(
		Enemy.EnemyType.CHAIN,
		"Anonymous_BunnyliftAndSteelToebeans_Bunny",
		"Bunnylift",
		"God is dead.",
		"(No unlock requirement.)",
		"res://mods-unpacked/Anonymous-BunnyliftAndSteelToebeans/Art/Characters/ChainbotRAM/Anonymous_BunnyliftAndSteelToebeans_Bunny_Icon.png",
		Color.html("1a0b40"), #35196b
		"res://mods-unpacked/Anonymous-BunnyliftAndSteelToebeans/Art/Characters/ChainbotRAM/Anonymous_BunnyliftAndSteelToebeans_Bunny_Skin.png",
		"res://mods-unpacked/Anonymous-BunnyliftAndSteelToebeans/Art/Characters/ChainbotRAM/Anonymous_BunnyliftAndSteelToebeans_Bunny_Arm.png",
	)
	ModLoaderLog.info("Added Bunnylift!", LOG_NAME)
	
	VRAM_SM.register_skin(
		Enemy.EnemyType.SHOTGUN,
		"Anonymous_BunnyliftAndSteelToebeans_Cat",
		"SteelToebeans",
		"Optimized for sleeping 18 hours a day.",
		"(No unlock requirement.)",
		"res://mods-unpacked/Anonymous-BunnyliftAndSteelToebeans/Art/Characters/ShotgunnerRAM/Anonymous_BunnyliftAndSteelToebeans_Cat_Icon.png",
		Color.html("564b60"),
		"res://mods-unpacked/Anonymous-BunnyliftAndSteelToebeans/Art/Characters/ShotgunnerRAM/Anonymous_BunnyliftAndSteelToebeans_Cat_Skin.png",
	)
	ModLoaderLog.info("Added SteelToebeans!", LOG_NAME)
