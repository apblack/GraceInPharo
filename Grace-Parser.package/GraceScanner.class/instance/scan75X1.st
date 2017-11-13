generated
scan75X1
	(currentCharacter == Character lf
		or: [ (currentCharacter between: Character cr and: $!)
				or: [ (currentCharacter between: $# and: $&)
						or: [ (currentCharacter between: $( and: $/)
								or: [ (currentCharacter between: $: and: $@)
										or: [ currentCharacter == $[
												or: [ (currentCharacter between: $] and: $^)
														or: [ currentCharacter == $`
																or: [ (currentCharacter between: $| and: (Character value: 180))
																		or: [ (currentCharacter
																				between: (Character value: 182)
																				and: (Character value: 229))
																				or: [ (currentCharacter
																						between: (Character value: 231)
																						and: (Character value: 959))
																						or: [ currentCharacter >= (Character value: 961) ] ] ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan37 ].
	^ self reportLastMatch