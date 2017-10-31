extends Sprite

# class member variables go here, for example:
var angle
var dir
const SPEED = 800

func _ready():
	set_fixed_process(true)

func _fixed_process(delta):
	dir = Vector2(cos(angle), -sin(angle))
	translate(delta*SPEED*dir)
	set_rot(angle-PI/2)

#func _on_visible_exit_screen():
#	queue_free()


#func _on_area_area_enter( area ):
#	if area.is_in_group("enemies"):
#		area.get_parent().queue_free()
#		queue_free()
#		print(get_tree().get_nodes_in_group("enemies").size())
