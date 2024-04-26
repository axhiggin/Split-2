extends Node3D

var musicArray = ["Vocaloid", "Country", "Pop", "Rock", "Kpop", "Jpop"]
var wantedMusic = "Country"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass


func _on_timer_timeout():
	#pick out a new wantedMusic from music Array
	wantedMusic = musicArray[randi() % 6]
	print(wantedMusic)
	pass
