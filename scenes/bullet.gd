extends Area2D

@export var SPEED := 500


func _process(delta: float) -> void:
	position.y -= SPEED * delta
