generated
scan1X20
	self recordMatch: #(38).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(48) ].
	^ self reportLastMatch