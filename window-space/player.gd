extends CharacterBody2D

var window : Window

func _ready() -> void:
	window = get_window()

func _physics_process(delta: float) -> void:
	get_input()
	move_and_slide() # If using move_and_slide, collisions will be with static bodies
	#move_and_collide(velocity * delta) # If using move_and_collide, it just collides idk man
	
	if !"_Camera" in window:
		
		if (position.x + 64 < 0):
			print("off screen on the left")
		if (position.x - 64 > window.size.x):
			print("off screen on the right")
		if (position.y + 64 < 0):
			position.x = get_window().position.x + position.x
			position.y = get_window().position.y
			reparent(get_tree().root.get_child(0))
		if (position.y - 64 > window.size.y):
			position.x = window.position.x + position.x
			position.y = window.position.y + window.size.y + 128
			reparent(get_tree().root.get_child(0))
			window = get_window()

	#position.x = clamp(position.x, 0, window.size.x)
	#position.y = clamp(position.y, 0, window.size.y)
	
func get_input() -> void:
	var input_direction = Input.get_vector("Left", "Right", "Up", "Down")
	velocity = input_direction * 500
	print(velocity)
