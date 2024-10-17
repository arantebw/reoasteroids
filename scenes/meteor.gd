extends Area2D


func _ready() -> void:
	var rng := RandomNumberGenerator.new()
	
	# start position of new meteor
	var width = get_viewport().get_visible_rect().size[0]
	var random_x = rng.randi_range(0, width)
	var random_y = rng.randi_range(-150, -50)
	position = Vector2(random_x, random_y)


func _process(delta: float) -> void:
	# enable meteors to enter the viewport
	position += Vector2(0, 1.0) * 100 * delta


func _on_body_entered(body: Node2D) -> void:
	pass
