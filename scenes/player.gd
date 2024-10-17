extends CharacterBody2D

@export var SPEED := 500

signal bullet(pos)


func _ready() -> void:
	position = Vector2(540, 360)


func _process(delta: float) -> void:
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * SPEED
	move_and_slide()
	
	if Input.is_action_just_pressed("shoot"):
		bullet.emit(position)
