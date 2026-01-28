extends Node

@onready var window : Window = $Window
@onready var rigid_body_2d : RigidBody2D = $RigidBody2D
@onready var collision_shape_2d: CollisionShape2D = $RigidBody2D/CollisionShape2D

func _ready() -> void:
	collision_shape_2d.shape.set_size(window.size)
	rigid_body_2d.position = Vector2(window.position) # Might be better to just move collision shape instead of parent?
	rigid_body_2d.position += Vector2(window.size / 2) # Wonky offset
	
func _physics_process(delta: float) -> void:
	window.position = rigid_body_2d.position - Vector2(window.size / 2)
