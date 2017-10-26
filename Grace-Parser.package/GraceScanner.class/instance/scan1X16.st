generated
scan1X16
	self recordMatch: #(22).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(50) ].
	^ self reportLastMatch