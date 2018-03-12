generated
scan1X19
	self recordMatch: #(36).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(46) ].
	^ self reportLastMatch