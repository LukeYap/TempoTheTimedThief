extends Node2D

@export var totalleveltime: float = 30

@onready var leveltimer: Timer = $Timer
@onready var timerlabel: Label = $Label

func _ready() -> void:
	position = Vector2(get_parent().size.x / 2, 30)
	leveltimer.start(totalleveltime)
	timerlabel.text = "%.1f" % leveltimer.time_left
	

func _process(_delta: float) -> void:
	timerlabel.text = "%.1f" % leveltimer.time_left
	

func _on_timer_timeout():
	print("Ran out of time :(")
