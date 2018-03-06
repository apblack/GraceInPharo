generated
scan1X19
	self recordMatch: #(37).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(48) ].
	^ self reportLastMatch