extends Label

func _ready():
	self.visible = false 

var rng = RandomNumberGenerator.new()

var timerCurrent = 0
var timerTotal = rng.randi_range(5, 40)

func _process(delta):
	timerCurrent += delta
	if timerCurrent >= 2:
		self.visible = false
	if timerCurrent >= timerTotal:
		self.visible = true 
		self.text = str("+", Global.chairs *10)
		Global.clicks += Global.chairs * 10
		timerCurrent -= timerTotal
		timerTotal = rng.randi_range(5, 40)
