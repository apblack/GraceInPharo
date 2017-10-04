generated
scan81
	[ self recordMatch: #(40 50 55).
	self step.
	currentCharacter =
		(Character value: 8250)
		ifTrue:
			[ ^ self scan81X2 ].
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr
				or: [ currentCharacter =
						(Character value: 8232) ] ])
		ifTrue:
			[ ^ self scan81X4 ].
	currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ currentCharacter == $:
										or: [ (currentCharacter between: $< and: $@)
												or:
													[ '\^|~' includes: currentCharacter ] ] ] ] ] ] ]
		whileTrue.
	^ self scan81X5