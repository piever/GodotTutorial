extends Sprite

# class member variables go here, for example:

const BASELINE_SPEED = 200
const SPEED = 400
const ANGULAR_SPEED = 2
var signed_speed = 0
var dir = 0
#onready var top_left = get_node("../background/top_left").get_global_pos()
#onready var bottom_right = get_node("../background/bottom_right").get_global_pos()

func _ready():
	set_fixed_process(true)
	set_process_input(true)

func _input(event):
	if event.is_action_pressed("shoot"):
		var bullet = load("res://scenes/bullet.tscn").instance()
		bullet.dir = dir
		bullet.set_pos(get_pos())
		get_parent().add_child(bullet)

func _fixed_process(delta):
	if Input.is_action_pressed("ui_up"):
		signed_speed = SPEED
	elif Input.is_action_pressed("ui_down"):
		signed_speed = -SPEED
	else:
		signed_speed = 0
	if Input.is_action_pressed("ui_left"):
		dir += delta*ANGULAR_SPEED
	if Input.is_action_pressed("ui_right"):
		dir -= delta*ANGULAR_SPEED
	translate(delta*(signed_speed+BASELINE_SPEED)*Vector2(cos(dir), -sin(dir)))
	set_rot(dir-PI/2)


