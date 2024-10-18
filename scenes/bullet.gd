extends Area2D

@export var SPEED := 500


func _ready() -> void:
	# bullet animation
	$Sprite2D.scale = Vector2(0, 0)
	var tween = create_tween()
	tween.tween_property($Sprite2D, 'scale', Vector2(1, 1), 0.15)


func _process(delta: float) -> void:
	position.y -= SPEED * delta
