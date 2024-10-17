extends CharacterBody2D

@export var SPEED := 500


func _ready() -> void:
	position = Vector2(540, 360)

func _process(delta: float) -> void:
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * SPEED
	move_and_slide()
