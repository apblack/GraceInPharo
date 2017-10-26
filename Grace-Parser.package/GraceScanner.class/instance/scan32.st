generated
scan32
	[ self recordMatch: #(42 45 59).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan32X1 ].
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr
				or: [ currentCharacter = (Character value: 8232) ] ])
		ifTrue: [ ^ self scan26 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ '"{' includes: currentCharacter ] ])
		ifTrue: [ ^ self scan32X2 ].
	currentCharacter isDashPunctuation
		or: [ currentCharacter == $!
				or: [ (currentCharacter between: $# and: $&)
						or: [ (currentCharacter between: $* and: $+)
								or: [ (currentCharacter between: $. and: $/)
										or: [ currentCharacter == $:
												or: [ (currentCharacter between: $< and: $@)
														or: [ ('^|~' includes: currentCharacter)
																or: [ (currentCharacter
																		between: (Character value: 8804)
																		and: (Character value: 8805))
																		or: [ currentCharacter = (Character value: 8901) ] ] ] ] ] ] ] ] ] ]
		whileTrue.
	^ self scan33