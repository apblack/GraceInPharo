generated
scan1X17
	self recordMatch: #(37).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(53) ].
	^ self reportLastMatch