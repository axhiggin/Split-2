extends Label

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# https://forum.godotengine.org/t/how-to-detect-label-click/14680
func _on_gui_input(event):
	if (event is InputEventMouseButton and event.pressed and event.button_index == 1):
		print("Quit clicked")
