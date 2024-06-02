extends Node

var score = 0
var isReloaded: bool = true
var score_label: Label

func restart_game():
	print("restarting game")
	score = 0
	isReloaded = true
	get_tree().reload_current_scene()
	
func add_point():
	if (isReloaded):
		score_label = get_node("/root/Game/%ScoreLabel")
		isReloaded = false

	score += 1
	score_label.text = "You collected " + str(score) + " coins."
	print(score)
