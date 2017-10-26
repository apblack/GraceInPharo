generated
scan37
	self recordMatch: #(42).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan27 ].
	currentCharacter isDecimalDigit
		ifTrue: [ ^ self scan38 ].
	(currentCharacter isDashPunctuation or: [ currentCharacter == $+ ])
		ifTrue: [ self recordMatch: #(42).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan27 ].
			currentCharacter isDecimalDigit
				ifTrue: [ ^ self scan38 ].
			(currentCharacter == Character lf
				or: [ (currentCharacter between: Character cr and: $!)
						or: [ (currentCharacter between: $# and: $/)
								or: [ (currentCharacter between: $: and: $[)
										or: [ (currentCharacter between: $] and: $z)
												or: [ currentCharacter >= $| ] ] ] ] ])
				ifTrue: [ ^ self scan26 ].
			^ self reportLastMatch ].
	(currentCharacter == Character lf
		or: [ (currentCharacter between: Character cr and: $!)
				or: [ (currentCharacter between: $# and: $*)
						or: [ currentCharacter == $,
								or: [ (currentCharacter between: $. and: $/)
										or: [ (currentCharacter between: $: and: $[)
												or: [ (currentCharacter between: $] and: $z)
														or: [ currentCharacter >= $| ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan26 ].
	^ self reportLastMatch