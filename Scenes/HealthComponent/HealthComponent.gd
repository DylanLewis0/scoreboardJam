extends Node2D
class_name HealthComponent

signal Died

@export var health  : float

func takeDamage(damage : int) -> void:
	health -= damage
	
	if health <= 0:
		
		health = 0
		die()

func die() -> void:
	
	Died.emit()
	

func getHealth() -> int:
	
	return health

func setHealth(newHealth : int) -> void:
	
	health = newHealth
