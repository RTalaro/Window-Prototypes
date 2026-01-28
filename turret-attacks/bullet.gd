extends Area2D

const RIGHT = Vector2.RIGHT
@onready var visibility_notifier = $VisibleOnScreenNotifier2D

@export var SPEED: int = 200

func _physics_process(delta):
	var movement = RIGHT.rotated(rotation) * SPEED * delta
	global_position += movement
	connect("body_entered", on_bullet_body_entered)
	visibility_notifier.connect("screen_exited", on_screen_exited)
	#visibility_notifier.connect("screen_entered", on_screen_entered)

func destroy():
	queue_free()

func on_screen_exited():
	queue_free()

func on_screen_entered():
	pass

func on_bullet_body_entered(body: Node2D):
	if body.name == "Enemy" or body.name == "Player":
		queue_free()
