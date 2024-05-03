extends ProgressBar

# Called when the node enters the scene tree for the first time.
var musicArray = ["Vocaloid", "Country", "Pop", "Rock", "Kpop", "Jpop"]
var wantedMusic = "Country"
var currMusic = "Vocaloid"

var enjoyment = 0 : set = _set_enjoyment

func _set_enjoyment(new_enjoyment):
	var prev_enjoyment = enjoyment
	enjoyment = min(max_value, new_enjoyment)
	value = enjoyment
	
	if enjoyment <= 0:
		queue_free()
		
	#if enjoyment < prev_enjoyment:
		
# Called when the node enters the scene tree for the first time.
func init_meter(_enjoyment):
	enjoyment = _enjoyment
	max_value = enjoyment
	value = enjoyment


	
func _process(delta):
	pass
	

