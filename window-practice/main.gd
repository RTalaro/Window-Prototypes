extends Node


@onready var controlsDialog = preload("res://Themes/TestDialog.tscn")

func _ready():
	var window = Window.new()
	window.title = "Enemy"
	window.initial_position = Window.WINDOW_INITIAL_POSITION_CENTER_MAIN_WINDOW_SCREEN
	print(Window.WINDOW_INITIAL_POSITION_CENTER_MAIN_WINDOW_SCREEN)
	window.visible = true
	window.transparent = true
	window.size.x = 500
	window.size.y = 500
	window.close_requested.connect(window.queue_free)
	window.add_child(controlsDialog.instantiate())
	add_child(window)
	
	var button_new_window = Button.new()
	button_new_window.position = Vector2i(500, 500)
	button_new_window.text = "New Window!"
	button_new_window.connect("button_down", generate_new_window)
	add_child(button_new_window)


func generate_new_window() -> void:
	var window = Window.new()
	window.title = "Enemy"
	window.initial_position = Window.WINDOW_INITIAL_POSITION_CENTER_MAIN_WINDOW_SCREEN
	window.visible = true
	window.transparent = true
	window.size.x = 500
	window.size.y = 500
	window.close_requested.connect(window.queue_free)
	var bg = ColorRect.new()
	bg.color = Color()
	bg.size = Vector2i(500,500)
	
	var face = Sprite2D.new()
	face.position = Vector2i(250, 250)
	face.texture = load("res://angry.png") 
	window.add_child(face)
	add_child(window)
