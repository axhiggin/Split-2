extends Node3D

var enjoyment = 100;
var max_enjoyment = 100;

var loseFlag = true;
signal you_lose;

var musicArray = ["Vocaloid", "Country", "Pop", "Rock", "Kpop", "Jpop"]
var wantedMusic = "Country"
var currMusic = "Vocaloid"
# Called when the node enters the scene tree for the first time.

func _on_timer_timeout():
	#pick out a new wantedMusic from music Array Needs to be attached
	wantedMusic = musicArray[randi() % 6]
	print(wantedMusic)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if enjoyment == 0:
		if loseFlag: 
			loseFlag = false;
			you_lose.emit();
			print("Game Over!")
			get_tree().change_scene_to_file("res://GameOver.tscn")


func _on_update_timer_timeout():
	if currMusic == wantedMusic:
		enjoyment += 1
	else:
		if enjoyment > 0:
			enjoyment -= 1

	#$HealthBar3D.update(enjoyment, max_enjoyment)
	print(enjoyment)
