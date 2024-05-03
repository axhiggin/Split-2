extends TextureProgressBar
var bar_green = preload("res://barHorizontal_green_mid 200.png")


# Called when the node enters the scene tree for the first time.
#func _ready():
	#hide()
	#if get_parent() and get_parent().get("max_health"):
		#healthbar.max_value = get_parent().max_health


func update_health(_value, _max_value):
	value = _value
	show()
