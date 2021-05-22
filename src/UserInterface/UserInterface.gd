extends Control

onready var scene_tree: = get_tree()
onready var pause_overlay: ColorRect = get_node("PauseOverlay")
onready var score: Label = get_node("ScoreLabel")
onready var lifes: Label = get_node("LifesLabel")


var paused: = false setget set_paused


func _ready() -> void:
	PlayerData.connect("score_updated", self, "update_interface")
	PlayerData.connect("player_died", self, "_PlayerData_player_died")
	PlayerData.connect("lifes_left", self, "_lifes_left")
	update_interface() 


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("pause"):
		self.paused = not paused
		scene_tree.set_input_as_handled()


func update_interface() -> void:
	score.text = "Score %s" % PlayerData.score
	lifes.text = "Lifes %s" % PlayerData.lifes
	


func set_paused(value: bool) -> void:
	paused = value
	scene_tree.paused = value
	get_node("PauseOverlay").visible = true


