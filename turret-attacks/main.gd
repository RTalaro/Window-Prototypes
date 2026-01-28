extends Control

func _ready():
	# button to spawn an enemy window
	var spawn_button = Button.new()
	spawn_button.position = Vector2i(500, 500)
	spawn_button.text = "Enemy Window!"
	spawn_button.connect("button_down", generate_enemy_window)
	add_child(spawn_button)


func generate_enemy_window() -> void:
	var window = Window.new()
	window.title = "Enemy"
	window.initial_position = Window.WINDOW_INITIAL_POSITION_CENTER_MAIN_WINDOW_SCREEN
	window.visible = true
	window.transparent = true
	window.size.x = 500
	window.size.y = 500
	window.close_requested.connect(window.queue_free)
	
	var face = Sprite2D.new()
	face.position = Vector2i(250, 250)
	face.texture = load("res://angry.png") 
	window.add_child(face)
	add_child(window)
