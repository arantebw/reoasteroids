extends Node2D

# load the scenes
var meteor_scene: PackedScene = load("res://scenes/meteor.tscn")
var bullet_scene: PackedScene = load("res://scenes/bullet.tscn")


func _on_meteor_timer_timeout() -> void:
	# create an instance of the meteor scene
	var meteor = meteor_scene.instantiate()
	# attach it to the scene tree
	$Meteors.add_child(meteor)
	
	meteor.connect('collision', on_meteor_collision)


func _on_player_bullet(pos) -> void:
	# create an instance of the bullet scene
	var bullet = bullet_scene.instantiate()
	# attach it to the scene tree
	$Bullets.add_child(bullet)
	bullet.position = pos
	

func on_meteor_collision():
	print('ship and meteor collided')
