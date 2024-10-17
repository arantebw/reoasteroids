extends CharacterBody2D

@export var SPEED := 500


func _ready() -> void:
	position = Vector2(0, SPEED)

func _process(delta: float) -> void:
	var direction = Input.get_vector("left", "right", "up", "down")
	position += direction * SPEED * delta
