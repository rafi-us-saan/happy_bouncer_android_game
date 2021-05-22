extends Node2D




func _ready():
	$GameMusic.play()




	


func _on_Timer_timeout():
	queue_free()	
	get_tree().change_scene("res://src/Screens/GameOver.tscn")
