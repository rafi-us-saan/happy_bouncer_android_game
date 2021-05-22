extends TouchScreenButton

var radious = Vector2(64, 64)
var boundary = 128


func get_button_pos():
	return radious  + position

func _input(event):
	if event is InputEventScreenDrag and (event is InputEventScreenTouch and event.is_pressed()):
		set_global_position(event.position - radious * global_scale)
	
		if get_button_pos().length() > boundary:
			set_position(get_button_pos().normalized() * boundary - radious) 
