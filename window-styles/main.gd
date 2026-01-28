extends Control

@onready var Classic95 = load("res://Themes/Classic95/Classic95.tres")
@onready var Classic311 = load("res://Themes/Classic311/Classic311.tres")
@onready var Modern11 = load("res://Themes/Modern11/Modern11.tres")
@onready var Windows95 = load("res://Themes/Windows95/Windows95.tres")
@onready var Windows98 = load("res://Themes/Windows98/theme.tres")
@onready var Windows10_dark = load("res://Themes/windows_10_dark/theme.tres")
@onready var Windows10_light = load("res://Themes/windows_10_light/theme.tres")
@onready var controlsDialog = preload("res://Themes/TestDialog.tscn")

func _ready():
	theme = Windows10_dark
	# add example window
	var window = Window.new()
	window.title = "Sample Window"
	window.initial_position = Window.WINDOW_INITIAL_POSITION_CENTER_MAIN_WINDOW_SCREEN
	window.visible = true
	window.transparent = true
	window.size.x = 500
	window.size.y = 500
	window.close_requested.connect(window.queue_free)
	window.add_child(controlsDialog.instantiate())
	add_child(window)
	
	# add button to spawn enemy window
	var button_new_window = Button.new()
	button_new_window.position = Vector2i(500, 500)
	button_new_window.text = "Enemy Window!"
	button_new_window.connect("button_up", generate_enemy_window)
	add_child(button_new_window)


func generate_enemy_window() -> void:
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
