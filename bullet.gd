extends Area2D

var speed = 20
var arena

func _ready():
	arena = get_node("../%Arena")
	arena.area_exited.connect(_on_arena_area_exited)

func setPosition(startPosition, startRotation):
	position = startPosition
	rotation = startRotation

func destroy():
	queue_free()

func _physics_process(delta):
	position += transform.x * speed * delta

func _on_arena_area_exited(area):
	if self == area:
		destroy()
