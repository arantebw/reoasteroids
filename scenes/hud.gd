extends CanvasLayer

static var image = load("res://sprites/ships/ship-a/ship-a1.png")

var time_elapsed := 0


func _ready() -> void:
	$Score/Label.text = str(0)


func set_health(amt):
	for child in $Lives/HBoxContainer.get_children():
		child.queue_free()
	for i in amt:
		var text_rect = TextureRect.new()
		text_rect.texture = image
		$Lives/HBoxContainer.add_child(text_rect)


func _on_score_timer_timeout() -> void:
	time_elapsed += 1
	$Score/Label.text = str(time_elapsed)
	Global.score = time_elapsed
