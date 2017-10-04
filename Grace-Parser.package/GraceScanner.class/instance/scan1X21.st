generated
scan1X21
	self recordMatch: #(41).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(46) ].
	(currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ])
		ifTrue: [ [ self recordMatch: #(41).
			self step.
			currentCharacter == Character space
				or: [ currentCharacter = (Character value: 160) ] ] whileTrue ].
	^ self reportLastMatch