extends Node2D


func _ready():
	PlayerData.prevscene = "res://src/Lavels/Lavel01/Lavel01Scene04Part01.tscn"
	$GameMusic.play()





func _on_GameMusic_finished():
	$GameMusic.play()
