extends AnimatedSprite

# class member variables go here, for example:
var angle
var dir
const SPEED = 800

func _ready():
	set_fixed_process(true)

func _fixed_process(delta):
	dir = Vector2(cos(angle), -sin(angle))
	translate(delta*SPEED*dir)
	set_rot(angle)

func _on_visible_exit_screen():
	queue_free()


func _on_area_area_enter( area ):
	if area.is_in_group("enemies"):
		area.get_node("../anim").play("explode")
		queue_free()

