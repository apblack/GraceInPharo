generated
scan1X18
	self recordMatch: #(35).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	(currentCharacter == Character cr
		or: [ currentCharacter == Character space
				or: [ currentCharacter = (Character value: 160) ] ])
		ifTrue: [ [ self recordMatch: #(35).
			self step.
			currentCharacter == Character cr
				or: [ currentCharacter == Character space
						or: [ currentCharacter = (Character value: 160) ] ] ] whileTrue ].
	^ self reportLastMatch