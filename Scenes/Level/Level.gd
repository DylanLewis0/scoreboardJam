extends Node2D

@onready var player : Player =  $Player

@onready var hud : Control = $CanvasLayer/HUD

var enemyScene : String = "res://Scenes/Enemy/Enemy.tscn"



func _ready() -> void:
	
	player.NewScore.connect(hud.setScoreText)
	
	spawnEnemy()

func spawnEnemy():
	
	var enemyToSpawn : Enemy = load(enemyScene).instantiate()
	
	var randomEnemyPosition : Vector2 = Vector2(randf_range(-1000, 1000), randf_range(-1000, 1000))
	
	enemyToSpawn.global_position = randomEnemyPosition
	
	add_child(enemyToSpawn)
	
	enemyToSpawn.player = player


func endGame():
	
	await get_tree().create_timer(5).timeout
	
	get_tree().quit()
