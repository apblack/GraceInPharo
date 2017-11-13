generated
scan101X25
	(currentCharacter between: $0 and: $9)
		ifTrue: [ ^ self scan105 ].
	(currentCharacter == Character lf
		or: [ currentCharacter =
				(Character value: 8232) ])
		ifTrue: [ ^ self scan102 ].
	(currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ])
		ifTrue:
			[ ^ self scan101X9 ].
	('&+|' includes: currentCharacter)
		ifTrue:
			[ ^ self scan101X4 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter =
						(Character value: 14)
						or: [ currentCharacter == Character arrowDown
								or: [ currentCharacter = (Character value: 127)
										or: [ currentCharacter =
												(Character value: 8211) ] ] ] ] ])
		ifTrue:
			[ ^ self scan101X12 ].
	^ self scan101X24