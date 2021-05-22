extends Node2D


func _ready():
	$GameMusic.play()





func _on_GameMusic_finished():
	$GameMusic.play()
