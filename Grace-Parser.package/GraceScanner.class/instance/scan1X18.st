generated
scan1X18
	self recordMatch: #(42).
	self step.
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(52) ].
	^ self reportLastMatch