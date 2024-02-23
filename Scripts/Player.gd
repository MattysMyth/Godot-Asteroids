extends CharacterBody2D

@export var speed = 400
@export var rotation_speed = 3.5
var Bullet = preload("res://bullet.tscn")

var rotation_direction = 0

func _input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			shoot()

func shoot():
	var bullet = Bullet.instantiate()
	bullet.setPosition(position, rotation)
	$"..".add_child(bullet)

func get_input():
	rotation_direction = Input.get_axis("Rotate_Left", "Rotate_Right")
	velocity = transform.x * Input.get_axis("Backward", "Forward") * speed

func _physics_process(delta):
	get_input()
	rotation += rotation_direction * rotation_speed * delta
	move_and_slide()
