extends Area2D

# Reference to the AnimationPlayer child node.
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var sparkles: AnimatedSprite2D = $Sparkles

func _on_area_entered(area: Area2D) -> void:
	animation_player.play("Open")
	sparkles.visible = false
