keybindings
moveToStartOfLine
	| sel start |
	sel := self getSelection.
	self haltOnce.
	start := self startOfLineContaining: sel first in: self pendingText.  
	self setSelection: (start to: start - 1)

