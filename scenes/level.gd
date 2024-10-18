extends Node2D

# load the scenes
var meteor_scene: PackedScene = load("res://scenes/meteor.tscn")
var bullet_scene: PackedScene = load("res://scenes/bullet.tscn")

var health: int = 3


func _on_meteor_timer_timeout() -> void:
	# create an instance of the meteor scene
	var meteor = meteor_scene.instantiate()
	# attach it to the scene tree
	$Meteors.add_child(meteor)
	
	meteor.connect('collision', _on_meteor_collision)


func _on_player_bullet(pos) -> void:
	# create an instance of the bullet scene
	var bullet = bullet_scene.instantiate()
	# attach it to the scene tree
	$Bullets.add_child(bullet)
	bullet.position = pos


func _on_meteor_collision():
	health -= 1
	get_tree().call_group('ui', 'set_health', health)
	if health <= 0:
		print('you just died')
