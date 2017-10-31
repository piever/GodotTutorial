extends Sprite

# class member variables go here, for example:

var dir = Vector2(0, -1)
var speed = 200
#const BASELINE_SPEED = 200
#const EXTRA_SPEED = 400
#const ANGULAR_SPEED = 2
#var angle = 0

#onready var top_left = get_node("../background/top_left").get_global_pos()
#onready var bottom_right = get_node("../background/bottom_right").get_global_pos()

func _ready():
	set_fixed_process(true)
#	set_process_input(true)

#func _input(event):
#	if event.is_action_pressed("shoot"):
#		var bullet = load("res://scenes/bullet.tscn").instance()
#		bullet.angle = angle
#		bullet.set_pos(get_pos())
#		get_parent().add_child(bullet)

func _fixed_process(delta):
#	if Input.is_action_pressed("ui_up"):
#		speed = BASELINE_SPEED+EXTRA_SPEED
#	elif Input.is_action_pressed("ui_down"):
#		speed = BASELINE_SPEED-EXTRA_SPEED
#	else:
#		speed = BASELINE_SPEED
#	if Input.is_action_pressed("ui_left"):
#		angle += delta*ANGULAR_SPEED
#	if Input.is_action_pressed("ui_right"):
#		angle -= delta*ANGULAR_SPEED
#	dir = Vector2(cos(angle), -sin(angle))
	translate(delta*speed*dir)
#	set_rot(angle-PI/2)


