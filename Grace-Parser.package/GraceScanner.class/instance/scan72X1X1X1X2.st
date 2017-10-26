generated
scan72X1X1X1X2
	(currentCharacter == Character lf
		or: [ (currentCharacter between: Character cr and: Character arrowDown)
				or: [ currentCharacter == $!
						or: [ (currentCharacter between: $# and: $&)
								or: [ (currentCharacter between: $( and: $-)
										or: [ currentCharacter == $/
												or: [ (currentCharacter between: $: and: $@)
														or: [ currentCharacter == $[
																or: [ (currentCharacter between: $] and: $^)
																		or: [ currentCharacter == $`
																				or: [ (currentCharacter between: $| and: (Character value: 159))
																						or: [ (currentCharacter
																								between: (Character value: 161)
																								and: (Character value: 229))
																								or: [ currentCharacter >= (Character value: 231) ] ] ] ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan26 ].
	^ self reportLastMatch