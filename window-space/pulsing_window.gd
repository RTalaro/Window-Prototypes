extends Window

func _ready() -> void:
	var tween = create_tween().set_loops()
	tween.tween_property(self, "size", Vector2i(200, 200), 0.5).set_trans(Tween.TRANS_BOUNCE)
	tween.tween_property(self, "size", Vector2i(100, 100), 0.5).set_trans(Tween.TRANS_BOUNCE)
