generated
scan1X15
	self recordMatch: #(42).
	self step.
	currentCharacter == Character lf
		ifTrue: [ [ self recordMatch: #(42 44).
			self step.
			currentCharacter == Character cr
				ifTrue: [ ^ self scan2 ].
			(currentCharacter == Character lf
				or: [ currentCharacter =
						(Character value: 8232) ])
				ifTrue: [ [ self recordMatch: #(44).
					self step.
					currentCharacter == Character space
						or: [ currentCharacter = (Character value: 160) ] ] whileTrue.
					^ self reportLastMatch ].
			currentCharacter == Character space
				or: [ currentCharacter = (Character value: 160) ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == Character cr
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(46) ].
	currentCharacter =
		(Character value: 8232)
		ifTrue: [ [ self recordMatch: #(44).
			self step.
			currentCharacter == Character space
				or: [ currentCharacter = (Character value: 160) ] ] whileTrue.
			^ self reportLastMatch ].
	(currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch