extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	set_fixed_process(true)

func _fixed_process(delta):
	print(global.get_player().get_pos())


func _on_anim_finished():
	queue_free()
