extends CharacterBody2D

@export var SPEED := 500
var can_shoot := true

signal bullet(pos)


func _ready() -> void:
	position = Vector2(540, 360)


func _process(_delta: float) -> void:
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * SPEED
	move_and_slide()
	
	if Input.is_action_just_pressed("shoot") and can_shoot:
		bullet.emit($BulletStarPosition.global_position)
		$BulletShootSound.play()
		can_shoot = false
		$CanShootTimer.start()


func _on_can_shoot_timer_timeout() -> void:
	can_shoot = true
