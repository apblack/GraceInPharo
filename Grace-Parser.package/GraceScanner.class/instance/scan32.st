generated
scan32
	[ self recordMatch: #(39 50 55).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan32X1 ].
	('"{' includes: currentCharacter)
		ifTrue: [ ^ self scan32X2 ].
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr
				or: [ currentCharacter = (Character value: 8232) ] ])
		ifTrue: [ ^ self scan20 ].
	currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ currentCharacter == $:
										or: [ (currentCharacter between: $< and: $@)
												or: [ '^|~' includes: currentCharacter ] ] ] ] ] ] ]
		whileTrue.
	^ self scan33