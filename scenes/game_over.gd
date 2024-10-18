extends Control

var level_scene: PackedScene = load("res://scenes/level.tscn")

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("start_new_game"):
		get_tree().change_scene_to_packed(level_scene)
