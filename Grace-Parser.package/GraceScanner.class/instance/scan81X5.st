generated
scan81X5
	true
		ifTrue: [ [ self recordMatch: #(40 50).
			self step.
			currentCharacter =
				(Character value: 8250)
				ifTrue:
					[ ^ self scan81X1 ].
			(currentCharacter == Character lf
				or: [ currentCharacter == Character cr
						or: [ currentCharacter =
								(Character value: 8232) ] ])
				ifTrue:
					[ ^ self scan81X3 ].
			true ] whileTrue ].
	^ self reportLastMatch