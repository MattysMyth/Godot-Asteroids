extends Node2D

var width
var height
var index = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	var arenaBounds = get_node("../%Arena/ArenaBounds").get_shape().get_size()
	width = arenaBounds[0]
	height = arenaBounds[1]
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_timer_timeout():
	spawnAsteroid()
	index += 1
	$Timer.start(index)

func spawnAsteroid():
	print(index, " Asteroids Spawned")
