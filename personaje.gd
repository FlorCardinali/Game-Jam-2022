extends KinematicBody2D

export var speed = 200
var ventana_size

# Called when the node enters the scene tree for the first time.
func _ready():
	ventana_size = get_viewport_rect().size

func _process(delta):
	if Input.is_action_pressed("ui_right"):
		position.x += speed * delta
		
	if Input.is_action_pressed("ui_left"):
		position.x -= speed * delta
		
	position.x = clamp(position.x,200, ventana_size.x-200)

