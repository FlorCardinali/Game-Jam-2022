extends Node2D

export (PackedScene) var Object1
export (PackedScene) var Object2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _on_ObjectTimer_timeout():
	var random_num = randi() % 2
	var obj
	if random_num == 0:
		obj = Object1.instance()
	elif random_num == 1:
		obj = Object2.instance()
	
	# Choose a random location on Path2D.
	var obj_spawn_location = get_node("ObjPath/ObjSpawnLocation")
	obj_spawn_location.offset = randi()

	# Set the mob's direction perpendicular to the path direction.
	var direction = obj_spawn_location.rotation + PI / 2

	# Set the mob's position to a random location.
	obj.position = obj_spawn_location.position

	# Choose the velocity for the mob.
	var velocity = Vector2(rand_range(150.0, 250.0), 0.0)
	obj.linear_velocity = velocity.rotated(direction)

	# Spawn the mob by adding it to the Main scene.
	add_child(obj)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func on_hide_obj():
	queue_free()
