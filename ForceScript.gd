extends Node2D

onready var rvl = $Label2
onready var lvl = $Label
onready var ml =$Label3
onready var Sugar = $Sugar

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	ml.set_text("MASS: 1")
	lvl.set_text("ACCELERATION 1: 5 m/s^2")
	rvl.set_text("ACCELERATION 2: 5 m/s^") # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#var velocity = Slider.value;
	#Sugar.add_force(Vector2(velocity,0),Vector2(velocity,0))
#	pass





func _on_Mass_value_changed(value):
	Sugar.mass = value;
	ml.set_text("MASS: %d" % [value])
# Replace with function body.



	Sugar.applied_force.x = value;
	Sugar.add_central_force(Vector2(value,0)) # Replace with function body.


func _on_Velocity_Right_value_changed(value):
	Sugar.applied_force.x = -value + 200;
	rvl.set_text("ACCELERATION 2: %d m/s^2" % [value - 200])
	Sugar.add_central_force(Vector2(-value + 200,0)) # Replace with function body.


func _on_Velocity_Left_value_changed(value):
	Sugar.applied_force.x = value - 200;
	lvl.set_text("ACCELERATION 1: %d m/s^2" % [value - 200])
	Sugar.add_central_force(Vector2(value - 200,0)) # Replace with function body.


func _on_Button_pressed():
	get_tree().reload_current_scene() # Replace with function body.


func _on_Def_pressed():
	$Popup.popup();
	get_tree().paused = true
	
	 # Replace with function body.



	
	 # Replace with function body.





func _on_Popup_popup_hide():
	get_tree().paused = false # Replace with function body.


func _on_Menu_pressed():
	 get_tree().change_scene("res://Friction.tscn")
	 # Replace with function body.
