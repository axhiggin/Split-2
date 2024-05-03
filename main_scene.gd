extends Node3D

var enjoyment = 50;
var max_enjoyment = 100;

var volumeLevel = 50
var radioStation = 0

var loseFlag = true;
signal you_lose;

var musicArray = ["Vocaloid", "Country", "Pop", "Rock", "Kpop", "Jpop"]
var tempArray = []
var wantedMusic = ["Country", "Rock"]
var unwantedMusic = "Pop"
var currMusic = "Vocaloid"
# Called when the node enters the scene tree for the first time.

func _on_timer_timeout():
	#pick out a new wantedMusic from music Array Needs to be attached
	var rand = randi() % 6
	wantedMusic.clear()
	tempArray = musicArray.duplicate()
	wantedMusic.append(tempArray[rand])
	tempArray.pop_at(rand)
	rand = randi() % 5
	wantedMusic.append(tempArray[rand])
	tempArray.pop_at(rand)
	rand = randi() % 4
	unwantedMusic = tempArray[rand]
	
	print(wantedMusic)
	print(unwantedMusic)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if enjoyment == 0:
		if loseFlag: 
			loseFlag = false;
			you_lose.emit();
			print("Game Over!")
			get_tree().change_scene_to_file("res://GameOver.tscn")

func _on_difficulty_timer_timeout():
	$wantedTimer.wait_time *= 0.9
	$updateTimer.wait_time *= 0.9
	print("new wanted wait time: " + str($wantedTimer.wait_time))
	print("new update wait time: " + str($updateTimer.wait_time))
	

func _on_update_timer_timeout():
	if currMusic in wantedMusic:
		if enjoyment < max_enjoyment:
			enjoyment += 1
		else:
			pass
	elif currMusic == unwantedMusic:
		enjoyment -= 2
	else:
		if enjoyment > 0:
			enjoyment -= 1

	$car/HealthBar3D.update_health(enjoyment, max_enjoyment)
	
	print(enjoyment)


func _on_volume_up_interacted(body):
	volumeLevel += 10
	if volumeLevel > 100:
		volumeLevel = 100
	print("Volume: " + str(volumeLevel))


func _on_volume_down_interacted(body):
	volumeLevel -= 10
	if volumeLevel < 0:
		volumeLevel = 0
	print("Volume: " + str(volumeLevel))


func _on_change_radio_up_interacted(body):
	radioStation += 1
	if radioStation > musicArray.size() - 1:
		radioStation = 0
	currMusic = musicArray[radioStation]
	print("Current Radio station: " + musicArray[radioStation])


func _on_change_radio_down_interacted(body):
	radioStation -= 1
	if radioStation < 0:
		radioStation = musicArray.size() - 1
	currMusic = musicArray[radioStation]
	print("Current Radio station: " + musicArray[radioStation])
