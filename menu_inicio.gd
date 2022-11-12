extends Node


func _on_boton_comenzar_pressed():
	get_tree().change_scene("res://Main.tscn")

func _on_boton_salir_pressed():
	get_tree().quit()
