generated
scan35X1X1
	self recordMatch: #(43).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan38 ].
	currentCharacter == $r
		ifTrue: [ self recordMatch: #(43).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan38 ].
			currentCharacter == $a
				ifTrue: [ ^ self scan35X1X1X1 ].
			(currentCharacter == Character lf
				or: [ (currentCharacter between: Character cr and: $!)
						or: [ (currentCharacter between: $# and: $[)
								or: [ (currentCharacter between: $] and: $`)
										or: [ (currentCharacter between: $b and: $z)
												or: [ currentCharacter >= $| ] ] ] ] ])
				ifTrue: [ ^ self scan37 ].
			^ self reportLastMatch ].
	(currentCharacter == Character lf
		or: [ (currentCharacter between: Character cr and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $q)
								or: [ (currentCharacter between: $s and: $z)
										or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan37 ].
	^ self reportLastMatch