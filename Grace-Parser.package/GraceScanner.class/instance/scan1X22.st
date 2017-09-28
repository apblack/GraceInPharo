generated
scan1X22
	self recordMatch: #(11).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	^ self reportLastMatch