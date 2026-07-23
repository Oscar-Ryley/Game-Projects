extends Label

var timerCurrent = 0

func _process(delta):
	self.text = str(Global.clicks)
	timerCurrent += delta
	if timerCurrent >= 1:
		Global.clicks += Global.employees * Global.supplies
		timerCurrent -= 1
