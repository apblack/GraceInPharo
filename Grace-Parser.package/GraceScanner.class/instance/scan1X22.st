generated
scan1X22
	(currentCharacter isSeparator
		or: [ currentCharacter <= Character backspace
				or: [ currentCharacter == Character pageUp
						or: [ currentCharacter =
								(Character value: 14)
								or: [ currentCharacter == Character arrowDown
										or: [ currentCharacter = (Character value: 127)
												or: [ currentCharacter =
														(Character value: 8211) ] ] ] ] ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	(currentCharacter isSpecial
		or: [ ('$^¬÷' includes: currentCharacter)
				or: [ currentCharacter =
						(Character value: 8800)
						or: [ (currentCharacter
								between: (Character value: 8804)
								and: (Character value: 8805))
								or: [ currentCharacter =
										(Character value: 8901) ] ] ] ])
		ifTrue:
			[ ^ self scan1X14 ].
	(currentCharacter isSafeForHTTP
		or: [ ('µæ' includes: currentCharacter)
				or: [ currentCharacter =
						(Character value: 960) ] ])
		ifTrue:
			[ self scan1X16 ].
	^ self reportLastMatch