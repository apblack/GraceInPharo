generated
scan1X17
	self recordMatch: #(31).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(52) ].
	^ self reportLastMatch