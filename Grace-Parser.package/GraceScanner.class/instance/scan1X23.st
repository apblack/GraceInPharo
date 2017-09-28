generated
scan1X23
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	^ self reportLastMatch