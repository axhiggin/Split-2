extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_try_again_gui_input(event):
	if (event is InputEventMouseButton and event.pressed and event.button_index == 1):
		print("Try Again clicked")
		get_tree().change_scene_to_file("res://main_scene.tscn")

func _on_menu_gui_input(event):
	if (event is InputEventMouseButton and event.pressed and event.button_index == 1):
		print("Menu clicked")
		get_tree().change_scene_to_file("res://MainMenu.tscn")

func _on_quit_gui_input(event):
	if (event is InputEventMouseButton and event.pressed and event.button_index == 1):
		print("Quit Clicked")
		get_tree().quit()
