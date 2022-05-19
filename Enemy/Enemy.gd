extends KinematicBody2D


var is_waling_to_right =  true
var start_pos = 0
var walk_distance = 500
var speed = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	start_pos = 500
	#set_physics_process(true)
	
func walk():
	if position.x > start_pos + walk_distance:
		is_waling_to_right = false
	if position.x < start_pos - walk_distance:
		is_waling_to_right = true
		
	if is_waling_to_right:
		walk_right()
	else:
		walk_left()
	
func walk_right():
	position.x += 5
	
func walk_left():
	position.x -= 5

func _physics_process(delta):
	#move_and_collide(Vector2(speed * delta, 0))
	walk()
		
	
		
