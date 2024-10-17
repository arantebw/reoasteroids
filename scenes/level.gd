extends Node2D

# load the meteor scene
var meteor_scene: PackedScene = load("res://scenes/meteor.tscn")

func _on_meteor_timer_timeout() -> void:
	# create an instance of the meteor scene
	var meteor = meteor_scene.instantiate()

	# attach it to the scene tree
	$Meteors.add_child(meteor)
