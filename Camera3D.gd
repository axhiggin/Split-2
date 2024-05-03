extends Camera3D

# Speed of camera rotation
var rotation_speed = 0.1
var loseFlag = true;

# Variables to store mouse movement
var mouse_delta = Vector2()


func _input(event):
	if event is InputEventMouseMotion:
		# Update mouse_delta only if there is mouse movement
		if event.relative.length_squared() > 0:
			mouse_delta = event.relative

func _process(delta):
	if loseFlag:
		# Rotate the camera only if there is mouse movement
		if mouse_delta.length_squared() > 0:
			rotate_camera()
			# Reset mouse_delta after rotation
			mouse_delta = Vector2()

func rotate_camera():
	# Get the current rotation of the camera
	var rotation = get_rotation_degrees()
	
	# Update rotation based on mouse movement
	rotation.y -= mouse_delta.x * rotation_speed
	rotation.x -= mouse_delta.y * rotation_speed
	
	# Clamp rotation to avoid flipping the camera
	rotation.x = clamp(rotation.x, -89, 89)
	rotation.y = clamp(rotation.y, 90, 270)
	
	# Set the new rotation of the camera
	set_rotation_degrees(rotation)




func _on_main_scene_you_lose():
	loseFlag = false;
