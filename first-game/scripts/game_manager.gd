extends Node

var score = 0

@onready var score_lable = $ScoreLable

func add_point():
	score += 1
	score_lable.text = "You collected\n" + str(score) + "/12 coins."
