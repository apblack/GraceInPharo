generated
scan35X23
	('&+|' includes: currentCharacter)
		ifTrue: [ ^ self scan35X5 ].
	(currentCharacter = (Character value: 14)
		or: [ currentCharacter == Character arrowDown
				or: [ currentCharacter = (Character value: 127)
						or: [ currentCharacter = (Character value: 8211) ] ] ])
		ifTrue: [ ^ self scan35X13 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $$ and: $%)
				or: [ ('*/<' includes: currentCharacter)
						or: [ (currentCharacter between: $> and: $@)
								or: [ ('^~÷' includes: currentCharacter)
										or: [ currentCharacter = (Character value: 8800)
												or: [ (currentCharacter
														between: (Character value: 8804)
														and: (Character value: 8805))
														or: [ currentCharacter = (Character value: 8901) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan41 ].
	^ self scan35X22