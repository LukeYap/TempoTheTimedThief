extends Node2D

#================TREASURE================
# Permanent treasure count.
var held_treasure: int = 0		
# Holds a temporary amount of treasure that is accrued
# per level. If the player completes the level, this value is added
# to held_treasure.
var temp_treasure: int = 0		
var max_treasure: int = 99999
#================KEYS================
var temp_keys: int = 0
var max_keys: int = 100
#================ARTIFACTS================
# Upon collecting an artifact in a certain level, set its item to True.
var artifacts = {
	# Level 0/Tutorial
	"Lvl 0 Artifact 1": false,
	"Lvl 0 Artifact 2": false,
	"Lvl 0 Artifact 3": false,
	# Level 1/Warp Temple Ruins
	"Lvl 1 Artifact 1": false,
	"Lvl 1 Artifact 2": false,
	"Lvl 1 Artifact 3": false,
	"Lvl 1 Artifact 4": false,
	"Lvl 1 Artifact 5": false,
	# Level 2/Hoonos Galleria
	"Lvl 2 Artifact 1": false,
	"Lvl 2 Artifact 2": false,
	"Lvl 2 Artifact 3": false,
	"Lvl 2 Artifact 4": false,
	"Lvl 2 Artifact 5": false
}
