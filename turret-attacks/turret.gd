extends Node2D


var target: Node2D = null
@export var BULLET_SCENE: PackedScene = null

@onready var gunSprite = $GunSprite
@onready var raycast = $RayCast2D
@onready var reloadTimer = $RayCast2D/ReloadTimer

# REVISE CODE TO SEARCH FOR TARGET FROM ROOT

func _ready():
	reloadTimer.connect("timeout", on_reload_timeout)
	target = find_target()

func _physics_process(_delta: float):
	if target != null:
		var angle_to_target: float = global_position.direction_to(target.global_position).angle()
		raycast.global_rotation = angle_to_target
		if raycast.is_colliding() and raycast.get_collider().name == "Enemy":
			gunSprite.rotation = angle_to_target
			if reloadTimer.is_stopped():
				shoot()

func shoot():
	print("bamkalbkmgan")
	raycast.enabled = false
	
	if BULLET_SCENE:
		var bullet: Node2D = BULLET_SCENE.instantiate()
		add_child(bullet)
		bullet.global_position = global_position
		bullet.global_rotation = global_rotation
	
	reloadTimer.start()
	
	

func find_target():
	target = get_parent().find_child("Enemy")

func on_reload_timeout():
	raycast.enabled = true
