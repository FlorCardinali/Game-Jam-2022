extends Node
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_boton_comenzar_pressed():
	get_tree().change_scene("res://Main.tscn")

func _on_boton_salir_pressed():
	get_tree().quit()
