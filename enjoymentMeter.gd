extends Sprite3D


# Called when the node enters the scene tree for the first time.
func _ready():
	texture = $SubViewport.get_texture()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func update_health(_value, _max_value):
	$SubViewport/HealthBar2D.update_health(_value, _max_value)
	
#func _on_timer_timeout():
	#pick out a new wantedMusic from music Array Needs to be attached
	#wantedMusic = musicArray[randi() % 6]
	#print(wantedMusic)
