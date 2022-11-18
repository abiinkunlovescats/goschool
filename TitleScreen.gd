extends Node2D

var force_scene = preload("res://Force.tscn").instance()
var fric_scene = preload("res://Friction.tscn").instance()
var pow_scene = preload("res://Power.tscn").instance()
var sugar = preload("res://Sugar.tscn")
#func _add_a_scene_manually():
	# This is like autoloading the scene, only
	# it happens after already loading the main scene.
	

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#func _ready():
#	
#
func do_scene_loaded(scene):
#	# You can hook the instance name to run your specific per scene logic
#	# Example: parse the name for a substring such as "ITEM_" and then
#	# run your item specific logic
	print(scene.path)
	print(scene.instance.name)
func _on_Force_pressed():
	get_tree().change_scene("res://Force.tscn")
	# Replace with function body.


func _on_Friction_pressed():

	 get_tree().change_scene("res://Friction.tscn")


func _on_Power_pressed():
	get_tree().change_scene("res://Power.tscn")
