extends Node2D

# Checks for current level.
var current_level: int = 0
# 0 = tutorial
# 1 = clock tower
# 2 = warp temple ruins
# 3 = hoonos galleria
# 100 = hub world
 
func _ready() -> void:
	if get_tree().current_scene.name == "hub_world":
		current_level = 100
	elif get_tree().current_scene.name == "tutorial-the_clock_tower":
		current_level = 0
	elif get_tree().current_scene.name == "level_1-warp_temple_ruins":
		current_level = 1
	elif get_tree().current_scene.name == "level_2-hoonos_galleria":
		current_level = 2
		
