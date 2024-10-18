extends CanvasLayer

static var image = load("res://sprites/ships/ship-a/ship-a1.png")


func set_health(amt):
	for child in $Lives/HBoxContainer.get_children():
		child.queue_free()
	for i in amt:
		var text_rect = TextureRect.new()
		text_rect.texture = image
		$Lives/HBoxContainer.add_child(text_rect)
