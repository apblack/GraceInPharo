generated
scan44
	self recordMatch: #(43).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan38 ].
	(currentCharacter between: $0 and: $9)
		ifTrue: [ ^ self scan45 ].
	('+-' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(43).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan38 ].
			(currentCharacter between: $0 and: $9)
				ifTrue: [ ^ self scan45 ].
			(currentCharacter == Character lf
				or: [ (currentCharacter between: Character cr and: $!)
						or: [ (currentCharacter between: $# and: $/)
								or: [ (currentCharacter between: $: and: $[)
										or: [ (currentCharacter between: $] and: $z)
												or: [ currentCharacter >= $| ] ] ] ] ])
				ifTrue: [ ^ self scan37 ].
			^ self reportLastMatch ].
	(currentCharacter == Character lf
		or: [ (currentCharacter between: Character cr and: $!)
				or: [ (currentCharacter between: $# and: $*)
						or: [ currentCharacter == $,
								or: [ (currentCharacter between: $. and: $/)
										or: [ (currentCharacter between: $: and: $[)
												or: [ (currentCharacter between: $] and: $z)
														or: [ currentCharacter >= $| ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan37 ].
	^ self reportLastMatch