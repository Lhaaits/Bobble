extends Node

@onready var balScene = preload("res://bal.tscn")

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				print("mouse button event at ", event.position)
				var bal = balScene.instantiate()
				bal.position.x = event.position.x
				add_child(bal)
				var col = get_node("Bal/RigidBody2D/CollisionShape2D")
				var balBody = bal.find_child("RigidBody2D").find_child("Sprite2D")

				#var scale = 0.1
				#balBody.scale *= scale 
				#col.scale *= scale
		
		
