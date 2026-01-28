extends CharacterBody2D


var window : Window

var speed : int = 300
var target_position : Vector2 = Vector2(1, 0)

func _physics_process(delta: float) -> void:
	velocity = target_position * speed
	var collision = move_and_collide(velocity * delta)
	
	if collision != null:
		target_position *= -1
