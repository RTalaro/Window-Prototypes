extends Window

@onready var top: CollisionShape2D = $Area2D/Top
@onready var down: CollisionShape2D = $Area2D/Down
@onready var left: CollisionShape2D = $Area2D/Left
@onready var right: CollisionShape2D = $Area2D/Right


func _on_size_changed() -> void:
	if (top):
		top.shape.set_b(Vector2i(size.x, 0))
	if (down):
		down.shape.set_a(Vector2i(0, size.y))
		down.shape.set_b(Vector2i(size.x, size.y))
	if (left):
		left.shape.set_b(Vector2i(0, size.y))
	if (right):
		right.shape.set_a(Vector2i(size.x, 0))
		right.shape.set_b(Vector2i(size.x, size.y))
