extends Window

# This script makes it so windows are always draggable

var mouse_offset : Vector2
var dragged : bool

func _physics_process(delta: float) -> void:
	if dragged:
		position = Vector2i(get_window().get_mouse_position() - mouse_offset) + position

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.is_action_pressed("Left Click"):
			print("mouse down")
			mouse_offset = event.position
			dragged = true
		if event.is_action_released("Left Click"):
			print("mouse up")
			dragged = false
			
			
		#print(event.position)
		#print(Vector2i(event.global_position) + position) # Get actual global position
