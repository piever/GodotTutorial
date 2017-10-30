extends Sprite

# class member variables go here, for example:
var dir
var SPEED = 800

func _ready():
	set_fixed_process(true)

func _fixed_process(delta):
	translate(delta*SPEED*Vector2(cos(dir), -sin(dir)))
	set_rot(dir-PI/2)

func _on_visible_exit_screen():
	queue_free()


func _on_area_area_enter( area ):
	if area.is_in_group("enemies"):
		area.get_parent().queue_free()
		queue_free()
		print(get_tree().get_nodes_in_group("enemies").size())
