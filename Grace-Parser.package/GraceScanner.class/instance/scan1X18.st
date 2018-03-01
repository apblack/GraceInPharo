generated
scan1X18
	self recordMatch: #(37).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(53) ].
	^ self reportLastMatch