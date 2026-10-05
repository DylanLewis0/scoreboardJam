extends Control

@onready var scoreText : RichTextLabel = $ScoreText


func setScoreText(score : int):
	
	scoreText.text = "[center]Score:" + str(score)
