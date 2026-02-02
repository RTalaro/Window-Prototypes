extends Control


@onready var menu: Control = $Menu
@onready var title: Window = $Menu/Title
@onready var play: Window = $Menu/Play
@onready var play_button: Button = $Menu/Play/Button
@onready var options: Window = $Menu/Options
@onready var options_button: Button = $Menu/Options/Button
@onready var quit: Window = $Menu/Quit
@onready var quit_button: Button = $Menu/Quit/Button

@onready var anim: AnimationPlayer = $AnimationPlayer
@onready var timer: Timer = $Timer

@onready var map: Window = $Map

func _ready():
	#var some_size = Vector2i(1000, 700)
	#var rect_size = DisplayServer.screen_get_usable_rect().size
	#print(rect_size)
	#var screen_size = DisplayServer.screen_get_size()
	#print(screen_size)
	#get_viewport().size = Vector2i(screen_size)
	
	set_window_theme()
	handle_signals()
	
	map.visible = false
	anim.play("floating menu")



func on_play():
	anim.play("close menu")
	await anim.animation_finished
	menu.queue_free()
	
	# 1s delay
	timer.start(1)
	await timer.timeout
	map.visible = true
	anim.play("grow map")

func close_game():
	anim.play("close menu")
	await anim.animation_finished
	menu.queue_free()
	
	# TO-DO: uncomment when done
	get_tree().quit()

func set_window_theme():
	var user_os = OS.get_name()
	if user_os == "Windows":
		theme = load("res://Themes/Modern11/Modern11.tres")
		pass
	elif user_os == "OSX":
		# set Theme for Mac
		#theme = load()
		pass

func handle_signals():
	title.connect("close_requested", close_game)
	play_button.connect("button_up", on_play)
	quit_button.connect("button_up", close_game)
