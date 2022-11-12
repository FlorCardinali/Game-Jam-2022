extends CanvasLayer

var pausa: Object = null 

func _ready():
	$menu_pausa.visible = false
	$creditos.visible = false
	pass

func _on_boton_pausa_main_pressed():
	$menu_pausa.visible = true
	$boton_pausa_main.visible = false
	get_tree().paused = true


func _on_boton_pausa_volver_pressed():
	$menu_pausa.visible = false
	$boton_pausa_main.visible = true
	get_tree().paused = false

func _on_boton_pausa_salir_pressed():
	get_tree().quit()
	
func _on_boton_vovler_creditos_pressed():
	$menu_pausa.visible = true
	$creditos.visible = false

func _on_boton_pausa_creditos_pressed():
	$menu_pausa.visible = false
	$creditos.visible = true
