generated
scan117X5
	(currentCharacter <= $&
		or: [ (currentCharacter between: $( and: $/)
				or: [ (currentCharacter between: $: and: $@)
						or: [ (currentCharacter between: $[ and: $^)
								or: [ currentCharacter == $`
										or: [ (currentCharacter between: ${ and: (Character value: 229))
												or: [ (currentCharacter
														between: (Character value: 231)
														and: (Character value: 8249))
														or: [ currentCharacter >= (Character value: 8251) ] ] ] ] ] ] ])
		ifTrue:
			[ self scan117X4 ].
	^ self reportLastMatch