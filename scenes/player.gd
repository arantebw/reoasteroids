extends Node2D


func _ready() -> void:
	position = Vector2(0, 500)


func _process(delta: float) -> void:
	position += Vector2(1, 0) * 1
