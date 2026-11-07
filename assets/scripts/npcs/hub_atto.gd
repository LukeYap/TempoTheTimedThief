class_name AttoHub
extends CharacterBody2D

@onready var animator: AnimatedSprite2D = $AnimatedSprite2D
@onready var timetable: Node2D = $TimeTable

signal atto_size_calculated(size: Vector2)

func _ready() -> void:
	var curr_sprite = animator.sprite_frames.get_frame_texture(animator.animation, animator.frame)
	atto_size_calculated.emit(curr_sprite.get_size())
	
