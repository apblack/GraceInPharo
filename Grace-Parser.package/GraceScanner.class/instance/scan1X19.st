generated
scan1X19
	self recordMatch: #(42).
	self step.
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(52) ].
	^ self reportLastMatch