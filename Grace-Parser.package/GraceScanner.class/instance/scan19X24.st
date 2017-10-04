generated
scan19X24
	currentCharacter == $v
		ifTrue: [ ^ self scan19X9 ].
	currentCharacter == $w
		ifTrue: [ ^ self scan70 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	currentCharacter == $}
		ifTrue: [ ^ self scan19X19 ].
	currentCharacter = (Character value: 160)
		ifTrue: [ ^ self scan28 ].
	currentCharacter = (Character value: 8232)
		ifTrue: [ ^ self scan26 ].
	currentCharacter = (Character value: 8249)
		ifTrue: [ ^ self scan19X18 ].
	currentCharacter = (Character value: 8250)
		ifTrue: [ ^ self scan19X17 ].
	currentCharacter = (Character value: 8594)
		ifTrue: [ ^ self scan19X16 ].
	currentCharacter = (Character value: 10214)
		ifTrue: [ ^ self scan27 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan36 ].
	^ self scan19X23