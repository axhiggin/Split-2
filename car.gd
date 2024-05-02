extends Node3D

var volumeLevel = 50
# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#moves the car
	self.position += Vector3(0, 0, 1)


func _on_volume_up_interacted(body):
	volumeLevel += 10
	if volumeLevel > 100:
		volumeLevel = 100
	print("Volume " + str(volumeLevel))


func _on_volume_down_interacted(body):
	volumeLevel -= 10
	if volumeLevel < 0:
		volumeLevel = 0
	print("Volume " + str(volumeLevel))
