generated
scan1X17
	self recordMatch: #(30).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(51) ].
	^ self reportLastMatch