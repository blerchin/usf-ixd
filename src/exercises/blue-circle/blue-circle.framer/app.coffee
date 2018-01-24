dScale = 0
reposition = ->
	BlueCircle.animate
		x: Math.random() * (Screen.width - BlueCircle.width)
		y: Math.random() * (Screen.height - BlueCircle.height)
		scale: 1 - dScale
		options:
			time: 1
	RedCircle.animate
		x: Math.random() * (Screen.width - RedCircle.width)
		y: Math.random() * (Screen.height - RedCircle.height)
		scale: 1 + dScale
		options:
			time: 1
	dScale += 0.05
	
fail = ->
	RedCircle.animate
		scale: 10
		opacity: 1
		options: 
			time: 0.5
	new TextLayer
		text: "Sorry, try again!"
		y: Screen.height / 2

BlueCircle.onTap reposition

RedCircle.onTap fail
