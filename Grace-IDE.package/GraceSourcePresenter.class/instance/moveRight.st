keybindings
moveRight
	| sel |
	sel := self getSelection.
	sel isEmpty ifTrue: [
		self setSelection: sel + 1 
	] ifFalse: [ 
		self setSelection: (sel last + 1 to: sel last)
	]
