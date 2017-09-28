generated
scan1X24
	currentCharacter isDigit
		ifTrue:
			[ ^ self scan1X20 ].
	(currentCharacter == Character cr
		or: [ currentCharacter == Character space ])
		ifTrue:
			[ ^ self scan1X18 ].
	(currentCharacter == $[
		or: [ currentCharacter =
				(Character value: 10215) ])
		ifTrue:
			[ ^ self scan1X23 ].
	('<>|' includes: currentCharacter)
		ifTrue:
			[ ^ self scan1X9 ].
	('PTl' includes: currentCharacter)
		ifTrue:
			[ ^ self scan1X17 ].
	(currentCharacter isSpecial
		or: [ (currentCharacter between: $# and: $$)
				or: [ currentCharacter == $^ ] ])
		ifTrue:
			[ ^ self scan1X16 ].
	currentCharacter isSafeForHTTP
		ifTrue:
			[ self scan1X19 ].
	^ self reportLastMatch