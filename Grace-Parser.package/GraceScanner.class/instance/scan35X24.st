generated
scan35X24
	currentCharacter = (Character value: 8594)
		ifTrue: [ ^ self scan35X14 ].
	currentCharacter = (Character value: 10214)
		ifTrue: [ ^ self scan50 ].
	currentCharacter = (Character value: 10215)
		ifTrue: [ ^ self scan51 ].
	(currentCharacter between: $0 and: $9)
		ifTrue: [ ^ self scan43 ].
	(currentCharacter == Character lf
		or: [ currentCharacter = (Character value: 8232) ])
		ifTrue: [ ^ self scan36 ].
	(currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ])
		ifTrue: [ ^ self scan35X9 ].
	(currentCharacter <= Character tab
		or: [ currentCharacter between: Character pageUp and: Character newPage ])
		ifTrue: [ ^ self recordAndReportMatch: #(48) ].
	^ self scan35X23