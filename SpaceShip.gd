extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

var velocity: Vector2

func _process(delta):
	
	if Input.is_action_pressed("ui_up"):
		velocity += Vector2(0, -1).rotated(rotation)
	if Input.is_action_pressed("ui_left"):
		rotation_degrees -= 180 * delta
	if Input.is_action_pressed("ui_right"):
		rotation_degrees += 180 * delta
	position += velocity * delta
	
