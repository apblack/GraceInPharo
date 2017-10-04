generated
scan73X26
	currentCharacter == ${
		ifTrue:
			[ ^ self scan73X19 ].
	currentCharacter == $}
		ifTrue:
			[ ^ self scan73X18 ].
	currentCharacter = (Character value: 160)
		ifTrue: [ ^ self scan78 ].
	currentCharacter =
		(Character value: 8232)
		ifTrue: [ ^ self scan76 ].
	currentCharacter =
		(Character value: 8249)
		ifTrue:
			[ ^ self scan73X17 ].
	currentCharacter =
		(Character value: 8250)
		ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	currentCharacter =
		(Character value: 8594)
		ifTrue:
			[ ^ self scan73X16 ].
	currentCharacter =
		(Character value: 10214)
		ifTrue: [ ^ self scan77 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan82 ].
	(currentCharacter == $[
		or: [ currentCharacter =
				(Character value: 10215) ])
		ifTrue:
			[ ^ self scan73X14 ].
	^ self scan73X25