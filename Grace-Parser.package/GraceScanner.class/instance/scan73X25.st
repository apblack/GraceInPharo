generated
scan73X25
	('<>|' includes: currentCharacter)
		ifTrue:
			[ ^ self scan73X3 ].
	('PTl' includes: currentCharacter)
		ifTrue:
			[ ^ self scan73X10 ].
	(currentCharacter <= Character backspace
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter =
						(Character value: 14)
						or: [ currentCharacter == Character arrowDown
								or: [ currentCharacter =
										(Character value: 8211) ] ] ] ])
		ifTrue:
			[ ^ self scan73X15 ].
	(currentCharacter isSpecial
		or: [ (currentCharacter between: $# and: $$)
				or: [ currentCharacter == $^ ] ])
		ifTrue: [ ^ self scan79 ].
	currentCharacter isSafeForHTTP
		ifTrue: [ ^ self scan85 ].
	true
		ifTrue:
			[ self scan73X24 ].
	^ self reportLastMatch