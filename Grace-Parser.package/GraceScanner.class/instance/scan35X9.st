generated
scan35X9
	[ self recordMatch: #(43 45).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan38 ].
	currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ] ] whileTrue.
	(currentCharacter == Character lf
		or: [ (currentCharacter between: Character cr and: Character arrowDown)
				or: [ currentCharacter == $!
						or: [ (currentCharacter between: $# and: $[)
								or: [ (currentCharacter between: $] and: $z)
										or: [ (currentCharacter between: $| and: (Character value: 159))
												or: [ currentCharacter >= (Character value: 161) ] ] ] ] ] ])
		ifTrue: [ ^ self scan37 ].
	^ self reportLastMatch