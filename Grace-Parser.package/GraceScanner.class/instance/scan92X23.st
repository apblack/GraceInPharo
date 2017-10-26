generated
scan92X23
	(currentCharacter isSeparator
		or: [ currentCharacter <= Character backspace
				or: [ currentCharacter == Character pageUp
						or: [ currentCharacter =
								(Character value: 14)
								or: [ currentCharacter == Character arrowDown
										or: [ currentCharacter = (Character value: 127)
												or: [ currentCharacter =
														(Character value: 8211) ] ] ] ] ] ])
		ifTrue:
			[ ^ self scan92X12 ].
	(currentCharacter isSafeForHTTP
		or: [ currentCharacter = (Character value: 230) ])
		ifTrue: [ ^ self scan100 ].
	(currentCharacter isSpecial
		or: [ (currentCharacter between: $# and: $$)
				or: [ currentCharacter == $^
						or: [ (currentCharacter
								between: (Character value: 8804)
								and: (Character value: 8805))
								or: [ currentCharacter =
										(Character value: 8901) ] ] ] ])
		ifTrue: [ ^ self scan94 ].
	true
		ifTrue:
			[ self scan92X22 ].
	^ self reportLastMatch