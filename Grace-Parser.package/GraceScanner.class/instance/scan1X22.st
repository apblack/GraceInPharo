generated
scan1X22
	currentCharacter == $o
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $p
		ifTrue: [ ^ self scan26 ].
	currentCharacter == $r
		ifTrue: [ ^ self scan27 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan1X1 ].
	currentCharacter == $t
		ifTrue: [ ^ self scan30 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan1X8 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan1X11 ].
	currentCharacter == $w
		ifTrue: [ ^ self scan32 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter =
		(Character value: 8249)
		ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	^ self scan1X21