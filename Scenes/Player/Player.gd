extends CharacterBody2D
class_name Player

signal NewScore(currentScore)

@export var speed = 300.0

@export var healthComponent : HealthComponent

const JUMP_VELOCITY = -400.0

var score : int = 0

func _ready() -> void:
	
	healthComponent.Died.connect(onDeath)

func _physics_process(delta: float) -> void:
	look_at(get_global_mouse_position())
	velocity = transform.x * speed
	
	
	move_and_slide()

func getGlobalPosition() -> Vector2:
	return global_position

func addScore(scoreToAdd):
	score += scoreToAdd
	
	NewScore.emit(score)

func onDeath():
	get_tree().quit()
