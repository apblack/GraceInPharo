generated
scan1X25
	currentCharacter == $t
		ifTrue: [ ^ self scan12 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan1X10 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan1X11 ].
	currentCharacter == $w
		ifTrue: [ ^ self scan13 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(27) ].
	currentCharacter = (Character value: 160)
		ifTrue:
			[ ^ self scan1X21 ].
	currentCharacter =
		(Character value: 8249)
		ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	currentCharacter =
		(Character value: 8250)
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter =
		(Character value: 8594)
		ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	currentCharacter =
		(Character value: 10214)
		ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	^ self scan1X24