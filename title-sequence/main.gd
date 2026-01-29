extends Control


@onready var title = $Title
@onready var play = $Title/VBoxContainer/Play
@onready var options = $Title/VBoxContainer/Options
@onready var credits = $Title/VBoxContainer/Credits
@onready var anim = $AnimationPlayer
@onready var timer = $Timer

@onready var map = $Map

func _ready():
	#var some_size = Vector2i(1000, 700)
	#var rect_size = DisplayServer.screen_get_usable_rect().size
	#print(rect_size)
	#var screen_size = DisplayServer.screen_get_size()
	#print(screen_size)
	#get_viewport().size = Vector2i(screen_size)
	
	check_OS()
	
	map.visible = false
	title.size = Vector2i(300,200)
	title.connect("close_requested", close_game)
	play.connect("button_up", on_play)



func on_play():
	anim.play("grow then minimize")
	await anim.animation_finished
	title.queue_free()
	
	# 1s delay
	timer.start(1)
	await timer.timeout
	map.visible = true
	anim.play("grow map")

func close_game():
	anim.play("ease in minimize")
	await anim.animation_finished
	title.queue_free()
	
	get_tree().quit()

func check_OS():
	var user_os = OS.get_name()
	if user_os == "Windows":
		theme = load("res://Themes/Modern11/Modern11.tres")
		pass
	elif user_os == "OSX":
		# set Theme for Mac
		pass
