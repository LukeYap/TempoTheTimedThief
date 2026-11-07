extends Node2D

@export var totalleveltime: float = 30

@onready var leveltimer: Timer = $Timer
@onready var timerlabel: Label = $Label

func _ready() -> void:
	add_to_group("level_timer")
	
	# Initial amount of time differs based on level.
	match LevelManager.current_level:
		0:
			totalleveltime = 360
		1:
			totalleveltime = 360
		2:
			totalleveltime = 360
		
	
	leveltimer.start(totalleveltime)
	timerlabel.text = "%.1f" % leveltimer.time_left
	

func _process(_delta: float) -> void:
	timerlabel.text = "%.1f" % leveltimer.time_left
	

func _on_timer_timeout():
	var player = get_tree().get_first_node_in_group("player")
	if is_instance_valid(player):
		player.die()
	print("Ran out of time :(")
