extends CharacterBody2D
class_name Enemy

const SPEED = 300.0

@export var healthComponent : HealthComponent
@export var scoreValue : int = 100

var player : Player = Player.new()

func _ready() -> void:
	
	healthComponent.Died.connect(OnDeath)

func _physics_process(delta: float) -> void:
	
	if is_instance_valid(player):
		look_at(player.getGlobalPosition())
	
	velocity = transform.x * SPEED
	
	move_and_slide()



func OnDeath():
	
	player.addScore(scoreValue)
	queue_free()
