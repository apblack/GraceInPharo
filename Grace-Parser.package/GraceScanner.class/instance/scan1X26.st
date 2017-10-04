generated
scan1X26
	('<>|' includes: currentCharacter)
		ifTrue:
			[ ^ self scan1X9 ].
	('PTl' includes: currentCharacter)
		ifTrue:
			[ ^ self scan1X18 ].
	(currentCharacter <= Character backspace
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter =
						(Character value: 14)
						or: [ currentCharacter == Character arrowDown
								or: [ currentCharacter =
										(Character value: 8211) ] ] ] ])
		ifTrue: [ ^ self recordAndReportMatch: #(43) ].
	(currentCharacter isSpecial
		or: [ (currentCharacter between: $# and: $$)
				or: [ currentCharacter == $^ ] ])
		ifTrue:
			[ ^ self scan1X17 ].
	currentCharacter isSafeForHTTP
		ifTrue:
			[ self scan1X20 ].
	^ self reportLastMatch