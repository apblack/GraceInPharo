keybindings
moveLeft
	| sel |
	sel := self getSelection.
	sel isEmpty ifTrue: [
		self setSelection: sel - 1 
	] ifFalse: [ 
		self setSelection: (sel first to: sel first - 1)
	]
