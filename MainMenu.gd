extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
# https://forum.godotengine.org/t/how-to-detect-label-click/14680
func _on_play_gui_input(event):
	if (event is InputEventMouseButton and event.pressed and event.button_index == 1):
		print("Play clicked")
		get_tree().change_scene_to_file("res://main_scene.tscn")

func _on_settings_gui_input(event):
	if (event is InputEventMouseButton and event.pressed and event.button_index == 1):
		print("Settings clicked")

func _on_quit_gui_input(event):
	if (event is InputEventMouseButton and event.pressed and event.button_index == 1):
		print("Quit clicked")
		get_tree().quit()
