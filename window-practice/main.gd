extends Node

#@onready var _Camera: Camera2D = $Window/Camera2D
#@onready var _MainWindow: Window = get_window()
#@onready var _SubWindow: Window = $Window
@onready var button = $Button
@onready var controlsDialog = preload ("res://Themes/TestDialog.tscn")
@onready var themeWin11 = load("res://Themes/Classic95/Classic95.tres")

func _ready():
	#theme = load(themeWin11)
	button.connect("button_down", on_button_down)
	#_MainWindow.transparent_bg = true
	
	#_SubWindow.world_2d = _MainWindow.world_2d

func on_button_down() -> void:
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
	#bg.position = Vector2i(250,250)
	bg.size = Vector2i(500,500)
	
	var face = Sprite2D.new()
	face.position = Vector2i(250, 250)
	face.texture = load("res://angry.png")
	window.add_child(bg)
	window.add_child(face)
	add_child(window)
	

#func _process(delta: float) -> void:
	#_Camera.position = get_window().position
