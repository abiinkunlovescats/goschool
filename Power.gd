extends Node2D

onready var fl = $Label4
onready var ml =$Label3
onready var pl = $Power
onready var Sugar = $Sugar
var work = 0
var counting = false
var count = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var round_to = 0.01

# Called when the node enters the scene tree for the first time.
func _ready():
	ml.set_text("MASS: 1")
	pl.set_text("Power: 0 Watt")
	fl.set_text("Applied Force: 0 N") # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if counting:
		count += delta
		pl.set_text('Power: %d Watt' % [work/count])
	#var velocity = Slider.value;
	#Sugar.add_force(Vector2(velocity,0),Vector2(velocity,0))
#	pass





func _on_Mass_value_changed(value):
	Sugar.mass = value;
	ml.set_text("MASS: %d" % [value])
# Replace with function body.



	Sugar.applied_force.x = value;
	Sugar.add_central_force(Vector2(value,0)) # Replace with function body.




func _on_Velocity_Left_value_changed(value):
	
	Sugar.applied_force.x = value ;
	counting = true
	fl.set_text("Applied Force: %d N" % [value])
	work = value * (Sugar.position.x -232)
	$Work.set_text("Work: %d J" % [work])
	# Replace with function body.


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
	get_tree().change_scene("res://TitleScreen.tscn")
	 # Replace with function body.
