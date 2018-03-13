generated
scan1X21
	self recordMatch: #(39).
	self step.
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(47) ].
	^ self reportLastMatch