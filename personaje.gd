extends KinematicBody2D

export var speed = 200
var ventana_size

func _ready():
	#obtener tamaño del vieewport
	ventana_size = get_viewport_rect().size

#movimiento de personaje
func _process(delta):
	if Input.is_action_pressed("ui_right"):
		position.x += speed * delta
	if Input.is_action_pressed("ui_left"):
		position.x -= speed * delta	
	position.x = clamp(position.x,200, ventana_size.x-200)

#desaparicion de objetos no visibles
func _on_Area2D_body_entered(body):
	if body.is_in_group("items"):
		body.hide()
