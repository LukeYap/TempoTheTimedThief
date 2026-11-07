extends Control

@onready var treasure_label: Label = $Treasure/TreasureLabel
@onready var keys_label: Label = $Keys/KeysLabel

func _ready() -> void:
	if LevelManager.current_level == 100:
		$Artifacts.visible = false
	else:
		$Artifacts.visible = true
	
	# Level 0 / Tutorial Level: Change HUD appearance
	# based on whether or not the artifact was already collected.
	if LevelManager.current_level == 0:
		$Artifacts/A4.visible = false
		$Artifacts/A5.visible = false
		$Artifacts/A6.visible = false
		$Artifacts/A7.visible = false
		$Artifacts/A8.visible = false
		
		if GameManager.artifacts["Lvl 0 Artifact 1"] == false:
			$Artifacts/A1.self_modulate.a = 0.5
			$Artifacts/A1.self_modulate = Color(0.0, 0.0, 0.0, 1.0)
		if GameManager.artifacts["Lvl 0 Artifact 2"] == false:
			$Artifacts/A2.self_modulate.a = 0.5
			$Artifacts/A2.self_modulate = Color(0.0, 0.0, 0.0, 1.0)
		if GameManager.artifacts["Lvl 0 Artifact 3"] == false:
			$Artifacts/A3.self_modulate.a = 0.5
			$Artifacts/A3.self_modulate = Color(0.0, 0.0, 0.0, 1.0)
			

func _process(delta: float) -> void:
	treasure_label.text = str(GameManager.temp_treasure)
	keys_label.text = str(GameManager.temp_keys)
	
	# Level 0 / Tutorial Level: Change HUD appearance on collection.
	if LevelManager.current_level == 0:
		if GameManager.artifacts["Lvl 0 Artifact 1"] == true:
			$Artifacts/A1.self_modulate.a = 1
			$Artifacts/A1.self_modulate = Color(1.0, 1.0, 1.0, 1.0)
		if GameManager.artifacts["Lvl 0 Artifact 2"] == true:
			$Artifacts/A2.self_modulate.a = 1
			$Artifacts/A2.self_modulate = Color(1.0, 1.0, 1.0, 1.0)
		if GameManager.artifacts["Lvl 0 Artifact 3"] == true:
			$Artifacts/A3.self_modulate.a = 1
			$Artifacts/A3.self_modulate = Color(1.0, 1.0, 1.0, 1.0)
		
