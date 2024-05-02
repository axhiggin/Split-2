extends Node3D

var volumeLevel = 50
var radioStation = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#moves the car
	self.position += Vector3(0, 0, 1)

#These get called from the buttons node signals
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

#Not sure how we plan on implantmenting the radio but here's a simple system to change the radio
func _on_change_radio_up_interacted(body):
	radioStation += 1
	if radioStation > 10:
		radioStation = 0
	print("Radio station: " + str(radioStation))


func _on_change_radio_down_interacted(body):
	radioStation -= 1
	if radioStation < 0:
		radioStation = 10
	print("Radio station: " + str(radioStation))
