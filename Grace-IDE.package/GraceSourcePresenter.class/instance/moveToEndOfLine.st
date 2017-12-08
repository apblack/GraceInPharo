keybindings
moveToEndOfLine
	| sel start |
	sel := self getSelection.
	start := self endOfLineContaining: sel last + 1 in: self pendingText.  
	self setSelection: (start to: start - 1)

