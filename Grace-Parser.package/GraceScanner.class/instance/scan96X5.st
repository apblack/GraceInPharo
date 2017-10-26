generated
scan96X5
	true
		ifTrue: [ [ self recordMatch: #(43 45).
			self step.
			currentCharacter =
				(Character value: 8250)
				ifTrue:
					[ ^ self scan96X1 ].
			(currentCharacter == Character lf
				or: [ currentCharacter == Character cr
						or: [ currentCharacter =
								(Character value: 8232) ] ])
				ifTrue:
					[ ^ self scan96X3 ].
			true ] whileTrue ].
	^ self reportLastMatch