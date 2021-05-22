extends Control


onready var label: Label = get_node("ScoreLabel")


func _ready() -> void:
	$AdMob.load_rewarded_video()
	label.text = label.text % [PlayerData.score]
	


func _on_Watch_AD_button_up():
		$AdMob.show_rewarded_video()





func _on_AdMob_rewarded(currency, ammount):
	currency = "life"
	ammount = 1
	PlayerData.lifes +=1
	get_tree().change_scene(PlayerData.prevscene)
