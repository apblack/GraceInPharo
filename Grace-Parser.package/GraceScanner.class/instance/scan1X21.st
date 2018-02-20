generated
scan1X21
	currentCharacter == $o
		ifTrue: [ ^ self scan26 ].
	currentCharacter == $p
		ifTrue: [ ^ self scan29 ].
	currentCharacter == $r
		ifTrue: [ ^ self scan30 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan1X1 ].
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
	^ self scan1X20