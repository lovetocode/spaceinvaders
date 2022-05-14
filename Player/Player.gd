extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed = 100

var bullet = preload("res://Bullet/Bullet.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)

func _process(delta):
	if Input.is_action_just_pressed("fire"):
		# Spawn a bullet
		var bulletInstance = bullet.instance()
		bulletInstance.position = Vector2(position.x, position.y - 20)
		get_tree().get_root().add_child(bulletInstance)
		

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		move_and_collide(Vector2(-speed * delta, 0))
	elif Input.is_action_pressed("ui_right"):
		move_and_collide(Vector2(speed * delta, 0))
