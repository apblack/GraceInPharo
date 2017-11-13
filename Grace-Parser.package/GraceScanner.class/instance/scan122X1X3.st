generated
scan122X1X3
	(currentCharacter <= $&
		or: [ (currentCharacter between: $( and: $/)
				or: [ (currentCharacter between: $: and: $@)
						or: [ (currentCharacter between: $[ and: $^)
								or: [ currentCharacter == $`
										or: [ (currentCharacter between: ${ and: (Character value: 180))
												or: [ (currentCharacter
														between: (Character value: 182)
														and: (Character value: 229))
														or: [ (currentCharacter
																between: (Character value: 231)
																and: (Character value: 959))
																or: [ (currentCharacter
																		between: (Character value: 961)
																		and: (Character value: 8249))
																		or: [ currentCharacter >= (Character value: 8251) ] ] ] ] ] ] ] ] ])
		ifTrue:
			[ self scan122X1X2 ].
	^ self reportLastMatch