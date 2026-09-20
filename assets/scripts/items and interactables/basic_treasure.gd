extends CharacterBody2D
class_name BasicTreasure

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var chestspawn: bool = false
@onready var spawning: bool

# Gravity.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

# Function that sets the rarity of the treasure and changes
# the appearance of the treasure accordingly.
func set_rarity(rarity: int) -> void:
	if rarity == 1:
		$AnimatedSprite2D.frame = 0
	elif rarity == 5:
		$AnimatedSprite2D.frame = 1
	elif rarity == 10:
		$AnimatedSprite2D.frame = 2
	elif rarity == 20:
		$AnimatedSprite2D.frame = 3
	elif rarity == 50:
		$AnimatedSprite2D.frame = 4
	elif rarity == 100:
		$AnimatedSprite2D.frame = 5
		

func _ready() -> void:
	spawning = true

# Some treasure will be placed floating around the level and shouldn't be
# affected by gravity.
# This makes the distinction between chest-spawned treasure
# and floating treasure.
func _physics_process(delta: float) -> void:
	#if not is_on_floor() and spawning == true:
		#velocity.y = -5
		#velocity.x = randf_range(-15, 15)
		#spawning = false
	#if not is_on_floor() and spawning == false:
		#velocity.y += gravity / 400
	move_and_slide()

func _on_collisions_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		# INCREASE TREASURE CURRENCY COUNT HERE!
		if $AnimatedSprite2D.frame == 0:
			print("+1 treasure")
		elif $AnimatedSprite2D.frame == 1:
			print("+5 treasure")
		elif $AnimatedSprite2D.frame == 2:
			print("+10 treasure")
		elif $AnimatedSprite2D.frame == 3:
			print("+20 treasure")
		elif $AnimatedSprite2D.frame == 4:
			print("+50 treasure")
		elif $AnimatedSprite2D.frame == 5:
			print("+100 treasure")
		queue_free()
