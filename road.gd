extends Node3D

var car

# Called when the node enters the scene tree for the first time.
func _ready():
	car = get_node("car")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if car.position.z > self.position.z + self.get_node("Plane").get_aabb().size.z:
		self.position.z = self.position.z + self.get_node("Plane").get_aabb().size.z * 2
