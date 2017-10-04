generated
scan1X27
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	currentCharacter = (Character value: 160)
		ifTrue:
			[ ^ self scan1X23 ].
	currentCharacter =
		(Character value: 8232)
		ifTrue: [ ^ self scan3 ].
	currentCharacter =
		(Character value: 8249)
		ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	currentCharacter =
		(Character value: 8250)
		ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	currentCharacter =
		(Character value: 8594)
		ifTrue: [ ^ self recordAndReportMatch: #(53) ].
	currentCharacter =
		(Character value: 10214)
		ifTrue: [ ^ self recordAndReportMatch: #(46) ].
	currentCharacter isDigit
		ifTrue:
			[ ^ self scan1X22 ].
	(currentCharacter == $[
		or: [ currentCharacter =
				(Character value: 10215) ])
		ifTrue:
			[ ^ self scan1X25 ].
	^ self scan1X26