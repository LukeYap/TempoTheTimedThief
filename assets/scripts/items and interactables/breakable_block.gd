extends Node2D
class_name BreakableBlock

# Reference to the AnimationPlayer child node.
@onready var animation_player: AnimationPlayer = $AnimationPlayer

# Explosion effect for when a block is destroyed.
var fx_bb = preload("res://assets/scenes/miscellaneous/effects/fx_breakable_block.tscn")


# Upon being attacked by the player,
# the block enters its broken animation for 0.5 seconds
# and then disappears later.
func _on_check_for_attack_hitbox_area_entered(area: Area2D) -> void:
	if (
		area.name == "Attack"
		or area.name == "DiveKick"
		#or area.name == "Head"
		):
		# Player bounces off of block.
		if area.name == "DiveKick":
			area.get_parent().dive_bounce()
			
		# Spawn break explosion effect.
		var boom = fx_bb.instantiate()
		boom.global_position = position	
		get_parent().call_deferred("add_child", boom)
		boom.play()
		
		# Play sound.
		AudioManager.play_break_block()
		
		# Destroy block.
		queue_free()
