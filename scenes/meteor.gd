extends Area2D

var speed: int
var rotation_speed: int
var direction_x: float

signal collision


func _ready() -> void:
	var rng := RandomNumberGenerator.new()
	
	# start position of new meteor
	var width = get_viewport().get_visible_rect().size[0]
	var random_x = rng.randi_range(0, width)
	var random_y = rng.randi_range(-150, -50)
	position = Vector2(random_x, random_y)
	
	speed = rng.randi_range(50, 200)
	direction_x = rng.randf_range(-1, 1)
	rotation_speed = rng.randi_range(40, 100)
	
	var path: String = "res://sprites/asteroids/" + str(rng.randi_range(1, 9)) + ".png"
	$MeteorImage.texture = load(path)


func _process(delta: float) -> void:
	# enable meteors to enter the viewport
	position += Vector2(direction_x, 1.0) * speed * delta
	rotation_degrees += rotation_speed * delta


func _on_body_entered(_body: Node2D) -> void:
	collision.emit()


func _on_area_entered(area: Area2D) -> void:
	# collision between the bullet and a meteor
	area.queue_free()
	queue_free()
