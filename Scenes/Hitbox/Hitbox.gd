extends BoxComponent

var damage : int = 10

func detectHit(hitThing) -> void:
	if !is_instance_of(hitThing, hurtbox):
		return
	
	
	if hitThing.currentTeam != currentTeam:
		
		hitThing.Hit.emit(damage)
