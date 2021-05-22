extends Node


signal score_updated
signal player_died
signal lifes_left
signal prevscene

var score: = 0 setget set_score
var deaths: = 0 setget set_deaths
var lifes: = 3 setget set_lifes
var prevscene: = "" setget set_prevscene

func reset() -> void:
	score = 0
	deaths = 0
	lifes = 3
	prevscene = ""
	


func set_score(value: int) -> void:
	score = value
	emit_signal("score_updated")


func set_deaths(value: int) -> void:
	deaths = value
	emit_signal("player_died")

func set_lifes(value: int) -> void:
	lifes = value
	emit_signal("lifes_left")
	
func set_prevscene(value: String) -> void:
	prevscene = value
	emit_signal("prevscene_set")
