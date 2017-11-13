generated
scan35X10
	self recordMatch: #(43 47).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan38 ].
	(currentCharacter == Character lf
		or: [ currentCharacter == Character space
				or: [ currentCharacter = (Character value: 160) ] ])
		ifTrue: [ ^ self scan36 ].
	((currentCharacter between: Character cr and: Character arrowDown)
		or: [ currentCharacter == $!
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $z)
								or: [ (currentCharacter between: $| and: (Character value: 159))
										or: [ currentCharacter >= (Character value: 161) ] ] ] ] ])
		ifTrue: [ ^ self scan37 ].
	^ self reportLastMatch