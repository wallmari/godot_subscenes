extends Control

# "GlobalVariables" is an autoloaded (Project->Settings->Autoload) singleton

# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/HBoxContainer/lab_MyVar1Value.text = String(GlobalVariables.myValue1)
