extends Node3D

var volumeLevel = 50
var radioStation = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#moves the car
	self.position += Vector3(0, 0, 1)
