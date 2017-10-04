generated
scan1X24
	self recordMatch: #(12).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(46) ].
	^ self reportLastMatch