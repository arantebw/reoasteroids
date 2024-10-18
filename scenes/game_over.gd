extends Control

var level_scene: PackedScene = load("res://scenes/level.tscn")


func _ready() -> void:
	$CenterContainer/VBoxContainer/ScoreLabel.text = $CenterContainer/VBoxContainer/ScoreLabel.text + str(Global.score)


func _input(event):
	if event.is_action_pressed("start_new_game"):
		get_tree().change_scene_to_packed(level_scene)
