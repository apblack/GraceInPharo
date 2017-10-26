generated
scan1
	self step.
	currentCharacter == Character cr
		ifTrue:
			[ ^ self scan1X15 ].
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(58) ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(41) ].
	^ self scan1X23