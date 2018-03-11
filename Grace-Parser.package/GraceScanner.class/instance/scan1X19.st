generated
scan1X19
	self recordMatch: #(37).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(47) ].
	^ self reportLastMatch