extends Node2D

# For prototyping bullets

const BULLET = preload("res://bullet.tscn")

func _input(event: InputEvent) -> void:
	if event is InputEventMouse:
		if event.is_action_pressed("Left Click"):
			var bullet = BULLET.instantiate()
			bullet.position = Vector2(0, 0)
			bullet.target_position = (get_global_mouse_position()).normalized()
			add_child(bullet)
