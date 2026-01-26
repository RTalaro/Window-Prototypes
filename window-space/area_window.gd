extends Node

@onready var area_2d: Area2D = $Area2D
@onready var collision_shape_2d: CollisionShape2D = $Area2D/CollisionShape2D
@onready var window: Window = $Window

func _ready() -> void:
	collision_shape_2d.shape.set_size(window.size)
	area_2d.position = Vector2(window.position)
	area_2d.position += Vector2(window.size / 2)
	

func _on_area_2d_area_entered(area: Area2D) -> void:
	print("area entered")
	area.get_parent().window = window

	area.get_parent().position.x -= window.position.x
	area.get_parent().position.y = window.size.y
	area.get_parent().call_deferred("reparent", window)
