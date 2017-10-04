generated
scan93X2
	(currentCharacter <= $&
		or: [ (currentCharacter between: $( and: $/)
				or: [ (currentCharacter between: $: and: $@)
						or: [ (currentCharacter between: $[ and: $^)
								or: [ currentCharacter == $`
										or: [ (currentCharacter between: ${ and: (Character value: 8249))
												or: [ currentCharacter >= (Character value: 8251) ] ] ] ] ] ])
		ifTrue:
			[ self scan93X1 ].
	^ self reportLastMatch