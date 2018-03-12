generated
scan1X23
	currentCharacter == $m
		ifTrue: [ ^ self scan15 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $p
		ifTrue: [ ^ self scan17 ].
	currentCharacter == $r
		ifTrue: [ ^ self scan18 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan1X1 ].
	currentCharacter == $t
		ifTrue: [ ^ self scan19 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan1X9 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan1X12 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	currentCharacter =
		(Character value: 8249)
		ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	^ self scan1X22