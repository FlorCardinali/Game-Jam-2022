extends Label
var tamanio_ventana

func _ready():
	tamanio_ventana = get_viewport_rect().size
	rect_position.y =tamanio_ventana.y



