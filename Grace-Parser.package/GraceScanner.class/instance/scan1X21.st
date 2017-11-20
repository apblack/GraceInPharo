generated
scan1X21
	(currentCharacter between: $0 and: $9)
		ifTrue:
			[ ^ self scan1X12 ].
	(currentCharacter == Character lf
		or: [ currentCharacter =
				(Character value: 8232) ])
		ifTrue:
			[ ^ self scan1X16 ].
	(currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ])
		ifTrue:
			[ ^ self scan1X15 ].
	('&+|' includes: currentCharacter)
		ifTrue:
			[ ^ self scan1X8 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter =
						(Character value: 14)
						or: [ currentCharacter == Character arrowDown
								or: [ currentCharacter = (Character value: 127)
										or: [ currentCharacter =
												(Character value: 8211) ] ] ] ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(49) ].
	^ self scan1X20