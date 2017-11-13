generated
scan43X2X1
	(currentCharacter == Character lf
		or: [ (currentCharacter between: Character cr and: $!)
				or: [ (currentCharacter between: $# and: $/)
						or: [ (currentCharacter between: $: and: $@)
								or: [ currentCharacter == $[
										or: [ (currentCharacter between: $] and: $`)
												or: [ currentCharacter >= $| ] ] ] ] ] ])
		ifTrue: [ ^ self scan37 ].
	^ self reportLastMatch