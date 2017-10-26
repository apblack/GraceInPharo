generated
scan131X1X1X1X3
	(currentCharacter <= Character arrowDown
		or: [ (currentCharacter between: $! and: $&)
				or: [ (currentCharacter between: $( and: $-)
						or: [ currentCharacter == $/
								or: [ (currentCharacter between: $: and: $@)
										or: [ (currentCharacter between: $[ and: $^)
												or: [ currentCharacter == $`
														or: [ (currentCharacter between: ${ and: (Character value: 159))
																or: [ (currentCharacter
																		between: (Character value: 161)
																		and: (Character value: 229))
																		or: [ (currentCharacter
																				between: (Character value: 231)
																				and: (Character value: 8249))
																				or: [ currentCharacter >= (Character value: 8251) ] ] ] ] ] ] ] ] ] ])
		ifTrue:
			[ self scan131X1X1X1X2 ].
	^ self reportLastMatch