generated
scan2X1X1
	[ self recordMatch: #(46).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter
						between: (Character value: 14)
						and: (Character value: 8231))
						or: [ currentCharacter >= (Character value: 8233) ] ] ] ]
		whileTrue