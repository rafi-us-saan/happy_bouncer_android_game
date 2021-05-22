extends Button

func _on_button_up():
	get_tree().quit()


func _on_QuitButton_button_down():
	$QuitButton.play()
