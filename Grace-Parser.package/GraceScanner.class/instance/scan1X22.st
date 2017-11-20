generated
scan1X22
	currentCharacter == $t
		ifTrue: [ ^ self scan30 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan1X7 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan1X10 ].
	currentCharacter == $w
		ifTrue: [ ^ self scan32 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter =
		(Character value: 8249)
		ifTrue: [ ^ self recordAndReportMatch: #(27) ].
	currentCharacter =
		(Character value: 8250)
		ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	currentCharacter =
		(Character value: 8594)
		ifTrue: [ ^ self recordAndReportMatch: #(59) ].
	currentCharacter =
		(Character value: 10214)
		ifTrue: [ ^ self recordAndReportMatch: #(51) ].
	currentCharacter =
		(Character value: 10215)
		ifTrue: [ ^ self recordAndReportMatch: #(52) ].
	^ self scan1X21