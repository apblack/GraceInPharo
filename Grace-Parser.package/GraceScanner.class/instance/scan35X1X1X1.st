generated
scan35X1X1X1
	self recordMatch: #(43).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan38 ].
	currentCharacter == $g
		ifTrue: [ self recordMatch: #(43).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan38 ].
			currentCharacter == $m
				ifTrue: [ self recordMatch: #(43).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan38 ].
					currentCharacter == $a
						ifTrue: [ self recordMatch: #(13 43).
							self step.
							currentCharacter == $\
								ifTrue: [ ^ self scan38 ].
							(currentCharacter == Character lf
								or: [ (currentCharacter between: Character cr and: $!)
										or: [ (currentCharacter between: $# and: $[)
												or: [ (currentCharacter between: $] and: $z)
														or: [ currentCharacter >= $| ] ] ] ])
								ifTrue: [ ^ self scan37 ].
							^ self reportLastMatch ].
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
								or: [ (currentCharacter between: $] and: $l)
										or: [ (currentCharacter between: $n and: $z)
												or: [ currentCharacter >= $| ] ] ] ] ])
				ifTrue: [ ^ self scan37 ].
			^ self reportLastMatch ].
	(currentCharacter == Character lf
		or: [ (currentCharacter between: Character cr and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $f)
								or: [ (currentCharacter between: $h and: $z)
										or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan37 ].
	^ self reportLastMatch