generated
scan1X22
	currentCharacter == $t
		ifTrue: [ ^ self scan33 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan1X7 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan1X10 ].
	currentCharacter == $w
		ifTrue: [ ^ self scan35 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter =
		(Character value: 8249)
		ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	currentCharacter =
		(Character value: 8250)
		ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	currentCharacter =
		(Character value: 8594)
		ifTrue: [ ^ self recordAndReportMatch: #(60) ].
	currentCharacter =
		(Character value: 10214)
		ifTrue: [ ^ self recordAndReportMatch: #(52) ].
	currentCharacter =
		(Character value: 10215)
		ifTrue: [ ^ self recordAndReportMatch: #(53) ].
	^ self scan1X21