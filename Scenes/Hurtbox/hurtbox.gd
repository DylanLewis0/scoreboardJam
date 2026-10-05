extends BoxComponent
class_name hurtbox

signal Hit(damage)

@export var healthComponent : HealthComponent

func _ready() -> void:
	
	if is_instance_valid(healthComponent):
		
		Hit.connect(healthComponent.takeDamage)
