extends CharacterBody2D
class_name Artifact

@export var artifact_tag: String

# Upon the player colliding with the key, increase the player's
# in-level key count accordingly, then remove the key.
func _on_pick_up_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		AudioManager.play_key_pickup()
		GameManager.artifacts[artifact_tag] = true
		queue_free()
