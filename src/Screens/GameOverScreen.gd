extends Control


onready var label: Label = get_node("ScoreLable")


func _ready() -> void:
	label.text = label.text % PlayerData.score
